object FormCadCidade: TFormCadCidade
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = 'Cadastro de Cidade'
  ClientHeight = 226
  ClientWidth = 457
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
  object Label3: TLabel
    Left = 797
    Top = 216
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object SbBuscar: TSpeedButton
    Left = 892
    Top = 235
    Width = 23
    Height = 22
  end
  object LbOperacao: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 451
    Height = 29
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrando Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 211
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 38
    Width = 451
    Height = 151
    Align = alClient
    TabOrder = 0
    object Label7: TLabel
      Left = 32
      Top = 53
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label8: TLabel
      Left = 337
      Top = 83
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object lbTxtCodIbge: TLabel
      Left = 16
      Top = 112
      Width = 53
      Height = 13
      Caption = 'C'#243'd. IBGE:'
    end
    object Label5: TLabel
      Left = 219
      Top = 112
      Width = 69
      Height = 13
      Caption = 'C'#243'd. Cont'#225'bil:'
    end
    object Label1: TLabel
      Left = 46
      Top = 83
      Width = 23
      Height = 13
      Caption = 'Pa'#237's:'
    end
    object Label2: TLabel
      Left = 259
      Top = 83
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object lbTxtCod: TLabel
      Left = 32
      Top = 23
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object btnBuscaCidade: TSpeedButton
      Left = 170
      Top = 20
      Width = 23
      Height = 21
      Flat = True
      OnClick = btnBuscaCidadeClick
    end
    object EdtNomeCidade: TDBEdit
      Left = 71
      Top = 50
      Width = 366
      Height = 21
      DataField = 'NOME_CIDADE'
      DataSource = DsCidade
      TabOrder = 1
    end
    object edtCep: TDBEdit
      Left = 361
      Top = 80
      Width = 76
      Height = 21
      DataField = 'CEP_CIDADE'
      DataSource = DsCidade
      MaxLength = 9
      TabOrder = 4
    end
    object edtCodIbge: TDBEdit
      Left = 71
      Top = 109
      Width = 137
      Height = 21
      DataField = 'CODIBGE_CIDADE'
      DataSource = DsCidade
      TabOrder = 5
    end
    object edtCodContabil: TDBEdit
      Left = 289
      Top = 109
      Width = 148
      Height = 21
      DataField = 'CODCONTABIL_CIDADE'
      DataSource = DsCidade
      TabOrder = 6
    end
    object CbPais: TComboBox
      Left = 71
      Top = 80
      Width = 179
      Height = 21
      Style = csDropDownList
      Enabled = False
      ItemIndex = 0
      TabOrder = 2
      TabStop = False
      Text = 'Brasil'
      Items.Strings = (
        'Brasil')
    end
    object CbUf: TComboBox
      Left = 278
      Top = 80
      Width = 50
      Height = 21
      Style = csDropDownList
      TabOrder = 3
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
    end
    object edtCod: TEdit
      Left = 71
      Top = 20
      Width = 96
      Height = 21
      TabOrder = 0
      OnExit = EdtCodExit
      OnKeyDown = EdtCodKeyDown
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 192
    Width = 451
    Height = 31
    Margins.Top = 0
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BtnCancelar: TButton
      AlignWithMargins = True
      Left = 295
      Top = 3
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = BtnCancelarClick
    end
    object BtnLimpar: TButton
      AlignWithMargins = True
      Left = 214
      Top = 3
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Limpar'
      TabOrder = 1
      OnClick = BtnLimparClick
    end
    object BtnGravar: TButton
      AlignWithMargins = True
      Left = 133
      Top = 3
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = BtnGravarClick
    end
    object BtnDeletar: TButton
      AlignWithMargins = True
      Left = 376
      Top = 3
      Width = 75
      Height = 25
      Margins.Right = 0
      Align = alRight
      Caption = 'Deletar'
      TabOrder = 3
      OnClick = BtnDeletarClick
    end
  end
  object QryCidade: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CIDADES'
      'SET '
      '    NOME_CIDADE = :NOME_CIDADE,'
      '    UF_CIDADE = :UF_CIDADE,'
      '    CEP_CIDADE = :CEP_CIDADE,'
      '    CODCONTABIL_CIDADE = :CODCONTABIL_CIDADE,'
      '    CODIBGE_CIDADE = :CODIBGE_CIDADE,'
      '    CODPAIS_CIDADE = :CODPAIS_CIDADE'
      'WHERE'
      '    COD_CIDADE = :OLD_COD_CIDADE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CIDADES'
      'WHERE'
      '        COD_CIDADE = :OLD_COD_CIDADE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CIDADES('
      '    COD_CIDADE,'
      '    NOME_CIDADE,'
      '    UF_CIDADE,'
      '    CEP_CIDADE,'
      '    CODCONTABIL_CIDADE,'
      '    CODIBGE_CIDADE,'
      '    CODPAIS_CIDADE'
      ')'
      'VALUES('
      '    :COD_CIDADE,'
      '    :NOME_CIDADE,'
      '    :UF_CIDADE,'
      '    :CEP_CIDADE,'
      '    :CODCONTABIL_CIDADE,'
      '    :CODIBGE_CIDADE,'
      '    :CODPAIS_CIDADE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    C.COD_CIDADE,'
      '    C.NOME_CIDADE,'
      '    C.UF_CIDADE,'
      '    C.CEP_CIDADE,'
      '    C.CODCONTABIL_CIDADE,'
      '    C.CODIBGE_CIDADE,'
      '    C.CODPAIS_CIDADE,'
      '    P.NOME_PAIS'
      
        'FROM CIDADES C INNER JOIN PAISES P ON C.CODPAIS_CIDADE = P.COD_P' +
        'AIS'
      'WHERE(  C.COD_CIDADE = :COD'
      '     ) and (     C.COD_CIDADE = :OLD_COD_CIDADE'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    C.COD_CIDADE,'
      '    C.NOME_CIDADE,'
      '    C.UF_CIDADE,'
      '    C.CEP_CIDADE,'
      '    C.CODCONTABIL_CIDADE,'
      '    C.CODIBGE_CIDADE,'
      '    C.CODPAIS_CIDADE,'
      '    P.NOME_PAIS'
      
        'FROM CIDADES C INNER JOIN PAISES P ON C.CODPAIS_CIDADE = P.COD_P' +
        'AIS'
      'WHERE C.COD_CIDADE = :COD')
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '    C.COD_CIDADE,'
      '    C.NOME_CIDADE,'
      '    C.UF_CIDADE,'
      '    C.CEP_CIDADE,'
      '    C.CODCONTABIL_CIDADE,'
      '    C.CODIBGE_CIDADE,'
      '    C.CODPAIS_CIDADE,'
      '    P.NOME_PAIS'
      
        'FROM CIDADES C INNER JOIN PAISES P ON C.CODPAIS_CIDADE = P.COD_P' +
        'AIS'
      'WHERE C.COD_CIDADE = :COD')
    Left = 271
    Top = 35
    object QryCidadeCOD_CIDADE: TFIBIntegerField
      FieldName = 'COD_CIDADE'
    end
    object QryCidadeNOME_CIDADE: TFIBStringField
      FieldName = 'NOME_CIDADE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryCidadeUF_CIDADE: TFIBStringField
      FieldName = 'UF_CIDADE'
      Size = 2
      EmptyStrToNull = True
    end
    object QryCidadeCEP_CIDADE: TFIBStringField
      FieldName = 'CEP_CIDADE'
      EditMask = '00000-000;0'
      Size = 8
      EmptyStrToNull = True
    end
    object QryCidadeCODCONTABIL_CIDADE: TFIBStringField
      FieldName = 'CODCONTABIL_CIDADE'
      Size = 10
      EmptyStrToNull = True
    end
    object QryCidadeCODIBGE_CIDADE: TFIBStringField
      FieldName = 'CODIBGE_CIDADE'
      Size = 7
      EmptyStrToNull = True
    end
    object QryCidadeNOME_PAIS: TFIBStringField
      FieldName = 'NOME_PAIS'
      Size = 60
      EmptyStrToNull = True
    end
    object QryCidadeCODPAIS_CIDADE: TFIBSmallIntField
      FieldName = 'CODPAIS_CIDADE'
    end
  end
  object DsCidade: TDataSource
    DataSet = QryCidade
    Left = 232
    Top = 32
  end
end
