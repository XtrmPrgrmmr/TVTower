-- File: TaskNewsAgency
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
_G["TaskStationMap"] = class(AITask, function(c)
	AITask.init(c)	-- must init base!
	c.TargetRoom = TVT.ROOM_OFFICE_PLAYER_ME
	c:ResetDefaults()
end)

function TaskStationMap:typename()
	return "TaskStationMap"
end

function TaskStationMap:ResetDefaults()
	self.BudgetWeigth = 0
	self.BasePriority = 1
	self.NeededInvestmentBudget = 250000
	self.InvestmentPriority = 7
end

function TaskStationMap:Activate()
	-- Was getan werden soll:
	self.AdjustStationInvestmentJob = JobAdjustStationInvestment()
	self.AdjustStationInvestmentJob.Task = self
	
	self.BuyStationJob = JobBuyStation()
	self.BuyStationJob.Task = self
end

function TaskStationMap:GetNextJobInTargetRoom()
	if (self.BuyStationJob.Status == JOB_STATUS_DONE) then
		self:SetWait() --Wenn der Einkauf geklappt hat... muss nichs weiter gemacht werden.
	end

	if (self.BuyStationJob.Status ~= JOB_STATUS_DONE) then			
		return self.BuyStationJob
	elseif (self.AdjustStationInvestmentJob.Status ~= JOB_STATUS_DONE) then
		return self.AdjustStationInvestmentJob		
	end

	self:SetWait()
end

function TaskStationMap:BeforeBudgetSetup()
	self:SetFixedCosts()
end

function TaskStationMap:BudgetSetup()
	if self.UseInvestment then
		debugMsg("+++ Investition in TaskStationMap!")
		self.SituationPriority = 15
	end
end

function TaskStationMap:OnMoneyChanged(value, reason, reference)
	if (tostring(reason) == tostring(TVT.Constants.PlayerFinanceEntryType.PAY_STATION)) then
		self:PayFromBudget(value)
		self:SetFixedCosts()
	elseif (tostring(reason) == tostring(TVT.Constants.PlayerFinanceEntryType.SELL_STATION)) then
		self:PayFromBudget(value)
		self:SetFixedCosts()
	elseif (tostring(reason) == tostring(TVT.Constants.PlayerFinanceEntryType.PAY_STATIONFEES)) then
		self.FixedCosts = value
		--self.FixedCostsBudget = self.FixedCostsBudget - value
	end
end

function TaskStationMap:SetFixedCosts()
	self.FixedCosts = MY.GetStationMap().CalculateStationCosts()
end
-- <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
_G["JobAdjustStationInvestment"] = class(AIJob, function(c)
	AIJob.init(c)	-- must init base!
	c.Task = nil
end)

function JobAdjustStationInvestment:typename()
	return "JobAdjustStationInvestment"
end

function JobAdjustStationInvestment:Prepare(pParams)

end

function JobAdjustStationInvestment:Tick()
	if (self.Task.CurrentBudget < NeededInvestmentBudget) then
		self.Task.NeededInvestmentBudget = math.round(self.Task.NeededInvestmentBudget * 0.85 ) -- Nach jeder Überprüfung immer ein kleines bisschen günstiger.
	end
	
	if (self.Task.NeededInvestmentBudget < 350000) then
		self.Task.NeededInvestmentBudget = 350000
	end
end
-- <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
_G["JobBuyStation"] = class(AIJob, function(c)
	AIJob.init(c)	-- must init base!
	c.Task = nil
end)

function JobBuyStation:typename()
	return "JobBuyStation"
end

function JobBuyStation:Prepare(pParams)
	--debugMsg("Prüfe Stationenkauf")
	if (self.Task.CurrentBudget < self.Task.NeededInvestmentBudget) then self:SetCancel() end
end

function JobBuyStation:Tick()
	debugMsg("Prüfe Stationenkauf! Verfügbares Budget: " .. self.Task.CurrentBudget)
	
	local bestOffer = nil
	local bestAttraction = 0
	
	for i = 1, 30 do
		local tempStation = MY.GetStationMap().getTemporaryStation(math.random(35, 560), math.random(1, 375))
				
		--debugMsg("Prüfe Station " .. i .. "  " .. tempStation.pos.GetIntX() .. "/" .. tempStation.pos.GetIntY() .. " - R: " .. tempStation.getReach() .. " - Inc: " .. tempStation.getReachIncrease() .. " - Price: " .. tempStation.getPrice() .. " F: " .. (tempStation.getReachIncrease() / tempStation.getPrice()))

		--filter criterias
		--0) skip checks if there is no tempstation
		if tempStation == nil then
			-- debugMsg("tempStation is nil!")
		--1) price to high
		elseif tempStation.getPrice() > self.Task.CurrentBudget then
			tempStation = nil
		--2) increase to low
		elseif tempStation.getReachIncrease() < 7500 then
			tempStation = nil
		--3)  reach to low
		elseif tempStation.getReach() < 1000 then
			tempStation = nil
		end

		
		-- Liegt im Budget und lohnt sich minimal -> erfuellt Kriterien
		if tempStation ~= nil then
			local price = tempStation.getPrice()
			local pricePerViewer = tempStation.getReachIncrease() / price
			local priceDiff = self.Task.CurrentBudget - price
			local attraction = pricePerViewer - (priceDiff / self.Task.CurrentBudget / 10)
			--debugMsg("Attraction: " .. attraction .. "     -> " .. pricePerViewer .. " - (" .. priceDiff .. " / " .. self.Task.CurrentBudget .. " / 10)")
		
			if bestOffer == nil then
				bestOffer = tempStation
			end
			if attraction > bestAttraction then
				bestOffer = tempStation
				bestAttraction = attraction
			end
		end		
	end
	
	if bestOffer ~= nil then
		local price = bestOffer.getPrice()
		debugMsg("Kaufe Station " .. bestOffer.pos.GetIntX() .. "/" .. bestOffer.pos.GetIntY() .. " Inc: " .. bestOffer.getReachIncrease() .. " => Price: " .. price)
		TVT.addToLog("Kaufe Station " .. bestOffer.pos.GetIntX() .. "/" .. bestOffer.pos.GetIntY() .. " Inc: " .. bestOffer.getReachIncrease() .. " => Price: " .. price)
		TVT.of_buyStation(bestOffer.pos.GetIntX(), bestOffer.pos.GetIntY())
		self.Task:PayFromBudget(price)
		
		--Nächste Investitionssumme sollte etwas höher sein (Später irgendwie vom Budget abhängig machen)
		local newBuget = math.round(((self.Task.NeededInvestmentBudget * 1.5) + (price * 2))/2)
		if (newBuget < self.Task.NeededInvestmentBudget * 1.15) then
			self.Task.NeededInvestmentBudget = self.Task.NeededInvestmentBudget * 1.15
		else
			self.Task.NeededInvestmentBudget = newBuget
		end		
		debugMsg("Nächster Senderkauf bei Investitionssumme von " .. self.Task.NeededInvestmentBudget)
	end

	self.Status = JOB_STATUS_DONE
end
-- <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<