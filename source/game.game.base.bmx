SuperStrict
Import "Dig/base.util.mersenne.bmx" 'randrange
Import "game.figure.base.bmx"

'Game - holds time, audience, money and other variables (typelike structure makes it easier to save the actual state)
Type TGameBase {_exposeToLua="selected"}
	'used so that random values are the same on all computers having
	'the same seed value
	Field randomSeedValue:Int = 0
	'title of the game
	Field title:String = "MyGame"
	'which cursor has to be shown? 0=normal 1=dragging
	Field cursorstate:Int = 0
	'0 = Mainmenu, 1=Running, ...
	Field gamestate:Int = -1

	Field nextXRatedCheckMinute:Int = -1

	'last sync
	Field stateSyncTime:Int	= 0
	'sync every
	Field stateSyncTimer:Int = 2000
	'the last moment a realtime second was gone
	Field lastTimeRealTimeSecondGone:Int = 0
	'last moment a WorlTime-"minute" was gone (for missed minutes)
	Field lastTimeMinuteGone:Double = 0

	'refill movie agency every X Minutes
	Field refillMovieAgencyTimer:Int = 180
	'minutes till movie agency gets refilled again
	Field refillMovieAgencyTime:Int = 180

	'refill ad agency every X Minutes
	Field refillAdAgencyTimer:Int = 240
	'minutes till ad agency gets refilled again
	Field refillAdAgencyTime:Int = 240
	'refill completely on next refill run?
	Field refillAdAgencyPercentage:Float = 0.5
	Field refillAdAgencyOverridePercentage:Float = 0.5


	'--networkgame auf "isNetworkGame()" umbauen
	'are we playing a network game? 0=false, 1=true, 2
	Field networkgame:Int = 0
	'start the game now?
	Field startNetworkGame:Int = 0
	'playing over internet? 0=false
	Field onlinegame:Int = 0


	Field terrorists:TFigureBase[2]
	Field marshals:TFigureBase[2]  


	'username of the player ->set in config
	Global userName:String = ""
	'userport of the player ->set in config
	Global userPort:Short = 4544
	'directory containing the movie/news/... databases
	Global userDBDir:String = ""
	'channelname the player uses ->set in config
	Global userChannelName:String = ""
	'language the player uses ->set in config
	Global userLanguage:String = "de"
	Global userStartYear:Int = 1985
	Global userFallbackIP:String = ""

	Global _instance:TGameBase


	'===== GAME STATES =====
	Const STATE_RUNNING:Int			= 0
	Const STATE_MAINMENU:Int		= 1
	Const STATE_NETWORKLOBBY:Int	= 2
	Const STATE_SETTINGSMENU:Int	= 3
	'mode when data gets synchronized or initialized
	Const STATE_PREPAREGAMESTART:Int= 4


	Function GetInstance:TGameBase()
		if not _instance Then _instance = new TGameBase
		return _instance
	End Function


	'(re)set everything to default values
	Method Initialize()
		randomSeedValue = 0
		title = "MyGame"
		cursorstate = 0
		gamestate = 1 'mainmenu

		nextXRatedCheckMinute = -1
		stateSyncTime = 0
		stateSyncTimer = 2000
		lastTimeRealTimeSecondGone = 0
		lastTimeMinuteGone = 0

		refillMovieAgencyTimer = 180
		refillMovieAgencyTime = 180

		refillAdAgencyTimer = 240
		refillAdAgencyTime = 240

		refillAdAgencyPercentage = 0.5
		refillAdAgencyOverridePercentage = 0.5

		networkgame = 0
		startNetworkGame = 0
		onlinegame = 0


		'remove existing figures
		'might be done by GetFigure[Base]Collection().Initialize() already
		For local f:TFigureBase = EachIn terrorists
			GetFigureBaseCollection().Remove(f)
		Next
		For local f:TFigureBase = EachIn marshals
			GetFigureBaseCollection().Remove(f)
		Next
		'reset arrays
		terrorists = new TFigureBase[2]
		marshals = new TFigureBase[2]
	End Method


	'run this before EACH started game
	Method PrepareStart(startNewGame:Int)
		'stub
	End Method


	'run this BEFORE the first game is started
	Function PrepareFirstGameStart:Int(startNewGame:Int)
		'stub
	End Function


	Method PrepareNewGame:Int()
		'stub
	End Method

	Method StartNewGame:Int()
		'stub
	End Method

	Method StartLoadedSaveGame:Int()
		'stub
	End Method
	

	Method Update(deltaTime:Float=1.0)
		'stub
	End Method


	Method ComputeNextXRatedCheckMinute()
		'do not use the timeslots 50-54 ... maybe thats too late?
		'-9 till 0 are "no check"
		nextXRatedCheckMinute = RandRange(-9, 49)
		If nextXRatedCheckMinute <= 0 Then nextXRatedCheckMinute = -1
	End Method


	Method GetNextXRatedCheckMinute:Int()
		Return nextXRatedCheckMinute
	End Method


	'computes daily costs like station or newsagency fees for every player
	Method ComputeDailyCosts(day:Int=-1)
		'stub
	End Method


	Method SetGameState:Int(gamestate:Int, force:Int=False )
		If Self.gamestate = gamestate And Not force Then Return True
		Self.gamestate = gamestate
	End Method


	Method PlayingAGame:Int()
		If gamestate <> STATE_RUNNING Then Return False

		Return True
	End Method


	Method GetRandomizerBase:Int()
		Return randomSeedValue
	End Method

	Method SetRandomizerBase( value:Int=0 )
		randomSeedValue = value
		'seed the random base for MERSENNE TWISTER (seedrnd for the internal one)
		SeedRand(randomSeedValue)
	End Method
End Type


'===== CONVENIENCE ACCESSOR =====
'return collection instance
Function GetGameBase:TGameBase()
	Return TGameBase.GetInstance()
End Function