object Frm_BuscaProduto: TFrm_BuscaProduto
  Left = 0
  Top = 0
  Caption = 'Busca Produtos'
  ClientHeight = 477
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LbTxtRegistros: TLabel
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
    Width = 64
    Height = 16
    Caption = '0 Registros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DbgBuscaProduto: TDBGrid
    Left = 8
    Top = 112
    Width = 667
    Height = 242
    DataSource = DsBuscaProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
    OnDblClick = DbgBuscaProdutoDblClick
    OnKeyDown = DbgBuscaProdutoKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Title.Alignment = taRightJustify
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Caption = 'Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 330
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_PRODUTO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Estoque'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'SUPERAB_UND'
        Title.Alignment = taRightJustify
        Title.Caption = 'Und'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_PRODUTO'
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end>
  end
  object EdtBusca: TEdit
    Left = 8
    Top = 56
    Width = 636
    Height = 21
    TabOrder = 0
    OnKeyPress = EdtBuscaKeyPress
  end
  object gbFiltro: TGroupBox
    Left = 8
    Top = 8
    Width = 667
    Height = 41
    TabOrder = 6
    object RbCod: TRadioButton
      Left = 16
      Top = 15
      Width = 113
      Height = 17
      Caption = 'Buscar por C'#243'digo'
      TabOrder = 0
      WordWrap = True
    end
    object RbCodBarras: TRadioButton
      Left = 163
      Top = 15
      Width = 142
      Height = 17
      Caption = 'Buscar por C'#243'd. Barras'
      TabOrder = 1
      WordWrap = True
    end
    object RbProduto: TRadioButton
      Left = 335
      Top = 15
      Width = 113
      Height = 17
      Caption = 'Buscar por Produto'
      TabOrder = 2
      WordWrap = True
    end
  end
  object gbDados: TGroupBox
    Left = 8
    Top = 360
    Width = 667
    Height = 81
    TabOrder = 3
    object LbTxtEndereco: TLabel
      Left = 335
      Top = 20
      Width = 27
      Height = 14
      Caption = 'CST:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LbTxtBairro: TLabel
      Left = 517
      Top = 49
      Width = 33
      Height = 14
      Caption = '%ST:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LbTxtIeRg: TLabel
      Left = 225
      Top = 50
      Width = 50
      Height = 14
      Caption = '%ICMS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LbTxtCnpjCpf: TLabel
      Left = 36
      Top = 16
      Width = 91
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#211'D. BARRAS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 375
      Top = 49
      Width = 47
      Height = 14
      Caption = '$BC ST:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 63
      Top = 49
      Width = 64
      Height = 14
      Caption = '$BC ICMS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object EdtEndereco: TDBEdit
      Left = 368
      Top = 17
      Width = 259
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'CST'
      DataSource = DsBuscaProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtIeRg: TDBEdit
      Left = 282
      Top = 46
      Width = 75
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'PERC_ICMS_ESTADO_PRODUTO'
      DataSource = DsBuscaProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtBairro: TDBEdit
      Left = 554
      Top = 46
      Width = 73
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'PERCICMSST_PRODUTO'
      DataSource = DsBuscaProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 428
      Top = 46
      Width = 73
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'BASESTCOMPRA_PRODUTO'
      DataSource = DsBuscaProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 133
      Top = 46
      Width = 75
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'BASECALCULO_PRODUTO'
      DataSource = DsBuscaProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 133
      Top = 17
      Width = 185
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'CODBARRA_PRODUTO'
      DataSource = DsBuscaProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object BtnSelecionar: TButton
    Left = 239
    Top = 447
    Width = 90
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 4
    WordWrap = True
    OnClick = BtnSelecionarClick
  end
  object BtnCancelar: TButton
    Left = 335
    Top = 447
    Width = 90
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BtnCancelarClick
  end
  object BtnBusca: TBitBtn
    Left = 652
    Top = 56
    Width = 23
    Height = 22
    TabOrder = 1
    OnClick = BtnBuscaClick
  end
  object QryBuscaProduto: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    P.COD_PRODUTO,'
      '    P.NOME_PRODUTO,'
      '    P.CODBARRA_PRODUTO,'
      '    P.UNIDADE_PRODUTO,'
      '    U.NOME_UND,'
      '    U.SUPERAB_UND,'
      '    P.ESTOQUE_PRODUTO,'
      '    P.PRCOMPRA_PRODUTO,'
      '    P.PRVENDA_PRODUTO,'
      '    P.CST,'
      '    P.BASESTCOMPRA_PRODUTO,'
      '    P.PERCICMSST_PRODUTO,'
      '    P.BASECALCULO_PRODUTO,'
      '    P.PERC_ICMS_ESTADO_PRODUTO,'
      '    P.TIPO_PRODUTO'
      'FROM PRODUTOS P'
      '    LEFT JOIN UNIDADES U ON P.UNIDADE_PRODUTO = U.COD_UND'
      '    LEFT JOIN CLASSES C ON P.CODCLASSE_PRODUTO = C.COD_CLASSE'
      
        '    LEFT JOIN SUBCLASSE SC ON P.CODSUBCLASSE_PRODUTO = SC.COD_SU' +
        'BCLASSE')
    Transaction = dm.Trans
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '    P.COD_PRODUTO,'
      '    P.NOME_PRODUTO,'
      '    P.CODBARRA_PRODUTO,'
      '    P.UNIDADE_PRODUTO,'
      '    U.NOME_UND,'
      '    U.SUPERAB_UND,'
      '    P.ESTOQUE_PRODUTO,'
      '    P.PRCOMPRA_PRODUTO,'
      '    P.PRVENDA_PRODUTO,'
      '    P.CST,'
      '    P.BASESTCOMPRA_PRODUTO,'
      '    P.PERCICMSST_PRODUTO,'
      '    P.BASECALCULO_PRODUTO,'
      '    P.PERC_ICMS_ESTADO_PRODUTO,'
      '    P.TIPO_PRODUTO'
      'FROM PRODUTOS P'
      '    LEFT JOIN UNIDADES U ON P.UNIDADE_PRODUTO = U.COD_UND'
      '    LEFT JOIN CLASSES C ON P.CODCLASSE_PRODUTO = C.COD_CLASSE'
      
        '    LEFT JOIN SUBCLASSE SC ON P.CODSUBCLASSE_PRODUTO = SC.COD_SU' +
        'BCLASSE')
    Left = 368
    Top = 168
    object QryBuscaProdutoCOD_PRODUTO: TFIBIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object QryBuscaProdutoNOME_PRODUTO: TFIBStringField
      FieldName = 'NOME_PRODUTO'
      Size = 60
      EmptyStrToNull = True
    end
    object QryBuscaProdutoCODBARRA_PRODUTO: TFIBStringField
      FieldName = 'CODBARRA_PRODUTO'
      Size = 13
      EmptyStrToNull = True
    end
    object QryBuscaProdutoUNIDADE_PRODUTO: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'UNIDADE_PRODUTO'
    end
    object QryBuscaProdutoNOME_UND: TFIBStringField
      FieldName = 'NOME_UND'
      Size = 30
      EmptyStrToNull = True
    end
    object QryBuscaProdutoSUPERAB_UND: TFIBStringField
      FieldName = 'SUPERAB_UND'
      Size = 3
      EmptyStrToNull = True
    end
    object QryBuscaProdutoESTOQUE_PRODUTO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'ESTOQUE_PRODUTO'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object QryBuscaProdutoPRCOMPRA_PRODUTO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'PRCOMPRA_PRODUTO'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object QryBuscaProdutoPRVENDA_PRODUTO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'PRVENDA_PRODUTO'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object QryBuscaProdutoCST: TFIBSmallIntField
      FieldName = 'CST'
      OnGetText = QryBuscaProdutoCSTGetText
    end
    object QryBuscaProdutoBASESTCOMPRA_PRODUTO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'BASESTCOMPRA_PRODUTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
    object QryBuscaProdutoPERCICMSST_PRODUTO: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'PERCICMSST_PRODUTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object QryBuscaProdutoBASECALCULO_PRODUTO: TFIBFloatField
      FieldName = 'BASECALCULO_PRODUTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.0000'
    end
    object QryBuscaProdutoPERC_ICMS_ESTADO_PRODUTO: TFIBFloatField
      DefaultExpression = '0'
      FieldName = 'PERC_ICMS_ESTADO_PRODUTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object QryBuscaProdutoTIPO_PRODUTO: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'TIPO_PRODUTO'
      OnGetText = QryBuscaProdutoTIPO_PRODUTOGetText
    end
  end
  object DsBuscaProduto: TDataSource
    DataSet = QryBuscaProduto
    Left = 464
    Top = 184
  end
end
