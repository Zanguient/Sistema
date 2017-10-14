object FormBuscador: TFormBuscador
  Left = 0
  Top = 0
  Caption = 'Buscar Cliente'
  ClientHeight = 479
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
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
  object DbgBuscaCliente: TDBGrid
    Left = 8
    Top = 112
    Width = 667
    Height = 242
    DataSource = DsBuscaCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DbgBuscaClienteDblClick
    OnKeyDown = DbgBuscaClienteKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_CLIENTE'
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
        FieldName = 'NOME_CLIENTE'
        Title.Caption = 'Cliente'
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
        FieldName = 'NOME_CIDADE'
        Title.Caption = 'Cidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 190
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
    TabOrder = 4
    object RbCod: TRadioButton
      Left = 16
      Top = 15
      Width = 113
      Height = 17
      Caption = 'Buscar por C'#243'digo'
      TabOrder = 0
      WordWrap = True
    end
    object RbCidade: TRadioButton
      Left = 163
      Top = 15
      Width = 108
      Height = 17
      Caption = 'Buscar por Cidade'
      TabOrder = 1
      WordWrap = True
    end
    object RbNomeCliente: TRadioButton
      Left = 311
      Top = 15
      Width = 113
      Height = 17
      Caption = 'Buscar por Cliente'
      TabOrder = 2
      WordWrap = True
    end
  end
  object gbDados: TGroupBox
    Left = 8
    Top = 360
    Width = 667
    Height = 81
    TabOrder = 5
    object LbTxtEndereco: TLabel
      Left = 16
      Top = 44
      Width = 68
      Height = 14
      Caption = 'ENDERE'#199'O:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LbTxtBairro: TLabel
      Left = 400
      Top = 45
      Width = 53
      Height = 14
      Caption = 'BAIRRO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LbTxtIeRg: TLabel
      Left = 228
      Top = 16
      Width = 16
      Height = 14
      Caption = 'IE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LbTxtCnpjCpf: TLabel
      Left = 16
      Top = 16
      Width = 34
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LbTxtLogradouro: TLabel
      Left = 399
      Top = 16
      Width = 62
      Height = 14
      Caption = 'TELEFONE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object EdtEndereco: TDBEdit
      Left = 90
      Top = 45
      Width = 293
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'ENDER_CLIENTE'
      DataSource = DsBuscaCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtIeRg: TDBEdit
      Left = 250
      Top = 16
      Width = 133
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'INSCRICAO_CLIENTE'
      DataSource = DsBuscaCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtBairro: TDBEdit
      Left = 461
      Top = 45
      Width = 191
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'BAIRRO_CLIENTE'
      DataSource = DsBuscaCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtLogradouro: TDBEdit
      Left = 467
      Top = 17
      Width = 184
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'CELULAR_CLIENTE'
      DataSource = DsBuscaCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtCnpjCpf: TEdit
      Left = 56
      Top = 16
      Width = 164
      Height = 22
      TabStop = False
      Color = clActiveBorder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object BtnSelecionar: TButton
    Left = 239
    Top = 447
    Width = 90
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 2
    WordWrap = True
    OnClick = BtnSelecionarClick
  end
  object BtnCancelar: TButton
    Left = 335
    Top = 447
    Width = 90
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BtnCancelarClick
  end
  object BtnBusca: TBitBtn
    Left = 652
    Top = 56
    Width = 23
    Height = 22
    TabOrder = 6
    TabStop = False
    OnClick = BtnBuscaClick
  end
  object QryBuscaCliente: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    CLIENTES.COD_CLIENTE,'
      '    CLIENTES.NOME_CLIENTE,'
      '    C.NOME_CIDADE || '#39'-'#39' || C.UF_CIDADE AS NOME_CIDADE,'
      '    CLIENTES.FONER_CLIENTE,'
      '    CLIENTES.CELULAR_CLIENTE,'
      '    CLIENTES.TIPO_PESSOA,'
      '    CLIENTES.CLASSIFICACAO_CLIENTE,'
      
        '    COALESCE(CLIENTES.ENDER_CLIENTE || '#39', '#39' || CLIENTES.NUM_CLIE' +
        'NTE, CLIENTES.ENDER_CLIENTE) AS ENDER_CLIENTE,'
      '    CLIENTES.BAIRRO_CLIENTE,'
      '    CLIENTES.SEXO_CLIENTE,'
      '    CLIENTES.CPF_CLIENTE,'
      '    CLIENTES.RG_CLIENTE,'
      '    CLIENTES.CGC_CLIENTE,'
      '    CLIENTES.INSCRICAO_CLIENTE,'
      '    CLIENTES.CODCIDADE_CLIENTE'
      'FROM CLIENTES INNER JOIN CIDADES C ON'
      '     CLIENTES.CODCIDADE_CLIENTE = C.COD_CIDADE')
    Transaction = dm.Trans
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '    CLIENTES.COD_CLIENTE,'
      '    CLIENTES.NOME_CLIENTE,'
      '    C.NOME_CIDADE || '#39'-'#39' || C.UF_CIDADE AS NOME_CIDADE,'
      '    CLIENTES.FONER_CLIENTE,'
      '    CLIENTES.CELULAR_CLIENTE,'
      '    CLIENTES.TIPO_PESSOA,'
      '    CLIENTES.CLASSIFICACAO_CLIENTE,'
      
        '    COALESCE(CLIENTES.ENDER_CLIENTE || '#39', '#39' || CLIENTES.NUM_CLIE' +
        'NTE, CLIENTES.ENDER_CLIENTE) AS ENDER_CLIENTE,'
      '    CLIENTES.BAIRRO_CLIENTE,'
      '    CLIENTES.SEXO_CLIENTE,'
      '    CLIENTES.CPF_CLIENTE,'
      '    CLIENTES.RG_CLIENTE,'
      '    CLIENTES.CGC_CLIENTE,'
      '    CLIENTES.INSCRICAO_CLIENTE,'
      '    CLIENTES.CODCIDADE_CLIENTE'
      'FROM CLIENTES INNER JOIN CIDADES C ON'
      '     CLIENTES.CODCIDADE_CLIENTE = C.COD_CIDADE')
    Left = 416
    Top = 168
    object QryBuscaClienteCOD_CLIENTE: TFIBIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object QryBuscaClienteNOME_CLIENTE: TFIBStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryBuscaClienteNOME_CIDADE: TFIBStringField
      FieldName = 'NOME_CIDADE'
      Size = 63
      EmptyStrToNull = True
    end
    object QryBuscaClienteFONER_CLIENTE: TFIBStringField
      FieldName = 'FONER_CLIENTE'
      EditMask = '(00) 0000-0000;0'
      Size = 15
      EmptyStrToNull = True
    end
    object QryBuscaClienteTIPO_PESSOA: TFIBStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
      EmptyStrToNull = True
    end
    object QryBuscaClienteCLASSIFICACAO_CLIENTE: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'CLASSIFICACAO_CLIENTE'
    end
    object QryBuscaClienteBAIRRO_CLIENTE: TFIBStringField
      FieldName = 'BAIRRO_CLIENTE'
      Size = 30
      EmptyStrToNull = True
    end
    object QryBuscaClienteSEXO_CLIENTE: TFIBSmallIntField
      FieldName = 'SEXO_CLIENTE'
    end
    object QryBuscaClienteCPF_CLIENTE: TFIBStringField
      FieldName = 'CPF_CLIENTE'
      Size = 11
      EmptyStrToNull = True
    end
    object QryBuscaClienteRG_CLIENTE: TFIBStringField
      FieldName = 'RG_CLIENTE'
      Size = 13
      EmptyStrToNull = True
    end
    object QryBuscaClienteCGC_CLIENTE: TFIBStringField
      FieldName = 'CGC_CLIENTE'
      Size = 14
      EmptyStrToNull = True
    end
    object QryBuscaClienteINSCRICAO_CLIENTE: TFIBStringField
      FieldName = 'INSCRICAO_CLIENTE'
      Size = 15
      EmptyStrToNull = True
    end
    object QryBuscaClienteCODCIDADE_CLIENTE: TFIBIntegerField
      FieldName = 'CODCIDADE_CLIENTE'
    end
    object QryBuscaClienteCELULAR_CLIENTE: TFIBStringField
      FieldName = 'CELULAR_CLIENTE'
      EditMask = '(00) 0 0000-0000;0'
      Size = 15
      EmptyStrToNull = True
    end
    object QryBuscaClienteENDER_CLIENTE: TFIBStringField
      FieldName = 'ENDER_CLIENTE'
      Size = 92
      EmptyStrToNull = True
    end
  end
  object DsBuscaCliente: TDataSource
    DataSet = QryBuscaCliente
    OnDataChange = DsBuscaClienteDataChange
    Left = 480
    Top = 160
  end
end
