'
' BlitzMax code generated with wxCodeGen v1.19 : 09 Mai 2015 13:13:33
' 
' 
' PLEASE DO "NOT" EDIT THIS FILE!
' 
SuperStrict

Import wx.wxButton
Import wx.wxCheckListBox
Import wx.wxChoice
Import wx.wxDialog
Import wx.wxFrame
Import wx.wxListBox
Import wx.wxListCtrl
Import wx.wxLocale
Import wx.wxMenu
Import wx.wxMenuBar
Import wx.wxNotebook
Import wx.wxPanel
Import wx.wxPropGrid
Import wx.wxScrolledWindow
Import wx.wxSlider
Import wx.wxSpinCtrl
Import wx.wxSplitterWindow
Import wx.wxStaticBoxSizer
Import wx.wxStaticLine
Import wx.wxStaticText
Import wx.wxStatusBar
Import wx.wxSystemSettings
Import wx.wxTextCtrl
Import wx.wxWindow


Type FrameMainBase Extends wxFrame

	Field m_statusBar1:wxStatusBar
	Field m_menubar1:wxMenuBar
	Field m_menu_file:wxMenu
	Field m_menu2:wxMenu
	Field m_notebook:wxNotebook
	Field m_panel_programmeLicences:wxScrolledWindow
	Field m_textCtrl_searchProgrammeLicenceText:wxTextCtrl
	Field m_choice_searchProgrammeLicenceType:wxChoice
	Field m_choice_searchProgrammeLicenceAuthor:wxChoice
	Field m_staticline5:wxStaticLine
	Field m_panel9:wxPanel
	Field m_staticText3:wxStaticText
	Field m_textCtrl_programmeLicenceTitle:wxTextCtrl
	Field m_staticText31:wxStaticText
	Field m_textCtrl_programmeLicenceOriginalTitle:wxTextCtrl
	Field m_staticText4:wxStaticText
	Field m_textCtrl_programmeLicenceDescription:wxTextCtrl
	Field m_listBox_programmeLicenceLanguages:wxListBox
	Field m_button_programmeLicenceAddLanguage:wxButton
	Field m_button_programmeLicenceRemoveLanguage:wxButton
	Field m_propertyGrid_programmeLicence1:wxPropertyGrid
	Field m_pgItem_programmeLicenceBlocks:wxIntProperty
	Field m_pgItem_programmeLicenceYear:wxIntProperty
	Field m_pgItem_programmeLicenceCountry:wxStringProperty
	Field m_pgItem_programmeLicenceMainGenre:wxEnumProperty
	Field m_pgItem_programmeLicenceSubGenres:wxMultiChoiceProperty
	Field m_pgItem_programmeLicenceTargetGroups:wxFlagsProperty
	Field m_pgItem_programmeLicenceProPressureGroups:wxFlagsProperty
	Field m_pgItem_programmeLicenceContraPressureGroups:wxFlagsProperty
	Field m_pgItem_programmeLicenceProduct:wxEnumProperty
	Field m_pgItem_programmeLicenceDistribution:wxIntProperty
	Field m_pgItem_programmeLicenceTime:wxIntProperty
	Field m_propertyGridItem11211:wxPropertyCategory
	Field m_pgItem_programmeLicenceModifierPrice:wxUIntProperty
	Field m_pgItem_programmeLicenceModifierTopicaltyRefresh:wxUIntProperty
	Field m_pgItem_programmeLicenceModifierm_pgItem_programmeLicenceModifierTopicaltyWearoff:wxUIntProperty
	Field m_pgItem_programmeLicenceModifierm_pgItem_programmeLicenceModifierTopicaltyAge:wxUIntProperty
	Field m_pgItem_programmeLicenceModifierTopicalityAired:wxUIntProperty
	Field m_propertyGridItem1121:wxPropertyCategory
	Field m_pgItem_programmeLicenceGUID:wxStringProperty
	Field m_pgItem_programmeLicenceCreator:wxIntProperty
	Field m_pgItem_programmeLicenceCreatedBy:wxStringProperty
	Field m_pgItem_programmeLicenceIMDB:wxStringProperty
	Field m_pgItem_programmeLicenceTMDB:wxStringProperty
	Field m_pgItem_programmeLicenceDatabaseFile:wxStringProperty
	Field m_panel6:wxPanel
	Field m_staticText5:wxStaticText
	Field m_slider_programmeLicenceReview:wxSlider
	Field m_textCtrl_programmeLicenceReview:wxTextCtrl
	Field m_staticText51:wxStaticText
	Field m_slider_programmeLicenceSpeed:wxSlider
	Field m_textCtrl_programmeLicenceSpeed:wxTextCtrl
	Field m_staticText511:wxStaticText
	Field m_slider_programmeLicenceOutcome:wxSlider
	Field m_textCtrl_programmeLicenceOutcome:wxTextCtrl
	Field m_listCtrl_programmeLicenceCast:wxListCtrl
	Field m_button_programmeLicenceAddCast:wxButton
	Field m_button_programmeLicenceRemoveCast:wxButton
	Field m_button_programmeLicenceMoveCastUp:wxButton
	Field m_button_programmeLicenceMoveCastDown:wxButton
	Field m_checkList_programmeLicenceFlags:wxCheckListBox
	Field m_button_programmeLicenceGenerateGUID:wxButton
	Field m_button_programmeLicenceUseFavAuthor:wxButton
	Field m_button_programmeLicenceImportFromWeb:wxButton
	Field m_staticline7:wxStaticLine
	Field m_listBox_programmeLicenceChildOfList:wxListBox
	Field m_button_programmeLicenceAddChildOfEntry:wxButton
	Field m_button_programmeLicenceRemoveChildOfEntry:wxButton
	Field m_button_programmeLicenceEditChildOfEntry:wxButton
	Field m_listCtrl_ProgrammeLicences_ProgrammeLicences:wxListCtrl
	Field m_panel_audienceSim:wxPanel
	Field m_splitter1:wxSplitterWindow
	Field m_panel7:wxPanel
	Field m_listCtrl_AudienceSim_ProgrammeLicences:wxListCtrl
	Field m_staticText13:wxStaticText
	Field m_button_AudienceSim_channel2Programme:wxButton
	Field m_button_AudienceSim_removeChannel2Programme:wxButton
	Field m_staticText131:wxStaticText
	Field m_button_AudienceSim_channel3Programme:wxButton
	Field m_button_AudienceSim_removeChannel3Programme:wxButton
	Field m_staticText1311:wxStaticText
	Field m_button_AudienceSim_channel4Programme:wxButton
	Field m_button_AudienceSim_removeChannel4Programme:wxButton
	Field m_panel61:wxPanel
	Field m_staticText6:wxStaticText
	Field m_spinCtrl_gameYear:wxSpinCtrl
	Field m_staticText7:wxStaticText
	Field m_spinCtrl_audience:wxSpinCtrl
	Field m_staticText_block:wxStaticText
	Field m_spinCtrl_block:wxSpinCtrl
	Field m_staticText_blockCount:wxStaticText
	Field m_listCtrl_audiences:wxListCtrl
	Field m_staticText_AudienceSim_audienceSummary:wxStaticText


	Method Create:FrameMainBase(parent:wxWindow = Null,id:Int = wxID_ANY, title:String = "Editor", x:Int = -1, y:Int = -1, w:Int = 1000, h:Int = 850, style:Int = wxDEFAULT_FRAME_STYLE|wxMINIMIZE_BOX|wxRESIZE_BORDER|wxTAB_TRAVERSAL)
		return FrameMainBase(Super.Create(parent, id, title, x, y, w, h, style))
	End Method

	Method OnInit()
		SetMinSize(800,-1)
		m_statusBar1 = Self.CreateStatusBar(1, 0|wxST_SIZEGRIP, wxID_ANY)

		m_menubar1 = new wxMenuBar.Create()

		m_menu_file = new wxMenu.Create()

		Local m_menuItem_openxml:wxMenuItem
		m_menuItem_openxml = new wxMenuItem.Create(m_menu_file, wxID_ANY, _("&Open Xml"), "", wxITEM_NORMAL)
		m_menu_file.AppendItem(m_menuItem_openxml)

		Local m_menuItem_closexml:wxMenuItem
		m_menuItem_closexml = new wxMenuItem.Create(m_menu_file, wxID_ANY, _("&Save Xml"), "", wxITEM_NORMAL)
		m_menu_file.AppendItem(m_menuItem_closexml)

		m_menu_file.AppendSeparator()

		Local m_menuItem_closexml1:wxMenuItem
		m_menuItem_closexml1 = new wxMenuItem.Create(m_menu_file, wxID_ANY, _("&Quit"), "", wxITEM_NORMAL)
		m_menu_file.AppendItem(m_menuItem_closexml1)
		m_menubar1.Append(m_menu_file, _("File"))

		m_menu2 = new wxMenu.Create()
		m_menubar1.Append(m_menu2, _("Data"))
		SetMenuBar(m_menubar1)


		Local bSizer2:wxBoxSizer
		bSizer2 = new wxBoxSizer.Create(wxVERTICAL)

		m_notebook = new wxNotebook.Create(Self, wxID_ANY)
		m_notebook.SetBackgroundColour(wxSystemSettings.GetColour(wxSYS_COLOUR_MENU))
		m_panel_programmeLicences = new wxScrolledWindow.Create(m_notebook, wxID_ANY,,,,, wxHSCROLL|wxVSCROLL)
		m_panel_programmeLicences.SetScrollRate(5, 5)

		Local gbSizer1:wxGridBagSizer
		gbSizer1 = new wxGridBagSizer.CreateGB(0, 0)
		gbSizer1.AddGrowableCol( 0 )
		gbSizer1.AddGrowableRow( 3 )
		gbSizer1.AddGrowableRow( 7 )
		gbSizer1.SetFlexibleDirection(wxBOTH)
		gbSizer1.SetNonFlexibleGrowMode(wxFLEX_GROWMODE_SPECIFIED)



		Local bSizer81:wxBoxSizer
		bSizer81 = new wxBoxSizer.Create(wxVERTICAL)

		m_textCtrl_searchProgrammeLicenceText = new wxTextCtrl.Create(m_panel_programmeLicences, wxID_ANY, "")
		bSizer81.Add(m_textCtrl_searchProgrammeLicenceText, 0, wxEXPAND|wxTOP|wxRIGHT|wxLEFT, 5)

		Local m_choice_searchProgrammeLicenceTypeChoices:String[] = [ _("All"), _("Series"), _("Movies") ]
		m_choice_searchProgrammeLicenceType = new wxChoice.Create(m_panel_programmeLicences, wxID_ANY, m_choice_searchProgrammeLicenceTypeChoices)
		m_choice_searchProgrammeLicenceType.SetSelection(0)

		bSizer81.Add(m_choice_searchProgrammeLicenceType, 0, wxEXPAND|wxRIGHT|wxLEFT, 5)

		Local m_choice_searchProgrammeLicenceAuthorChoices:String[] = [ _("All Users"), _("Ronny") ]
		m_choice_searchProgrammeLicenceAuthor = new wxChoice.Create(m_panel_programmeLicences, wxID_ANY, m_choice_searchProgrammeLicenceAuthorChoices)
		m_choice_searchProgrammeLicenceAuthor.SetSelection(0)

		bSizer81.Add(m_choice_searchProgrammeLicenceAuthor, 0, wxEXPAND|wxBOTTOM|wxRIGHT|wxLEFT, 5)

		gbSizer1.AddGBSizer(bSizer81, 0, 2, 1, 1, wxEXPAND, 5)

		m_staticline5 = new wxStaticLine.Create(m_panel_programmeLicences, wxID_ANY,,,,, wxLI_HORIZONTAL)
		gbSizer1.AddGB(m_staticline5, 1, 0, 1, 3, wxEXPAND | wxALL, 5)

		m_panel9 = new wxPanel.Create(m_panel_programmeLicences, wxID_ANY,,,,, wxTAB_TRAVERSAL)

		Local fgSizer2:wxFlexGridSizer
		fgSizer2 = new wxFlexGridSizer.CreateRC(2, 2, 0, 0)
		fgSizer2.AddGrowableCol( 1 )
		fgSizer2.SetFlexibleDirection( wxBOTH )
		fgSizer2.SetNonFlexibleGrowMode( wxFLEX_GROWMODE_SPECIFIED )

		m_staticText3 = new wxStaticText.Create(m_panel9, wxID_ANY, _("Title"))
		m_staticText3.Wrap(-1)
		fgSizer2.Add(m_staticText3, 0, wxALL|wxALIGN_CENTER_VERTICAL, 7)


		Local fgSizer31:wxFlexGridSizer
		fgSizer31 = new wxFlexGridSizer.CreateRC(0, 3, 0, 0)
		fgSizer31.AddGrowableCol( 0 )
		fgSizer31.AddGrowableCol( 2 )
		fgSizer31.SetFlexibleDirection( wxBOTH )
		fgSizer31.SetNonFlexibleGrowMode( wxFLEX_GROWMODE_SPECIFIED )

		m_textCtrl_programmeLicenceTitle = new wxTextCtrl.Create(m_panel9, wxID_ANY, "")
		fgSizer31.Add(m_textCtrl_programmeLicenceTitle, 0, wxEXPAND|wxALL, 4)

		m_staticText31 = new wxStaticText.Create(m_panel9, wxID_ANY, _("Original"))
		m_staticText31.Wrap(-1)
		fgSizer31.Add(m_staticText31, 0, wxALL|wxALIGN_CENTER_VERTICAL, 7)

		m_textCtrl_programmeLicenceOriginalTitle = new wxTextCtrl.Create(m_panel9, wxID_ANY, "")
		fgSizer31.Add(m_textCtrl_programmeLicenceOriginalTitle, 0, wxALL|wxEXPAND, 5)

		fgSizer2.AddSizer(fgSizer31, 1, wxEXPAND, 5)

		m_staticText4 = new wxStaticText.Create(m_panel9, wxID_ANY, _("Text"))
		m_staticText4.Wrap(-1)
		fgSizer2.Add(m_staticText4, 0, wxALL, 7)

		m_textCtrl_programmeLicenceDescription = new wxTextCtrl.Create(m_panel9, wxID_ANY, "",,,,, wxTE_MULTILINE)
		m_textCtrl_programmeLicenceDescription.SetMinSize(-1,55)
		fgSizer2.Add(m_textCtrl_programmeLicenceDescription, 0, wxEXPAND|wxBOTTOM|wxRIGHT|wxLEFT, 5)

		m_panel9.SetSizer(fgSizer2)
		m_panel9.Layout()
		fgSizer2.Fit(m_panel9)
		gbSizer1.AddGB(m_panel9, 2, 0, 1, 2, wxEXPAND|wxTOP|wxBOTTOM|wxLEFT, 5)


		Local bSizer31:wxBoxSizer
		bSizer31 = new wxBoxSizer.Create(wxHORIZONTAL)
		bSizer31.SetMinSize(160,-1)

		Local m_listBox_programmeLicenceLanguagesChoices:String[] = [ _("Deutsch"), _("English") ]
		m_listBox_programmeLicenceLanguages = new wxListBox.Create(m_panel_programmeLicences, wxID_ANY, m_listBox_programmeLicenceLanguagesChoices,,,,, wxLB_SINGLE)

		bSizer31.Add(m_listBox_programmeLicenceLanguages, 1, wxEXPAND|wxALL, 5)


		Local bSizer4111:wxBoxSizer
		bSizer4111 = new wxBoxSizer.Create(wxVERTICAL)

		m_button_programmeLicenceAddLanguage = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("+"))
		m_button_programmeLicenceAddLanguage.SetMaxSize(30,-1)
		bSizer4111.Add(m_button_programmeLicenceAddLanguage, 0, wxALIGN_CENTER_VERTICAL, 5)

		m_button_programmeLicenceRemoveLanguage = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("-"))
		m_button_programmeLicenceRemoveLanguage.SetMaxSize(30,-1)
		bSizer4111.Add(m_button_programmeLicenceRemoveLanguage, 0, wxALIGN_CENTER_VERTICAL, 5)

		bSizer31.AddSizer(bSizer4111, 0, wxEXPAND|wxTOP|wxRIGHT, 5)

		gbSizer1.AddGBSizer(bSizer31, 2, 2, 1, 1, wxEXPAND|wxTOP|wxBOTTOM, 5)

		m_propertyGrid_programmeLicence1 = new wxPropertyGrid.Create(m_panel_programmeLicences, wxID_ANY,,, -1,-1, wxPG_BOLD_MODIFIED|wxPG_DEFAULT_STYLE|wxPG_SPLITTER_AUTO_CENTER|wxPG_TOOLTIPS|wxTAB_TRAVERSAL)
		m_propertyGrid_programmeLicence1.SetMinSize(400,340)
		m_pgItem_programmeLicenceBlocks = new wxIntProperty.Create(_("Blocks"), _("m_pgItem_programmeLicenceBlocks"), 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceBlocks)
		m_pgItem_programmeLicenceYear = new wxIntProperty.Create(_("Year"), _("m_pgItem_programmeLicenceYear"), 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceYear)
		m_pgItem_programmeLicenceCountry = new wxStringProperty.Create(_("Country"), _("m_pgItem_programmeLicenceCountry"), "")
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceCountry)
		m_pgItem_programmeLicenceMainGenre = new wxEnumProperty.CreateWithArrays(_("Maingenre"), _("m_pgItem_programmeLicenceMainGenre"),Null, Null, 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceMainGenre)
		m_pgItem_programmeLicenceSubGenres = new wxMultiChoiceProperty.CreateWithArrays(_("Subgenres"), _("m_pgItem_programmeLicenceSubGenres"), Null, Null)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceSubGenres)
		m_pgItem_programmeLicenceTargetGroups = new wxFlagsProperty.Create(_("targetGroups"), _("m_pgItem_programmeLicenceTargetGroups"),Null, Null, 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceTargetGroups)
		m_pgItem_programmeLicenceProPressureGroups = new wxFlagsProperty.Create(_("proPressureGroups"), _("m_pgItem_programmeLicenceProPressureGroups"),Null, Null, 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceProPressureGroups)
		m_pgItem_programmeLicenceContraPressureGroups = new wxFlagsProperty.Create(_("contraPressureGroups"), _("m_pgItem_programmeLicenceContraPressureGroups"),Null, Null, 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceContraPressureGroups)
		m_pgItem_programmeLicenceProduct = new wxEnumProperty.CreateWithArrays(_("Product"), _("m_pgItem_programmeLicenceProduct"),Null, Null, 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceProduct)
		m_pgItem_programmeLicenceDistribution = new wxIntProperty.Create(_("Distribution"), _("m_pgItem_programmeLicenceDistribution"), 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceDistribution)
		m_pgItem_programmeLicenceTime = new wxIntProperty.Create(_("Time"), _("m_pgItem_programmeLicenceTime"), 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceTime)
		m_propertyGridItem11211 = new wxPropertyCategory.Create(_("Modifiers"), _("m_propertyGridItem11211"))
		m_propertyGrid_programmeLicence1.Append(m_propertyGridItem11211)
		m_pgItem_programmeLicenceModifierPrice = new wxUIntProperty.Create(_("Price (in %)"), _("m_pgItem_programmeLicenceModifierPrice"), 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceModifierPrice)
		m_pgItem_programmeLicenceModifierTopicaltyRefresh = new wxUIntProperty.Create(_("Topicality: Refresh (in %)"), _("m_pgItem_programmeLicenceModifierTopicaltyRefresh"), 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceModifierTopicaltyRefresh)
		m_pgItem_programmeLicenceModifierm_pgItem_programmeLicenceModifierTopicaltyWearoff = new wxUIntProperty.Create(_("Topicality: Wearoff (in %)"), _("m_pgItem_programmeLicenceModifierm_pgItem_programmeLicenceModifierTopicaltyWearoff"), 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceModifierm_pgItem_programmeLicenceModifierTopicaltyWearoff)
		m_pgItem_programmeLicenceModifierm_pgItem_programmeLicenceModifierTopicaltyAge = new wxUIntProperty.Create(_("Topicality: Age Influence (in %)"), _("m_pgItem_programmeLicenceModifierm_pgItem_programmeLicenceModifierTopicaltyAge"), 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceModifierm_pgItem_programmeLicenceModifierTopicaltyAge)
		m_pgItem_programmeLicenceModifierTopicalityAired = new wxUIntProperty.Create(_("Topicality: Aired Influence (in %)"), _("m_pgItem_programmeLicenceModifierTopicalityAired"), 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceModifierTopicalityAired)
		m_propertyGridItem1121 = new wxPropertyCategory.Create(_("CreationData"), _("m_propertyGridItem1121"))
		m_propertyGrid_programmeLicence1.Append(m_propertyGridItem1121)
		m_pgItem_programmeLicenceGUID = new wxStringProperty.Create(_("GUID"), _("m_pgItem_programmeLicenceGUID"), "")
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceGUID)
		m_pgItem_programmeLicenceCreator = new wxIntProperty.Create(_("Creator"), _("m_pgItem_programmeLicenceCreator"), 0)
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceCreator)
		m_pgItem_programmeLicenceCreatedBy = new wxStringProperty.Create(_("Created by"), _("m_pgItem_programmeLicenceCreatedBy"), "")
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceCreatedBy)
		m_pgItem_programmeLicenceIMDB = new wxStringProperty.Create(_("IMDB ID"), _("m_pgItem_programmeLicenceIMDB"), "")
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceIMDB)
		m_pgItem_programmeLicenceTMDB = new wxStringProperty.Create(_("TMDB ID"), _("m_pgItem_programmeLicenceTMDB"), "")
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceTMDB)
		m_pgItem_programmeLicenceDatabaseFile = new wxStringProperty.Create(_("Database File"), _("m_pgItem_programmeLicenceDatabaseFile"), "")
		m_propertyGrid_programmeLicence1.Append(m_pgItem_programmeLicenceDatabaseFile)
		gbSizer1.AddGB(m_propertyGrid_programmeLicence1, 3, 0, 3, 1, wxEXPAND|wxALL, 5)

		m_panel6 = new wxPanel.Create(m_panel_programmeLicences, wxID_ANY,,, -1,-1, wxTAB_TRAVERSAL)

		Local fgSizer3:wxFlexGridSizer
		fgSizer3 = new wxFlexGridSizer.CreateRC(0, 3, 0, 0)
		fgSizer3.SetFlexibleDirection( wxBOTH )
		fgSizer3.SetNonFlexibleGrowMode( wxFLEX_GROWMODE_SPECIFIED )

		m_staticText5 = new wxStaticText.Create(m_panel6, wxID_ANY, _("Review"))
		m_staticText5.Wrap(-1)
		fgSizer3.Add(m_staticText5, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5)

		m_slider_programmeLicenceReview = new wxSlider.Create(m_panel6, wxID_ANY, 0, 0, 1000,,, 120,-1, wxSL_HORIZONTAL)
		fgSizer3.Add(m_slider_programmeLicenceReview, 0, wxALL|wxALIGN_CENTER_VERTICAL|wxEXPAND, 5)

		m_textCtrl_programmeLicenceReview = new wxTextCtrl.Create(m_panel6, wxID_ANY, _("0"),,, 50,-1)
		m_textCtrl_programmeLicenceReview.SetMaxLength(4)
		fgSizer3.Add(m_textCtrl_programmeLicenceReview, 0, wxTOP|wxRIGHT|wxLEFT, 5)

		m_staticText51 = new wxStaticText.Create(m_panel6, wxID_ANY, _("Speed"))
		m_staticText51.Wrap(-1)
		fgSizer3.Add(m_staticText51, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5)

		m_slider_programmeLicenceSpeed = new wxSlider.Create(m_panel6, wxID_ANY, 0, 0, 1000,,, 120,-1, wxSL_HORIZONTAL)
		fgSizer3.Add(m_slider_programmeLicenceSpeed, 0, wxALL|wxALIGN_CENTER_VERTICAL|wxEXPAND, 5)

		m_textCtrl_programmeLicenceSpeed = new wxTextCtrl.Create(m_panel6, wxID_ANY, _("0"),,, 50,-1)
		m_textCtrl_programmeLicenceSpeed.SetMaxLength(4)
		fgSizer3.Add(m_textCtrl_programmeLicenceSpeed, 0, wxTOP|wxRIGHT|wxLEFT, 5)

		m_staticText511 = new wxStaticText.Create(m_panel6, wxID_ANY, _("Outcome"))
		m_staticText511.Wrap(-1)
		fgSizer3.Add(m_staticText511, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5)

		m_slider_programmeLicenceOutcome = new wxSlider.Create(m_panel6, wxID_ANY, 0, 0, 1000,,, 120,-1, wxSL_HORIZONTAL)
		fgSizer3.Add(m_slider_programmeLicenceOutcome, 0, wxALL|wxALIGN_CENTER_VERTICAL|wxEXPAND, 5)

		m_textCtrl_programmeLicenceOutcome = new wxTextCtrl.Create(m_panel6, wxID_ANY, _("0"),,, 50,-1)
		m_textCtrl_programmeLicenceOutcome.SetMaxLength(4)
		fgSizer3.Add(m_textCtrl_programmeLicenceOutcome, 0, wxTOP|wxRIGHT|wxLEFT, 5)

		m_panel6.SetSizer(fgSizer3)
		m_panel6.Layout()
		fgSizer3.Fit(m_panel6)
		gbSizer1.AddGB(m_panel6, 3, 1, 1, 1, wxALL|wxEXPAND, 0)


		Local bSizer311:wxBoxSizer
		bSizer311 = new wxBoxSizer.Create(wxVERTICAL)


		Local sbSizer2:wxStaticBoxSizer
		sbSizer2 = new wxStaticBoxSizer.CreateSizerWithBox( new wxStaticBox.Create(m_panel_programmeLicences, wxID_ANY, _("Cast")), wxHORIZONTAL)

		m_listCtrl_programmeLicenceCast = new wxListCtrl.Create(m_panel_programmeLicences, wxID_ANY,,, 280,-1, wxLC_NO_HEADER|wxLC_REPORT|wxLC_SINGLE_SEL)
		sbSizer2.Add(m_listCtrl_programmeLicenceCast, 1, wxALL|wxEXPAND, 5)


		Local bSizer41:wxBoxSizer
		bSizer41 = new wxBoxSizer.Create(wxVERTICAL)

		m_button_programmeLicenceAddCast = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("+"))
		m_button_programmeLicenceAddCast.SetMaxSize(30,-1)
		bSizer41.Add(m_button_programmeLicenceAddCast, 0, wxALIGN_CENTER_VERTICAL, 5)

		m_button_programmeLicenceRemoveCast = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("-"))
		m_button_programmeLicenceRemoveCast.SetMaxSize(30,-1)
		bSizer41.Add(m_button_programmeLicenceRemoveCast, 0, wxALIGN_CENTER_VERTICAL, 5)

		m_button_programmeLicenceMoveCastUp = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("↑"))
		m_button_programmeLicenceMoveCastUp.SetMaxSize(30,-1)
		bSizer41.Add(m_button_programmeLicenceMoveCastUp, 0, wxTOP, 5)

		m_button_programmeLicenceMoveCastDown = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("↓"))
		m_button_programmeLicenceMoveCastDown.SetMaxSize(30,-1)
		bSizer41.Add(m_button_programmeLicenceMoveCastDown, 0, , 5)

		sbSizer2.AddSizer(bSizer41, 0, wxALIGN_RIGHT|wxTOP|wxBOTTOM, 5)

		bSizer311.AddSizer(sbSizer2, 1, wxEXPAND, 5)

		gbSizer1.AddGBSizer(bSizer311, 4, 1, 2, 1, wxALL|wxEXPAND, 0)

		Local m_checkList_programmeLicenceFlagsChoices:String[] = [ _("Live"), _("Animation"), _("Culture"), _("Cult"), _("Trash"), _("BMovie"), _("xRated"), _("Paid"), _("Series") ]
		m_checkList_programmeLicenceFlags = new wxCheckListBox.Create(m_panel_programmeLicences, wxID_ANY, m_checkList_programmeLicenceFlagsChoices)
		m_checkList_programmeLicenceFlags.SetMaxSize(-1,225)

		gbSizer1.AddGB(m_checkList_programmeLicenceFlags, 3, 2, 2, 1, wxALL|wxEXPAND, 5)


		Local bSizer8:wxBoxSizer
		bSizer8 = new wxBoxSizer.Create(wxVERTICAL)
		bSizer8.SetMinSize(-1,-1)

		m_button_programmeLicenceGenerateGUID = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("Generate GUID"))
		bSizer8.Add(m_button_programmeLicenceGenerateGUID, 0, wxALIGN_CENTER_HORIZONTAL|wxEXPAND|wxRIGHT|wxLEFT, 5)

		m_button_programmeLicenceUseFavAuthor = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("Use Fav Author"))
		bSizer8.Add(m_button_programmeLicenceUseFavAuthor, 0, wxALIGN_CENTER_HORIZONTAL|wxEXPAND|wxRIGHT|wxLEFT, 5)

		m_button_programmeLicenceImportFromWeb = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("Import from Web"))
		bSizer8.Add(m_button_programmeLicenceImportFromWeb, 0, wxALL|wxEXPAND, 5)

		gbSizer1.AddGBSizer(bSizer8, 5, 2, 1, 1, wxEXPAND, 5)

		m_staticline7 = new wxStaticLine.Create(m_panel_programmeLicences, wxID_ANY,,,,, wxLI_HORIZONTAL)
		gbSizer1.AddGB(m_staticline7, 6, 0, 1, 3, wxEXPAND | wxALL, 5)


		Local sbSizer22:wxStaticBoxSizer
		sbSizer22 = new wxStaticBoxSizer.CreateSizerWithBox( new wxStaticBox.Create(m_panel_programmeLicences, wxID_ANY, _("Series")), wxHORIZONTAL)

		m_listBox_programmeLicenceChildOfList = new wxListBox.Create(m_panel_programmeLicences, wxID_ANY, Null, -1,-1,,, wxLB_SINGLE)

		sbSizer22.Add(m_listBox_programmeLicenceChildOfList, 1, wxALL|wxEXPAND, 5)


		Local bSizer412:wxBoxSizer
		bSizer412 = new wxBoxSizer.Create(wxVERTICAL)

		m_button_programmeLicenceAddChildOfEntry = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("+"))
		m_button_programmeLicenceAddChildOfEntry.SetMaxSize(30,-1)
		bSizer412.Add(m_button_programmeLicenceAddChildOfEntry, 0, wxALIGN_CENTER_VERTICAL, 5)

		m_button_programmeLicenceRemoveChildOfEntry = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("-"))
		m_button_programmeLicenceRemoveChildOfEntry.SetMaxSize(30,-1)
		bSizer412.Add(m_button_programmeLicenceRemoveChildOfEntry, 0, wxALIGN_CENTER_VERTICAL, 5)

		sbSizer22.AddSizer(bSizer412, 0, wxALIGN_RIGHT|wxTOP|wxBOTTOM, 5)

		gbSizer1.AddGBSizer(sbSizer22, 7, 0, 1, 2, wxEXPAND, 5)


		Local sbSizer6:wxStaticBoxSizer
		sbSizer6 = new wxStaticBoxSizer.CreateSizerWithBox( new wxStaticBox.Create(m_panel_programmeLicences, wxID_ANY, ""), wxHORIZONTAL)

		m_button_programmeLicenceEditChildOfEntry = new wxButton.Create(m_panel_programmeLicences, wxID_ANY, _("Edit Selected"),,, -1,-1)
		sbSizer6.Add(m_button_programmeLicenceEditChildOfEntry, 1, wxTOP|wxBOTTOM|wxLEFT, 5)

		gbSizer1.AddGBSizer(sbSizer6, 7, 2, 1, 1, wxEXPAND, 5)

		m_listCtrl_ProgrammeLicences_ProgrammeLicences = new wxListCtrl.Create(m_panel_programmeLicences, wxID_ANY,,,,, wxLC_NO_SORT_HEADER|wxLC_REPORT|wxLC_SINGLE_SEL)
		gbSizer1.AddGB(m_listCtrl_ProgrammeLicences_ProgrammeLicences, 0, 0, 1, 2, wxALL|wxEXPAND, 5)

		m_panel_programmeLicences.SetSizer(gbSizer1)
		m_panel_programmeLicences.Layout()
		gbSizer1.Fit(m_panel_programmeLicences)

		m_notebook.AddPage(m_panel_programmeLicences, _("ProgrammeLicences"), False)

		m_panel_audienceSim = new wxPanel.Create(m_notebook, wxID_ANY,,,,, wxTAB_TRAVERSAL)

		Local bSizer4:wxBoxSizer
		bSizer4 = new wxBoxSizer.Create(wxVERTICAL)

		m_splitter1 = new wxSplitterWindow.Create(m_panel_audienceSim, wxID_ANY,,,,, wxSP_3D)
		m_splitter1.SetSashGravity(0.0)
		m_panel7 = new wxPanel.Create(m_splitter1, wxID_ANY,,,,, wxTAB_TRAVERSAL)

		Local sbSizer21:wxStaticBoxSizer
		sbSizer21 = new wxStaticBoxSizer.CreateSizerWithBox( new wxStaticBox.Create(m_panel7, wxID_ANY, _("Programme")), wxVERTICAL)

		m_listCtrl_AudienceSim_ProgrammeLicences = new wxListCtrl.Create(m_panel7, wxID_ANY,,,,, wxLC_REPORT|wxLC_SINGLE_SEL)
		m_listCtrl_AudienceSim_ProgrammeLicences.SetMinSize(-1,150)
		sbSizer21.Add(m_listCtrl_AudienceSim_ProgrammeLicences, 1, wxALL|wxEXPAND, 5)


		Local bSizer13:wxBoxSizer
		bSizer13 = new wxBoxSizer.Create(wxHORIZONTAL)

		m_staticText13 = new wxStaticText.Create(m_panel7, wxID_ANY, _("#2"))
		m_staticText13.Wrap(-1)
		bSizer13.Add(m_staticText13, 0, wxALIGN_CENTER_VERTICAL|wxTOP|wxBOTTOM|wxLEFT, 5)

		m_button_AudienceSim_channel2Programme = new wxButton.Create(m_panel7, wxID_ANY, "")
		bSizer13.Add(m_button_AudienceSim_channel2Programme, 1, wxTOP|wxBOTTOM|wxLEFT, 5)

		m_button_AudienceSim_removeChannel2Programme = new wxButton.Create(m_panel7, wxID_ANY, _("x"),,, 25,-1)
		bSizer13.Add(m_button_AudienceSim_removeChannel2Programme, 0, wxTOP|wxBOTTOM|wxRIGHT, 5)

		m_staticText131 = new wxStaticText.Create(m_panel7, wxID_ANY, _("#3"))
		m_staticText131.Wrap(-1)
		bSizer13.Add(m_staticText131, 0, wxALIGN_CENTER_VERTICAL|wxTOP|wxBOTTOM|wxLEFT, 5)

		m_button_AudienceSim_channel3Programme = new wxButton.Create(m_panel7, wxID_ANY, "")
		bSizer13.Add(m_button_AudienceSim_channel3Programme, 1, wxTOP|wxBOTTOM|wxLEFT, 5)

		m_button_AudienceSim_removeChannel3Programme = new wxButton.Create(m_panel7, wxID_ANY, _("x"),,, 25,-1)
		bSizer13.Add(m_button_AudienceSim_removeChannel3Programme, 0, wxTOP|wxBOTTOM|wxRIGHT, 5)

		m_staticText1311 = new wxStaticText.Create(m_panel7, wxID_ANY, _("#4"))
		m_staticText1311.Wrap(-1)
		bSizer13.Add(m_staticText1311, 0, wxTOP|wxBOTTOM|wxLEFT|wxALIGN_CENTER_VERTICAL, 5)

		m_button_AudienceSim_channel4Programme = new wxButton.Create(m_panel7, wxID_ANY, "")
		bSizer13.Add(m_button_AudienceSim_channel4Programme, 1, wxTOP|wxBOTTOM|wxLEFT, 5)

		m_button_AudienceSim_removeChannel4Programme = new wxButton.Create(m_panel7, wxID_ANY, _("x"),,, 25,-1)
		bSizer13.Add(m_button_AudienceSim_removeChannel4Programme, 0, wxTOP|wxBOTTOM|wxRIGHT, 5)

		sbSizer21.AddSizer(bSizer13, 0, wxEXPAND, 5)

		m_panel7.SetSizer(sbSizer21)
		m_panel7.Layout()
		sbSizer21.Fit(m_panel7)

		m_panel61 = new wxPanel.Create(m_splitter1, wxID_ANY,,,,, wxTAB_TRAVERSAL)

		Local bSizer6:wxBoxSizer
		bSizer6 = new wxBoxSizer.Create(wxVERTICAL)


		Local bSizer5:wxBoxSizer
		bSizer5 = new wxBoxSizer.Create(wxHORIZONTAL)

		m_staticText6 = new wxStaticText.Create(m_panel61, wxID_ANY, _("Spieljahr"))
		m_staticText6.Wrap(-1)
		bSizer5.Add(m_staticText6, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5)

		m_spinCtrl_gameYear = new wxSpinCtrl.Create(m_panel61, wxID_ANY, "",,, 60,-1, wxSP_ARROW_KEYS, 1900, 2100, 1985)

		bSizer5.Add(m_spinCtrl_gameYear, 0, wxALL, 5)

		m_staticText7 = new wxStaticText.Create(m_panel61, wxID_ANY, _("Reichweite"))
		m_staticText7.Wrap(-1)
		bSizer5.Add(m_staticText7, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5)

		m_spinCtrl_audience = new wxSpinCtrl.Create(m_panel61, wxID_ANY, "",,, 100,-1, wxSP_ARROW_KEYS, 0, 100000000, 1000000)

		bSizer5.Add(m_spinCtrl_audience, 0, wxALL, 5)

		m_staticText_block = new wxStaticText.Create(m_panel61, wxID_ANY, _("Block"))
		m_staticText_block.Wrap(-1)
		bSizer5.Add(m_staticText_block, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5)

		m_spinCtrl_block = new wxSpinCtrl.Create(m_panel61, wxID_ANY, "",,, 40,-1, wxSP_ARROW_KEYS, 1, 10, 1)

		bSizer5.Add(m_spinCtrl_block, 0, wxALL, 5)

		m_staticText_blockCount = new wxStaticText.Create(m_panel61, wxID_ANY, _("/ 2"))
		m_staticText_blockCount.Wrap(-1)
		bSizer5.Add(m_staticText_blockCount, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5)

		bSizer6.AddSizer(bSizer5, 0, wxEXPAND, 5)

		bSizer6.AddCustomSpacer(0, 5, 0, , 5)


		Local sbSizer1:wxStaticBoxSizer
		sbSizer1 = new wxStaticBoxSizer.CreateSizerWithBox( new wxStaticBox.Create(m_panel61, wxID_ANY, _("Quoten")), wxVERTICAL)

		m_listCtrl_audiences = new wxListCtrl.Create(m_panel61, wxID_ANY,,,,, wxLC_REPORT|wxLC_SINGLE_SEL)
		m_listCtrl_audiences.SetFont(new wxFont.CreateWithAttribs(wxNORMAL_FONT().GetPointSize(), 70, 90, 90, False))
		sbSizer1.Add(m_listCtrl_audiences, 1, wxALL|wxEXPAND, 5)

		m_staticText_AudienceSim_audienceSummary = new wxStaticText.Create(m_panel61, wxID_ANY, "")
		m_staticText_AudienceSim_audienceSummary.Wrap(-1)
		sbSizer1.Add(m_staticText_AudienceSim_audienceSummary, 0, wxBOTTOM|wxRIGHT|wxLEFT, 5)

		bSizer6.AddSizer(sbSizer1, 1, wxEXPAND, 5)

		m_panel61.SetSizer(bSizer6)
		m_panel61.Layout()
		bSizer6.Fit(m_panel61)

		m_splitter1.SplitHorizontally(m_panel7, m_panel61, 200)
		m_splitter1.SetMinimumPaneSize(200)

		bSizer4.Add(m_splitter1, 1, wxEXPAND, 5)

		m_panel_audienceSim.SetSizer(bSizer4)
		m_panel_audienceSim.Layout()
		bSizer4.Fit(m_panel_audienceSim)
		m_notebook.AddPage(m_panel_audienceSim, _("AudienceSim"), True)


		bSizer2.Add(m_notebook, 1, wxALL|wxEXPAND, 5)

		SetSizer(bSizer2)
		Layout()
		Center(wxBOTH)

		m_listBox_programmeLicenceLanguages.ConnectAny(wxEVT_COMMAND_LISTBOX_SELECTED, _onProgrammeLicenceLanguagesSelect, Null, Self)
		m_slider_programmeLicenceReview.ConnectAny(wxEVT_SCROLL, _OnProgrammeLicenceRatingsSliderScroll, Null, Self)
		m_textCtrl_programmeLicenceReview.ConnectAny(wxEVT_COMMAND_TEXT_UPDATED, _OnProgrammeLicenceRatingsTextCtrlText, Null, Self)
		m_slider_programmeLicenceSpeed.ConnectAny(wxEVT_SCROLL, _OnProgrammeLicenceRatingsSliderScroll, Null, Self)
		m_textCtrl_programmeLicenceSpeed.ConnectAny(wxEVT_COMMAND_TEXT_UPDATED, _OnProgrammeLicenceRatingsTextCtrlText, Null, Self)
		m_slider_programmeLicenceOutcome.ConnectAny(wxEVT_SCROLL, _OnProgrammeLicenceRatingsSliderScroll, Null, Self)
		m_textCtrl_programmeLicenceOutcome.ConnectAny(wxEVT_COMMAND_TEXT_UPDATED, _OnProgrammeLicenceRatingsTextCtrlText, Null, Self)
		m_button_programmeLicenceAddCast.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _OnProgrammeLicenceAddCast, Null, Self)
		m_button_programmeLicenceRemoveCast.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _OnProgrammeLicenceRemoveCast, Null, Self)
		m_button_programmeLicenceMoveCastUp.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _OnProgrammeLicenceMoveCastUp, Null, Self)
		m_button_programmeLicenceMoveCastDown.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _OnProgrammeLicenceMoveCastDown, Null, Self)
		m_listCtrl_ProgrammeLicences_ProgrammeLicences.ConnectAny(wxEVT_COMMAND_LIST_COL_CLICK, _OnProgrammeLicences_ProgrammeLicencesListColClick, Null, Self)
		m_listCtrl_ProgrammeLicences_ProgrammeLicences.ConnectAny(wxEVT_COMMAND_LIST_ITEM_SELECTED, _OnProgrammeLicences_ProgrammeLicencesItemSelected, Null, Self)
		m_listCtrl_ProgrammeLicences_ProgrammeLicences.ConnectAny(wxEVT_SIZE, _OnProgrammeLicences_ProgrammeLicencesSize, Null, Self)
		m_listCtrl_AudienceSim_ProgrammeLicences.ConnectAny(wxEVT_COMMAND_LIST_ITEM_SELECTED, _OnAudienceSim_ProgrammeLicencesItemSelected, Null, Self)
		m_listCtrl_AudienceSim_ProgrammeLicences.ConnectAny(wxEVT_SIZE, _OnAudienceSim_ProgrammeLicencesSize, Null, Self)
		m_button_AudienceSim_channel2Programme.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _onAudienceSim_ChannelProgrammeClick, Null, Self)
		m_button_AudienceSim_removeChannel2Programme.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _onAudienceSim_RemoveChannelProgrammeClick, Null, Self)
		m_button_AudienceSim_channel3Programme.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _onAudienceSim_ChannelProgrammeClick, Null, Self)
		m_button_AudienceSim_removeChannel3Programme.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _onAudienceSim_RemoveChannelProgrammeClick, Null, Self)
		m_button_AudienceSim_channel4Programme.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _onAudienceSim_ChannelProgrammeClick, Null, Self)
		m_button_AudienceSim_removeChannel4Programme.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _onAudienceSim_RemoveChannelProgrammeClick, Null, Self)
		m_spinCtrl_gameYear.ConnectAny(wxEVT_COMMAND_SPINCTRL_UPDATED, _OnAudienceSimChangeSettings, Null, Self)
		m_spinCtrl_audience.ConnectAny(wxEVT_COMMAND_SPINCTRL_UPDATED, _OnAudienceSimChangeSettings, Null, Self)
		m_spinCtrl_block.ConnectAny(wxEVT_COMMAND_SPINCTRL_UPDATED, _OnAudienceSimChangeSettings, Null, Self)
		m_listCtrl_audiences.ConnectAny(wxEVT_COMMAND_LIST_ITEM_SELECTED, _OnAudienceSim_AudiencesItemSelected, Null, Self)
	End Method

	Function _onProgrammeLicenceLanguagesSelect(event:wxEvent)
		FrameMainBase(event.sink).onProgrammeLicenceLanguagesSelect(wxCommandEvent(event))
	End Function

	Method onProgrammeLicenceLanguagesSelect(event:wxCommandEvent)
		DebugLog "Please override FrameMain.onProgrammeLicenceLanguagesSelect()"
		event.Skip()
	End Method

	Function _OnProgrammeLicenceRatingsSliderScroll(event:wxEvent)
		FrameMainBase(event.sink).OnProgrammeLicenceRatingsSliderScroll(wxScrollEvent(event))
	End Function

	Method OnProgrammeLicenceRatingsSliderScroll(event:wxScrollEvent)
		DebugLog "Please override FrameMain.OnProgrammeLicenceRatingsSliderScroll()"
		event.Skip()
	End Method

	Function _OnProgrammeLicenceRatingsTextCtrlText(event:wxEvent)
		FrameMainBase(event.sink).OnProgrammeLicenceRatingsTextCtrlText(wxCommandEvent(event))
	End Function

	Method OnProgrammeLicenceRatingsTextCtrlText(event:wxCommandEvent)
		DebugLog "Please override FrameMain.OnProgrammeLicenceRatingsTextCtrlText()"
		event.Skip()
	End Method

	Function _OnProgrammeLicenceAddCast(event:wxEvent)
		FrameMainBase(event.sink).OnProgrammeLicenceAddCast(wxCommandEvent(event))
	End Function

	Method OnProgrammeLicenceAddCast(event:wxCommandEvent)
		DebugLog "Please override FrameMain.OnProgrammeLicenceAddCast()"
		event.Skip()
	End Method

	Function _OnProgrammeLicenceRemoveCast(event:wxEvent)
		FrameMainBase(event.sink).OnProgrammeLicenceRemoveCast(wxCommandEvent(event))
	End Function

	Method OnProgrammeLicenceRemoveCast(event:wxCommandEvent)
		DebugLog "Please override FrameMain.OnProgrammeLicenceRemoveCast()"
		event.Skip()
	End Method

	Function _OnProgrammeLicenceMoveCastUp(event:wxEvent)
		FrameMainBase(event.sink).OnProgrammeLicenceMoveCastUp(wxCommandEvent(event))
	End Function

	Method OnProgrammeLicenceMoveCastUp(event:wxCommandEvent)
		DebugLog "Please override FrameMain.OnProgrammeLicenceMoveCastUp()"
		event.Skip()
	End Method

	Function _OnProgrammeLicenceMoveCastDown(event:wxEvent)
		FrameMainBase(event.sink).OnProgrammeLicenceMoveCastDown(wxCommandEvent(event))
	End Function

	Method OnProgrammeLicenceMoveCastDown(event:wxCommandEvent)
		DebugLog "Please override FrameMain.OnProgrammeLicenceMoveCastDown()"
		event.Skip()
	End Method

	Function _OnProgrammeLicences_ProgrammeLicencesListColClick(event:wxEvent)
		FrameMainBase(event.sink).OnProgrammeLicences_ProgrammeLicencesListColClick(wxListEvent(event))
	End Function

	Method OnProgrammeLicences_ProgrammeLicencesListColClick(event:wxListEvent)
		DebugLog "Please override FrameMain.OnProgrammeLicences_ProgrammeLicencesListColClick()"
		event.Skip()
	End Method

	Function _OnProgrammeLicences_ProgrammeLicencesItemSelected(event:wxEvent)
		FrameMainBase(event.sink).OnProgrammeLicences_ProgrammeLicencesItemSelected(wxListEvent(event))
	End Function

	Method OnProgrammeLicences_ProgrammeLicencesItemSelected(event:wxListEvent)
		DebugLog "Please override FrameMain.OnProgrammeLicences_ProgrammeLicencesItemSelected()"
		event.Skip()
	End Method

	Function _OnProgrammeLicences_ProgrammeLicencesSize(event:wxEvent)
		FrameMainBase(event.sink).OnProgrammeLicences_ProgrammeLicencesSize(wxSizeEvent(event))
	End Function

	Method OnProgrammeLicences_ProgrammeLicencesSize(event:wxSizeEvent)
		DebugLog "Please override FrameMain.OnProgrammeLicences_ProgrammeLicencesSize()"
		event.Skip()
	End Method

	Function _OnAudienceSim_ProgrammeLicencesItemSelected(event:wxEvent)
		FrameMainBase(event.sink).OnAudienceSim_ProgrammeLicencesItemSelected(wxListEvent(event))
	End Function

	Method OnAudienceSim_ProgrammeLicencesItemSelected(event:wxListEvent)
		DebugLog "Please override FrameMain.OnAudienceSim_ProgrammeLicencesItemSelected()"
		event.Skip()
	End Method

	Function _OnAudienceSim_ProgrammeLicencesSize(event:wxEvent)
		FrameMainBase(event.sink).OnAudienceSim_ProgrammeLicencesSize(wxSizeEvent(event))
	End Function

	Method OnAudienceSim_ProgrammeLicencesSize(event:wxSizeEvent)
		DebugLog "Please override FrameMain.OnAudienceSim_ProgrammeLicencesSize()"
		event.Skip()
	End Method

	Function _onAudienceSim_ChannelProgrammeClick(event:wxEvent)
		FrameMainBase(event.sink).onAudienceSim_ChannelProgrammeClick(wxCommandEvent(event))
	End Function

	Method onAudienceSim_ChannelProgrammeClick(event:wxCommandEvent)
		DebugLog "Please override FrameMain.onAudienceSim_ChannelProgrammeClick()"
		event.Skip()
	End Method

	Function _onAudienceSim_RemoveChannelProgrammeClick(event:wxEvent)
		FrameMainBase(event.sink).onAudienceSim_RemoveChannelProgrammeClick(wxCommandEvent(event))
	End Function

	Method onAudienceSim_RemoveChannelProgrammeClick(event:wxCommandEvent)
		DebugLog "Please override FrameMain.onAudienceSim_RemoveChannelProgrammeClick()"
		event.Skip()
	End Method

	Function _OnAudienceSimChangeSettings(event:wxEvent)
		FrameMainBase(event.sink).OnAudienceSimChangeSettings(wxCommandEvent(event))
	End Function

	Method OnAudienceSimChangeSettings(event:wxCommandEvent)
		DebugLog "Please override FrameMain.OnAudienceSimChangeSettings()"
		event.Skip()
	End Method

	Function _OnAudienceSim_AudiencesItemSelected(event:wxEvent)
		FrameMainBase(event.sink).OnAudienceSim_AudiencesItemSelected(wxListEvent(event))
	End Function

	Method OnAudienceSim_AudiencesItemSelected(event:wxListEvent)
		DebugLog "Please override FrameMain.OnAudienceSim_AudiencesItemSelected()"
		event.Skip()
	End Method

End Type

Type DialogSelectCastBase Extends wxDialog

	Field m_staticText7:wxStaticText
	Field m_listCtrl_SelectCastPersonList:wxListCtrl
	Field m_staticText71:wxStaticText
	Field m_choice_job:wxChoice
	Field m_buttonAddSelectedPerson:wxButton


	Method Create:DialogSelectCastBase(parent:wxWindow = Null, id:Int = wxID_ANY, title:String = "Cast", x:Int = -1, y:Int = -1, w:Int = 600, h:Int = 300, style:Int = wxDEFAULT_DIALOG_STYLE)
		return DialogSelectCastBase(Super.Create_(parent, id, title, x, y, w, h, style))
	End Method

	Method OnInit()

		Local bSizer10:wxBoxSizer
		bSizer10 = new wxBoxSizer.Create(wxVERTICAL)

		m_staticText7 = new wxStaticText.Create(Self, wxID_ANY, _("Person"))
		m_staticText7.Wrap(-1)
		bSizer10.Add(m_staticText7, 0, wxTOP|wxRIGHT|wxLEFT, 5)

		m_listCtrl_SelectCastPersonList = new wxListCtrl.Create(Self, wxID_ANY,,,,, wxLC_REPORT|wxLC_SINGLE_SEL)
		bSizer10.Add(m_listCtrl_SelectCastPersonList, 1, wxALL|wxEXPAND, 5)

		m_staticText71 = new wxStaticText.Create(Self, wxID_ANY, _("Job"))
		m_staticText71.Wrap(-1)
		bSizer10.Add(m_staticText71, 0, wxTOP|wxRIGHT|wxLEFT, 5)

		Local m_choice_jobChoices:String[] = [ _("Actor"), _("Director"), _("Writer"), _("Singer"), _("Host") ]
		m_choice_job = new wxChoice.Create(Self, wxID_ANY, m_choice_jobChoices)
		m_choice_job.SetSelection(0)

		bSizer10.Add(m_choice_job, 0, wxALL|wxEXPAND, 5)

		m_buttonAddSelectedPerson = new wxButton.Create(Self, wxID_ANY, _("Add"))
		bSizer10.Add(m_buttonAddSelectedPerson, 0, wxALL|wxEXPAND, 5)

		SetSizer(bSizer10)
		Layout()
		Center(wxBOTH)

		m_listCtrl_SelectCastPersonList.ConnectAny(wxEVT_COMMAND_LIST_COL_CLICK, _OnListColClick, Null, Self)
		m_buttonAddSelectedPerson.ConnectAny(wxEVT_COMMAND_BUTTON_CLICKED, _OnSelectCast, Null, Self)
	End Method

	Function _OnListColClick(event:wxEvent)
		DialogSelectCastBase(event.sink).OnListColClick(wxListEvent(event))
	End Function

	Method OnListColClick(event:wxListEvent)
		DebugLog "Please override DialogSelectCast.OnListColClick()"
		event.Skip()
	End Method

	Function _OnSelectCast(event:wxEvent)
		DialogSelectCastBase(event.sink).OnSelectCast(wxCommandEvent(event))
	End Function

	Method OnSelectCast(event:wxCommandEvent)
		DebugLog "Please override DialogSelectCast.OnSelectCast()"
		event.Skip()
	End Method

End Type

