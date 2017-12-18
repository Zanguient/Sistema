object Frm_PDV: TFrm_PDV
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PDV'
  ClientHeight = 575
  ClientWidth = 869
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 656
    Top = 208
    Width = 79
    Height = 13
    Caption = 'TESTE_INTEGER'
  end
  object pnlCliente: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 5
    Width = 869
    Height = 30
    Margins.Left = 0
    Margins.Top = 5
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object pnlOperador: TPanel
      Left = 0
      Top = 0
      Width = 472
      Height = 30
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'pnlOperador'
      TabOrder = 0
      object lbNomeOperador: TLabel
        Left = 0
        Top = 0
        Width = 80
        Height = 30
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Operador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object btnGetOperador: TSpeedButton
        Left = 426
        Top = 0
        Width = 23
        Height = 30
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alRight
        Flat = True
        OnClick = btnGetOperadorClick
        ExplicitLeft = 311
        ExplicitTop = -2
      end
      object btnCadOperador: TSpeedButton
        Tag = 1
        Left = 449
        Top = 0
        Width = 23
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alRight
        Flat = True
        ExplicitLeft = 312
      end
      object EdtCodOperador: TEdit
        Left = 80
        Top = 0
        Width = 70
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = EdtCodOperadorExit
        OnKeyDown = EdtCodOperadorKeyDown
        OnKeyPress = EdtCodOperadorKeyPress
        ExplicitHeight = 28
      end
      object EdtNomeOperador: TEdit
        Left = 150
        Top = 0
        Width = 276
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        TabStop = False
        Align = alClient
        Color = 14079702
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        ExplicitHeight = 28
      end
    end
    object pnlDetPessoa: TPanel
      Left = 472
      Top = 0
      Width = 397
      Height = 30
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnlDetPessoa'
      TabOrder = 1
      object lbNomeCliente: TLabel
        AlignWithMargins = True
        Left = 15
        Top = 0
        Width = 47
        Height = 30
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taCenter
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 18
      end
      object btnCadCliente: TSpeedButton
        Tag = 1
        Left = 374
        Top = 0
        Width = 23
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 15
        Margins.Bottom = 1
        Align = alRight
        Flat = True
        OnClick = btnCadClienteClick
        ExplicitLeft = 515
      end
      object btnGetCliente: TSpeedButton
        Left = 351
        Top = 0
        Width = 23
        Height = 30
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alRight
        Flat = True
        OnClick = btnGetClienteClick
        ExplicitLeft = 492
      end
      object EdtCodCliente: TEdit
        Tag = 1
        Left = 62
        Top = 0
        Width = 70
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = EdtCodClienteExit
        OnKeyDown = EdtCodClienteKeyDown
        OnKeyPress = EdtCodOperadorKeyPress
        ExplicitHeight = 28
      end
      object edtNomeCliente: TEdit
        Left = 132
        Top = 0
        Width = 219
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        TabStop = False
        Align = alClient
        Color = 14079702
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        ExplicitHeight = 28
      end
    end
  end
  object dbgPDV: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 98
    Width = 863
    Height = 334
    TabStop = False
    Align = alClient
    Color = 16776176
    DataSource = DsPDV
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Title.Alignment = taRightJustify
        Title.Caption = 'C'#243'digo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Caption = 'Produto'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRVENDA_PRODUTO'
        Title.Caption = 'Valor '#205'tem'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTQ_PRODUTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'UND_PRODUTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'QNT_PRODUTO'
        Title.Caption = 'Qntd. '#205'tem'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBTOTAL_PRODUTO'
        Title.Caption = 'SubTotal'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_ICMS_ESTADO'
        Title.Caption = 'Aliq. ICMS'
        Width = 60
        Visible = True
      end>
  end
  object pnlProd: TPanel
    Left = 0
    Top = 35
    Width = 869
    Height = 30
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lbEstoque: TLabel
      AlignWithMargins = True
      Left = 751
      Top = 0
      Width = 115
      Height = 30
      Margins.Left = 15
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Estq: 1.000,00 Unds'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 16
    end
    object BtnCadProd: TSpeedButton
      Left = 713
      Top = 0
      Width = 23
      Height = 30
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alRight
      Flat = True
      OnClick = BtnCadProdClick
      ExplicitLeft = 716
    end
    object pnlMyProd: TPanel
      Left = 0
      Top = 0
      Width = 713
      Height = 30
      Align = alClient
      AutoSize = True
      BevelOuter = bvNone
      Caption = 'pnlMyProd'
      TabOrder = 0
      object btnGetProduto: TSpeedButton
        Left = 690
        Top = 0
        Width = 23
        Height = 30
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alRight
        Flat = True
        OnClick = btnGetProdutoClick
        ExplicitLeft = 693
      end
      object lbNomeProduto: TLabel
        Left = 0
        Top = 0
        Width = 80
        Height = 30
        Margins.Left = 25
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Label2: TLabel
        Left = 168
        Top = 8
        Width = 49
        Height = 13
        Caption = 'PRODUTO'
      end
      object edtNomeProduto: TEdit
        Left = 150
        Top = 0
        Width = 540
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        TabStop = False
        Align = alClient
        Color = 14079702
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        ExplicitHeight = 28
      end
      object EdtCodProduto: TEdit
        Tag = 2
        Left = 80
        Top = 0
        Width = 70
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = EdtCodProdutoExit
        OnKeyDown = EdtCodProdutoKeyDown
        OnKeyPress = EdtCodOperadorKeyPress
        ExplicitHeight = 28
      end
    end
  end
  object PnlDetalheProduto: TPanel
    Left = 0
    Top = 65
    Width = 869
    Height = 30
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object pnlDesc: TPanel
      Left = 546
      Top = 0
      Width = 182
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 3
      object lbDesc: TLabel
        Left = 0
        Top = 0
        Width = 100
        Height = 30
        Margins.Left = 15
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Desconto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object EdtDesc: TEdit
        Tag = 2
        Left = 100
        Top = 0
        Width = 82
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = EdtCodProdutoKeyDown
        OnKeyPress = EdtCodOperadorKeyPress
        ExplicitHeight = 28
      end
    end
    object pnlQntd: TPanel
      Left = 0
      Top = 0
      Width = 182
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object lbQntd: TLabel
        Left = 0
        Top = 0
        Width = 80
        Height = 30
        Margins.Left = 50
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qnt:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object EdtQnt: TEdit
        Tag = 2
        Left = 80
        Top = 0
        Width = 102
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = EdtQntExit
        OnKeyDown = EdtCodProdutoKeyDown
        OnKeyPress = EdtCodOperadorKeyPress
        ExplicitHeight = 28
      end
    end
    object pnlSubtotal: TPanel
      Left = 364
      Top = 0
      Width = 182
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object lbSubtot: TLabel
        Left = 0
        Top = 0
        Width = 90
        Height = 30
        Margins.Left = 15
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SubTotal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object EdtSubtotal: TEdit
        Tag = 2
        Left = 90
        Top = 0
        Width = 92
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = EdtSubtotalExit
        OnKeyDown = EdtCodProdutoKeyDown
        OnKeyPress = EdtCodOperadorKeyPress
        ExplicitHeight = 28
      end
    end
    object pnlVlr: TPanel
      Left = 182
      Top = 0
      Width = 182
      Height = 30
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object lbVlr: TLabel
        Left = 0
        Top = 0
        Width = 60
        Height = 30
        Margins.Left = 15
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object EdtVlr: TEdit
        Tag = 2
        Left = 60
        Top = 0
        Width = 122
        Height = 30
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = EdtVlrExit
        OnKeyDown = EdtCodProdutoKeyDown
        OnKeyPress = EdtCodOperadorKeyPress
        ExplicitHeight = 28
      end
    end
  end
  object pnlDetVenda: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 435
    Width = 859
    Height = 80
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alBottom
    TabOrder = 4
    object Shape1: TShape
      AlignWithMargins = True
      Left = 244
      Top = 4
      Width = 1
      Height = 72
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      ExplicitTop = 1
      ExplicitHeight = 60
    end
    object PnSTotal: TPanel
      AlignWithMargins = True
      Left = 248
      Top = 4
      Width = 343
      Height = 72
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object LbTotal: TLabel
        AlignWithMargins = True
        Left = 173
        Top = 0
        Width = 63
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taCenter
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -28
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 34
      end
      object lbTxtTotal: TLabel
        AlignWithMargins = True
        Left = 15
        Top = 0
        Width = 101
        Height = 50
        Margins.Left = 15
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taCenter
        Caption = 'TOTAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -28
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 34
      end
      object LbSymb: TLabel
        AlignWithMargins = True
        Left = 132
        Top = 0
        Width = 38
        Height = 50
        Margins.Left = 13
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taCenter
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -28
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 34
      end
      object Panel8: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 50
        Width = 328
        Height = 22
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object LbSubTotal: TLabel
          Left = 60
          Top = 0
          Width = 51
          Height = 22
          Margins.Left = 15
          Align = alLeft
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 18
        end
        object lbTxtSubtotal: TLabel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 57
          Height = 22
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Subtotal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 18
        end
      end
    end
    object pnlTrib: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 237
      Height = 72
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Panel11: TPanel
        Left = 109
        Top = 2
        Width = 126
        Height = 24
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 0
        object Label13: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 0
          Width = 49
          Height = 24
          Margins.Left = 15
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          Alignment = taCenter
          Caption = 'Outros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 16
        end
        object Label17: TLabel
          AlignWithMargins = True
          Left = 67
          Top = 0
          Width = 44
          Height = 24
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Alignment = taCenter
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 16
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 2
        Width = 121
        Height = 25
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 1
        object Label12: TLabel
          AlignWithMargins = True
          Left = 55
          Top = 0
          Width = 44
          Height = 25
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Alignment = taCenter
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 16
        end
        object Label15: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 0
          Width = 37
          Height = 25
          Margins.Left = 15
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          Alignment = taCenter
          Caption = 'ICMS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 16
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 22
        Width = 101
        Height = 24
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 2
        object Label14: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 0
          Width = 20
          Height = 24
          Margins.Left = 15
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          Alignment = taCenter
          Caption = 'ST:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 16
        end
        object Label16: TLabel
          AlignWithMargins = True
          Left = 38
          Top = 0
          Width = 44
          Height = 24
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Alignment = taCenter
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 16
        end
      end
      object Panel14: TPanel
        Left = 93
        Top = 22
        Width = 142
        Height = 24
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 3
        object Label18: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 0
          Width = 66
          Height = 24
          Margins.Left = 15
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          Alignment = taCenter
          Caption = 'Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 16
        end
        object Label19: TLabel
          AlignWithMargins = True
          Left = 84
          Top = 0
          Width = 44
          Height = 24
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Alignment = taCenter
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 16
        end
      end
    end
    object PnOutros: TPanel
      AlignWithMargins = True
      Left = 718
      Top = 4
      Width = 137
      Height = 70
      Margins.Bottom = 5
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object lbTxtDeletar: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 137
        Height = 16
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Alignment = taCenter
        Caption = 'Deletar '#237'tem <Del>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 110
      end
      object btnDelItem: TBitBtn
        Left = 0
        Top = 16
        Width = 137
        Height = 20
        Align = alTop
        Caption = 'Deletar'
        TabOrder = 0
        TabStop = False
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 37
        Width = 137
        Height = 21
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lbQntItens: TLabel
          AlignWithMargins = True
          Left = 101
          Top = 0
          Width = 33
          Height = 21
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = '0 Und'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 16
        end
        object lbTxtItens: TLabel
          AlignWithMargins = True
          Left = 24
          Top = 0
          Width = 74
          Height = 21
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Qnt. '#205'tens: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 16
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 545
    Width = 869
    Height = 30
    Margins.Left = 5
    Margins.Top = 6
    Margins.Right = 5
    Margins.Bottom = 10
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object Panel1: TPanel
      Left = 366
      Top = -5
      Width = 152
      Height = 41
      Align = alCustom
      AutoSize = True
      Caption = 'Panel1'
      TabOrder = 0
      object BitBtn2: TBitBtn
        Left = -49
        Top = 1
        Width = 100
        Height = 39
        Align = alRight
        Caption = 'BitBtn1'
        TabOrder = 0
      end
      object BitBtn1: TBitBtn
        Left = 51
        Top = 1
        Width = 100
        Height = 39
        Align = alRight
        Caption = 'BitBtn1'
        TabOrder = 1
      end
    end
  end
  object pnlPgmt: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 515
    Width = 859
    Height = 30
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alBottom
    TabOrder = 5
    object pnlFrmPgmt: TPanel
      Left = 1
      Top = 1
      Width = 391
      Height = 28
      Margins.Left = 0
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      Padding.Right = 5
      TabOrder = 0
      object btnCadFrmPgmt: TSpeedButton
        Tag = 1
        Left = 362
        Top = 1
        Width = 23
        Height = 26
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 15
        Margins.Bottom = 1
        Align = alRight
        Flat = True
        ExplicitLeft = 378
        ExplicitTop = 4
        ExplicitHeight = 25
      end
      object lbTxtFrmPgmt: TLabel
        AlignWithMargins = True
        Left = 16
        Top = 1
        Width = 147
        Height = 26
        Margins.Left = 15
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taCenter
        Caption = 'Forma de Pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 18
      end
      object btnGetFrmPgmt: TSpeedButton
        Left = 339
        Top = 1
        Width = 23
        Height = 26
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alRight
        Flat = True
        ExplicitLeft = 327
        ExplicitTop = -3
        ExplicitHeight = 25
      end
      object edtNomeFrmPgmt: TEdit
        AlignWithMargins = True
        Left = 199
        Top = 2
        Width = 140
        Height = 24
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        BevelOuter = bvNone
        Color = 14079702
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 25
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        ExplicitHeight = 26
      end
      object edtCodFrmPgmt: TEdit
        AlignWithMargins = True
        Left = 166
        Top = 2
        Width = 33
        Height = 24
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 26
      end
    end
    object pnlCondPgmt: TPanel
      Left = 392
      Top = 1
      Width = 466
      Height = 28
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Padding.Left = 7
      TabOrder = 1
      object btnCadCondPgmt: TSpeedButton
        Tag = 1
        Left = 442
        Top = 1
        Width = 23
        Height = 26
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 15
        Margins.Bottom = 1
        Align = alRight
        Flat = True
        ExplicitLeft = 185
        ExplicitTop = -7
        ExplicitHeight = 25
      end
      object lbTxtCondPgmt: TLabel
        Left = 8
        Top = 1
        Width = 163
        Height = 26
        Margins.Left = 15
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taCenter
        Caption = 'Condi'#231#227'o de Pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 18
      end
      object btnGetCondPgmt: TSpeedButton
        Left = 419
        Top = 1
        Width = 23
        Height = 26
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alRight
        Flat = True
        ExplicitLeft = 349
        ExplicitTop = -3
        ExplicitHeight = 25
      end
      object edtNomeCondPgmt: TEdit
        AlignWithMargins = True
        Left = 204
        Top = 2
        Width = 215
        Height = 24
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        BevelOuter = bvNone
        Color = 14079702
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 25
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        ExplicitHeight = 26
      end
      object edtCondPgmt: TEdit
        AlignWithMargins = True
        Left = 171
        Top = 2
        Width = 33
        Height = 24
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitHeight = 26
      end
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 98
    Width = 863
    Height = 334
    TabStop = False
    Align = alClient
    Color = 16776176
    DataSource = DsPDV
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    PopupMenu = MnItems
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NRO_ITEM'
        Title.Caption = 'N'#176
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Title.Alignment = taRightJustify
        Title.Caption = 'C'#243'digo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Caption = 'Produto'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRVENDA_PRODUTO'
        Title.Caption = 'Valor '#205'tem'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_PRODUTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'UND_PRODUTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'QNTD_VENDA'
        Title.Caption = 'Qntd.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBTOTAL'
        Title.Caption = 'SubTotal'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST_PRODUTO'
        Title.Caption = 'CST'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQ_ICMS'
        Title.Caption = 'Aliq. ICMS'
        Width = 60
        Visible = True
      end>
  end
  object DsPDV: TDataSource
    DataSet = CdsPDV
    Left = 739
    Top = 240
  end
  object MenuPDV: TPopupMenu
    Left = 699
    Top = 240
    object BtnAbrirCadMenu: TMenuItem
      Caption = 'Abrir Cadastro Produto'
    end
    object Deletartem1: TMenuItem
      Caption = 'Deletar '#205'tem'
    end
    object AlterarQuantidade1: TMenuItem
      Caption = 'Alterar Quantidade'
    end
    object MudarPreoUnitrio1: TMenuItem
      Caption = 'Alterar Valor Unit'#225'rio'
    end
  end
  object MnItems: TPopupMenu
    Left = 736
    Top = 192
    object Deletar1: TMenuItem
      Caption = 'Deletar '#205'tem'
      OnClick = Deletar1Click
    end
  end
  object CdsPDV: TClientDataSet
    PersistDataPacket.Data = {
      220100009619E0BD01000000180000000A00000000000300000022010B434F44
      5F50524F4455544F04000100000000000C4E4F4D455F50524F4455544F010049
      00000001000557494454480200020014000F505256454E44415F50524F445554
      4F080004000000010007535542545950450200490006004D6F6E6579000F4553
      544F5155455F50524F4455544F08000400000000000B554E445F50524F445554
      4F01004900000001000557494454480200020014000B4353545F50524F445554
      4F040001000000000009414C49515F49434D5308000400000000000A514E5444
      5F56454E4441080004000000000008535542544F54414C080004000000010007
      535542545950450200490006004D6F6E657900084E524F5F4954454D04000100
      000000000000}
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 664
    Top = 184
    object CdsPDVCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object CdsPDVNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
    end
    object CdsPDVPRVENDA_PRODUTO: TCurrencyField
      FieldName = 'PRVENDA_PRODUTO'
    end
    object CdsPDVESTOQUE_PRODUTO: TFloatField
      FieldName = 'ESTOQUE_PRODUTO'
    end
    object CdsPDVUND_PRODUTO: TStringField
      FieldName = 'UND_PRODUTO'
    end
    object CdsPDVCST_PRODUTO: TIntegerField
      FieldName = 'CST_PRODUTO'
    end
    object CdsPDVALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object CdsPDVQNTD_VENDA: TFloatField
      FieldName = 'QNTD_VENDA'
    end
    object CdsPDVSUBTOTAL: TCurrencyField
      FieldName = 'SUBTOTAL'
    end
    object CdsPDVNRO_ITEM: TIntegerField
      FieldName = 'NRO_ITEM'
    end
    object CdsPDVTOTAL: TAggregateField
      FieldName = 'TOTAL'
      Active = True
      DisplayName = ''
      Expression = 'SUM(SUBTOTAL)'
    end
  end
end
