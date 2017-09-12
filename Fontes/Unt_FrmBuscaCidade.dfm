object Frm_BuscaCidade: TFrm_BuscaCidade
  Left = 0
  Top = 0
  Caption = 'Buscar Cidade'
  ClientHeight = 452
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
    DataSource = DsBuscaCidade
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
        FieldName = 'COD_CIDADE'
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
        FieldName = 'NOME_CIDADE'
        Title.Caption = 'Cidade'
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
        FieldName = 'CEP_CIDADE'
        Title.Caption = 'CEP'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF_CIDADE'
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 40
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
    object RbUf: TRadioButton
      Left = 311
      Top = 15
      Width = 113
      Height = 17
      Caption = 'Buscar por UF'
      TabOrder = 2
      WordWrap = True
    end
  end
  object gbDados: TGroupBox
    Left = 8
    Top = 360
    Width = 667
    Height = 57
    TabOrder = 6
    object LbTxtEndereco: TLabel
      Left = 461
      Top = 16
      Width = 34
      Height = 14
      Caption = 'PA'#205'S:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LbTxtIeRg: TLabel
      Left = 250
      Top = 16
      Width = 66
      Height = 14
      Caption = 'C'#211'D. IBGE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LbTxtCnpjCpf: TLabel
      Left = 24
      Top = 16
      Width = 105
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#211'D. CONT'#193'BIL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object EdtCodIbge: TDBEdit
      Left = 324
      Top = 16
      Width = 117
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'CODIBGE_CIDADE'
      DataSource = DsBuscaCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtCodContabil: TDBEdit
      Left = 135
      Top = 16
      Width = 96
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'CODCONTABIL_CIDADE'
      DataSource = DsBuscaCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtPais: TDBEdit
      Left = 501
      Top = 16
      Width = 135
      Height = 22
      TabStop = False
      Color = clActiveBorder
      DataField = 'NOME_PAIS'
      DataSource = DsBuscaCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object BtnSelecionar: TButton
    Left = 234
    Top = 423
    Width = 90
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 2
    WordWrap = True
    OnClick = BtnSelecionarClick
  end
  object BtnCancelar: TButton
    Left = 330
    Top = 423
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
    TabOrder = 5
    TabStop = False
    OnClick = BtnBuscaClick
  end
  object QryBuscaCidade: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    C.COD_CIDADE,'
      '    C.NOME_CIDADE,'
      '    C.UF_CIDADE,'
      '    C.CEP_CIDADE,'
      '    C.CODCONTABIL_CIDADE,'
      '    C.CODIBGE_CIDADE,'
      '    P.NOME_PAIS'
      'FROM CIDADES C INNER JOIN PAISES P ON'
      '    C.CODPAIS_CIDADE = P.COD_PAIS')
    Transaction = dm.Trans
    Database = dm.DB
    SelectSQL.Strings = (
      'SELECT'
      '    C.COD_CIDADE,'
      '    C.NOME_CIDADE,'
      '    C.UF_CIDADE,'
      '    C.CEP_CIDADE,'
      '    C.CODCONTABIL_CIDADE,'
      '    C.CODIBGE_CIDADE,'
      '    P.NOME_PAIS'
      'FROM CIDADES C INNER JOIN PAISES P ON'
      '    C.CODPAIS_CIDADE = P.COD_PAIS')
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy HH:mm'
    DefaultFormats.DisplayFormatTime = 'HH:mm'
    Left = 416
    Top = 168
    object QryBuscaCidadeCOD_CIDADE: TFIBIntegerField
      FieldName = 'COD_CIDADE'
    end
    object QryBuscaCidadeNOME_CIDADE: TFIBStringField
      FieldName = 'NOME_CIDADE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryBuscaCidadeUF_CIDADE: TFIBStringField
      FieldName = 'UF_CIDADE'
      Size = 2
      EmptyStrToNull = True
    end
    object QryBuscaCidadeCEP_CIDADE: TFIBStringField
      FieldName = 'CEP_CIDADE'
      Size = 8
      EmptyStrToNull = True
    end
    object QryBuscaCidadeCODCONTABIL_CIDADE: TFIBStringField
      FieldName = 'CODCONTABIL_CIDADE'
      Size = 10
      EmptyStrToNull = True
    end
    object QryBuscaCidadeCODIBGE_CIDADE: TFIBStringField
      FieldName = 'CODIBGE_CIDADE'
      Size = 7
      EmptyStrToNull = True
    end
    object QryBuscaCidadeNOME_PAIS: TFIBStringField
      FieldName = 'NOME_PAIS'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object DsBuscaCidade: TDataSource
    DataSet = QryBuscaCidade
    Left = 480
    Top = 160
  end
end
