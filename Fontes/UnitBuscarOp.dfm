object FormBuscarOp: TFormBuscarOp
  Left = 0
  Top = 0
  Caption = 'Buscar Operador'
  ClientHeight = 399
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SbBuscar: TSpeedButton
    Left = 392
    Top = 56
    Width = 23
    Height = 22
    OnClick = SbBuscarClick
  end
  object SbListar: TSpeedButton
    Left = 417
    Top = 56
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
    Width = 431
    Height = 242
    TabStop = False
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
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
    Width = 378
    Height = 21
    MaxLength = 30
    TabOrder = 1
    OnKeyPress = EdtBuscarKeyPress
  end
  object GbRbuttons: TGroupBox
    Left = 8
    Top = 8
    Width = 431
    Height = 41
    TabOrder = 2
    TabStop = True
    object RbCod: TRadioButton
      Left = 24
      Top = 12
      Width = 113
      Height = 17
      Caption = 'Buscar por C'#243'digo'
      TabOrder = 0
    end
    object RbNome: TRadioButton
      Left = 170
      Top = 12
      Width = 108
      Height = 17
      Caption = 'Buscar por Nome'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  object BtnSelecionar: TButton
    Left = 125
    Top = 366
    Width = 90
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 3
    WordWrap = True
    OnClick = BtnSelecionarClick
  end
  object BtnCancelar: TButton
    Left = 221
    Top = 367
    Width = 90
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BtnCancelarClick
  end
  object DsBuscarOp: TDataSource
    Enabled = False
    Left = 256
    Top = 144
  end
end
