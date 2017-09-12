object FormBuscarCid: TFormBuscarCid
  Left = 0
  Top = 0
  Caption = 'Buscar Cidade'
  ClientHeight = 408
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object SbBuscar: TSpeedButton
    Left = 434
    Top = 55
    Width = 23
    Height = 22
    OnClick = SbBuscarClick
  end
  object SbListar: TSpeedButton
    Left = 459
    Top = 55
    Width = 22
    Height = 22
    OnClick = SbListarClick
  end
  object Label6: TLabel
    Left = 15
    Top = 84
    Width = 144
    Height = 16
    Caption = 'Registros Encotrados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbRegistros: TLabel
    Left = 165
    Top = 84
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid: TDBGrid
    Left = 8
    Top = 112
    Width = 474
    Height = 242
    TabStop = False
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridDblClick
    OnKeyDown = DBGridKeyDown
  end
  object EdtBuscar: TEdit
    Left = 8
    Top = 57
    Width = 420
    Height = 21
    TabOrder = 1
    OnExit = EdtBuscarExit
    OnKeyPress = EdtBuscarKeyPress
  end
  object GbRbuttons: TGroupBox
    Left = 8
    Top = 8
    Width = 474
    Height = 41
    TabOrder = 0
    TabStop = True
    object RbCod: TRadioButton
      Left = 16
      Top = 12
      Width = 113
      Height = 17
      Caption = 'Buscar por C'#243'digo'
      TabOrder = 0
    end
    object RbNome: TRadioButton
      Left = 203
      Top = 12
      Width = 108
      Height = 17
      Caption = 'Buscar por Nome'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object RbUf: TRadioButton
      Left = 371
      Top = 12
      Width = 90
      Height = 17
      Caption = 'Buscar por UF'
      TabOrder = 2
      TabStop = True
    end
  end
  object BtnSelecionar: TButton
    Left = 141
    Top = 375
    Width = 90
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 3
    WordWrap = True
    OnClick = BtnSelecionarClick
  end
  object BtnCancelar: TButton
    Left = 237
    Top = 376
    Width = 90
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BtnCancelarClick
  end
  object DsBuscarCid: TDataSource
    Enabled = False
    Left = 424
    Top = 144
  end
end
