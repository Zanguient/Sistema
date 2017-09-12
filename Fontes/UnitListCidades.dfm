object FormListCidades: TFormListCidades
  Left = 0
  Top = 0
  Caption = 'Listagem de Cidades'
  ClientHeight = 434
  ClientWidth = 425
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 8
    Top = 370
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
    Left = 158
    Top = 370
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DbGridListCid: TDBGrid
    Left = 8
    Top = 115
    Width = 409
    Height = 249
    TabStop = False
    DataSource = DsListCid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = PMenuListCid
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DbGridListCidDblClick
    OnKeyDown = DbGridListCidKeyDown
  end
  object BtnImprimir: TButton
    Left = 8
    Top = 402
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 3
  end
  object BtnRelatorios: TButton
    Left = 89
    Top = 402
    Width = 75
    Height = 25
    Caption = 'Relat'#243'rios'
    TabOrder = 4
  end
  object BtnAtualizar: TButton
    Left = 122
    Top = 84
    Width = 90
    Height = 25
    Caption = 'Atualizar <F5>'
    TabOrder = 0
    OnClick = BtnAtualizarClick
  end
  object BtnLimpar: TButton
    Left = 218
    Top = 84
    Width = 90
    Height = 25
    Caption = 'Limpar'
    ImageIndex = 3
    ImageMargins.Right = -10
    TabOrder = 1
    OnClick = BtnLimparClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 409
    Height = 57
    TabOrder = 6
    object SbBuscarCid: TSpeedButton
      Left = 221
      Top = 15
      Width = 23
      Height = 22
      OnClick = SbBuscarCidClick
    end
    object Label1: TLabel
      Left = 11
      Top = 19
      Width = 73
      Height = 13
      Caption = 'C'#243'digo Cidade:'
    end
    object Label2: TLabel
      Left = 274
      Top = 19
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object EdtCodCid: TEdit
      Left = 90
      Top = 16
      Width = 125
      Height = 21
      TabOrder = 0
      OnKeyPress = EdtCodCidKeyPress
      OnKeyUp = EdtCodCidKeyUp
    end
    object EdtUf: TEdit
      Left = 297
      Top = 16
      Width = 36
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 2
      TabOrder = 1
      OnKeyPress = EdtUfKeyPress
    end
  end
  object BtnCancelar: TButton
    Left = 342
    Top = 402
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BtnCancelarClick
  end
  object PMenuListCid: TPopupMenu
    Left = 368
    Top = 152
    object AbrirCadastro1: TMenuItem
      Caption = 'Abrir Cadastro'
      OnClick = AbrirCadastro1Click
    end
    object SelecionarLinha1: TMenuItem
      Caption = 'Selecionar'
    end
    object SelecionarTodos1: TMenuItem
      Caption = 'Selecionar Todos'
    end
  end
  object DsListCid: TDataSource
    Enabled = False
    Left = 368
    Top = 224
  end
end
