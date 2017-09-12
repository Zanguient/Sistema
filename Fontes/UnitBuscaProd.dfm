object FormBuscaProd: TFormBuscaProd
  Left = 0
  Top = 0
  Caption = 'Busca de Produtos'
  ClientHeight = 523
  ClientWidth = 692
  Color = clBtnFace
  Constraints.MaxHeight = 800
  Constraints.MaxWidth = 700
  Constraints.MinHeight = 550
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridProd: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 97
    Width = 686
    Height = 316
    Align = alClient
    DataSource = DsGridProd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridProdDrawColumnCell
    OnDblClick = DBGridProdDblClick
    OnKeyDown = DBGridProdKeyDown
  end
  object GbRbuttons: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 686
    Height = 41
    Margins.Bottom = 0
    Align = alTop
    TabOrder = 0
    TabStop = True
    object Label9: TLabel
      Left = 530
      Top = 12
      Width = 30
      Height = 16
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RbCod: TRadioButton
      Left = 16
      Top = 15
      Width = 64
      Height = 17
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RbCodClick
    end
    object RbProduto: TRadioButton
      Left = 99
      Top = 15
      Width = 105
      Height = 17
      Caption = 'Nome Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RbProdutoClick
    end
    object RbCodBarra: TRadioButton
      Left = 224
      Top = 15
      Width = 89
      Height = 17
      Caption = 'C'#243'd. Barras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = RbCodBarraClick
    end
    object CbInativos: TCheckBox
      Left = 341
      Top = 15
      Width = 90
      Height = 17
      Caption = 'C/ Inativos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = CbInativosClick
    end
    object ComboBox1: TComboBox
      Left = 566
      Top = 11
      Width = 99
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'Normal'
      Items.Strings = (
        'Normal')
    end
  end
  object GbData: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 416
    Width = 686
    Height = 75
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alBottom
    TabOrder = 4
    object LbNomeCPF: TLabel
      Left = 16
      Top = 16
      Width = 64
      Height = 16
      Caption = 'PRODUTO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 352
      Top = 16
      Width = 36
      Height = 16
      Caption = 'ESTQ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 499
      Top = 16
      Width = 46
      Height = 16
      Caption = 'PRE'#199'O:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 427
      Top = 46
      Width = 37
      Height = 16
      Caption = 'ICMS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 566
      Top = 43
      Width = 20
      Height = 16
      Caption = 'ST:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 46
      Width = 30
      Height = 16
      Caption = 'EAN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 232
      Top = 46
      Width = 53
      Height = 16
      Caption = 'STATUS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtProduto: TEdit
      Left = 86
      Top = 13
      Width = 250
      Height = 24
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtEstq: TEdit
      Left = 393
      Top = 13
      Width = 88
      Height = 24
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtICMS: TEdit
      Left = 470
      Top = 43
      Width = 75
      Height = 24
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtST: TEdit
      Left = 592
      Top = 43
      Width = 73
      Height = 24
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtCodBarra: TEdit
      Left = 52
      Top = 43
      Width = 160
      Height = 24
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edtStatus: TEdit
      Left = 291
      Top = 43
      Width = 115
      Height = 24
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 692
    Height = 30
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    TabStop = True
    object SbBuscar: TSpeedButton
      AlignWithMargins = True
      Left = 620
      Top = 3
      Width = 23
      Height = 24
      Margins.Left = 0
      Align = alLeft
      OnClick = SbBuscarClick
      ExplicitLeft = 624
      ExplicitTop = 12
      ExplicitHeight = 22
    end
    object EdtBuscar: TEdit
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 614
      Height = 24
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EdtBuscarKeyPress
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 74
    Width = 692
    Height = 20
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object Label6: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 1
      Width = 144
      Height = 16
      Margins.Left = 5
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Registros Encotrados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbRegistros: TLabel
      AlignWithMargins = True
      Left = 152
      Top = 1
      Width = 4
      Height = 16
      Margins.Top = 1
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 491
    Width = 692
    Height = 32
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Button2: TButton
      AlignWithMargins = True
      Left = 259
      Top = 3
      Width = 90
      Height = 26
      Margins.Left = 250
      Margins.Right = 0
      Align = alRight
      Caption = 'Selecionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnClick = Button2Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 352
      Top = 3
      Width = 90
      Height = 26
      Margins.Right = 250
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object DsGridProd: TDataSource
    Enabled = False
    OnDataChange = DsGridProdDataChange
    Left = 608
    Top = 104
  end
end