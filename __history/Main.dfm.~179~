object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SPLoader'
  ClientHeight = 489
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gpServer: TGroupBox
    Left = 12
    Top = 12
    Width = 321
    Height = 225
    Caption = #26381#21153#22120#36830#25509#37197#32622
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 31
      Width = 58
      Height = 13
      Caption = #26381#21153#22120'IP'#65306
    end
    object Label2: TLabel
      Left = 24
      Top = 95
      Width = 72
      Height = 13
      Caption = #26381#21153#22120#31471#21475#65306
    end
    object Label5: TLabel
      Left = 136
      Top = 95
      Width = 84
      Height = 13
      Caption = #21516#26102#22312#32447#20154#25968#65306
    end
    object Label6: TLabel
      Left = 24
      Top = 159
      Width = 72
      Height = 13
      Caption = #26381#21153#22120#25551#36848#65306
    end
    object edServerAddress: TEdit
      Left = 24
      Top = 59
      Width = 265
      Height = 21
      TabOrder = 0
    end
    object edServerPort: TEdit
      Left = 24
      Top = 123
      Width = 84
      Height = 21
      TabOrder = 1
    end
    object edMaxPlayers: TEdit
      Left = 136
      Top = 123
      Width = 153
      Height = 21
      TabOrder = 2
    end
    object edServerDescript: TEdit
      Left = 24
      Top = 187
      Width = 265
      Height = 21
      TabOrder = 3
    end
  end
  object gpGame: TGroupBox
    Left = 12
    Top = 248
    Width = 321
    Height = 227
    Caption = #28216#25103#36873#39033
    TabOrder = 1
    object Label3: TLabel
      Left = 32
      Top = 44
      Width = 60
      Height = 13
      Caption = #28216#25103#27169#24335#65306
    end
    object Label4: TLabel
      Left = 32
      Top = 86
      Width = 60
      Height = 13
      Caption = #22256#38590#32423#21035#65306
    end
    object combMode: TComboBox
      Left = 106
      Top = 41
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object combDifficult: TComboBox
      Left = 106
      Top = 83
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 1
    end
    object cboxFriendlyFire: TCheckBox
      Left = 32
      Top = 128
      Width = 97
      Height = 17
      Caption = #21451#20891#20260#23475
      TabOrder = 2
    end
    object cboxFlight: TCheckBox
      Left = 32
      Top = 184
      Width = 153
      Height = 17
      Caption = #39134#34892#27169#24335#65288#38656'mod'#25903#25345#65289
      TabOrder = 3
    end
    object cboxNether: TCheckBox
      Left = 32
      Top = 156
      Width = 97
      Height = 17
      Caption = #24320#21551#19979#30028
      TabOrder = 4
    end
    object cboxAnimals: TCheckBox
      Left = 202
      Top = 156
      Width = 97
      Height = 17
      Caption = #29983#25104#21160#29289
      TabOrder = 5
    end
    object cboxNpcs: TCheckBox
      Left = 202
      Top = 184
      Width = 153
      Height = 17
      Caption = #29983#25104#26449#27665
      TabOrder = 6
    end
    object cboxMonsters: TCheckBox
      Left = 202
      Top = 128
      Width = 97
      Height = 17
      Caption = #29983#25104#24618#29289
      TabOrder = 7
    end
  end
  object gpAdvance: TGroupBox
    Left = 342
    Top = 12
    Width = 315
    Height = 463
    Caption = #39640#32423#36873#39033
    TabOrder = 2
    object Label7: TLabel
      Left = 24
      Top = 31
      Width = 60
      Height = 13
      Caption = #37197#32622#25991#20214#65306
    end
    object Label8: TLabel
      Left = 24
      Top = 95
      Width = 72
      Height = 13
      Caption = #26381#21153#22120#36335#24452#65306
    end
    object btnStart: TButton
      Left = 184
      Top = 407
      Width = 113
      Height = 44
      Caption = #21551#21160
      TabOrder = 0
      OnClick = btnStartClick
    end
    object memoLogContainer: TMemo
      Left = 16
      Top = 197
      Width = 289
      Height = 193
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object edPropertisFile: TEdit
      Left = 24
      Top = 59
      Width = 201
      Height = 21
      TabOrder = 2
    end
    object btnOpenPropertisFile: TButton
      Left = 238
      Top = 53
      Width = 65
      Height = 32
      Caption = #36873#25321
      TabOrder = 3
      OnClick = btnOpenPropertisFileClick
    end
    object btnOpenServerFile: TButton
      Left = 238
      Top = 118
      Width = 65
      Height = 32
      Caption = #25171#24320
      TabOrder = 4
      OnClick = btnOpenServerFileClick
    end
    object edServerFile: TEdit
      Left = 24
      Top = 123
      Width = 201
      Height = 21
      TabOrder = 5
    end
    object btnSave: TButton
      Left = 65
      Top = 407
      Width = 113
      Height = 44
      Caption = #20445#23384#37197#32622
      TabOrder = 6
      OnClick = btnSaveClick
    end
  end
  object OpenDlg: TOpenDialog
    Left = 398
    Top = 164
  end
  object idIPWatcher: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 446
    Top = 164
  end
end
