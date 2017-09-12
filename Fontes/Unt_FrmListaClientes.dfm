object FormListClientes: TFormListClientes
  Left = 0
  Top = 0
  BorderWidth = 5
  Caption = 'Listagem de Clientes'
  ClientHeight = 600
  ClientWidth = 800
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridListagem: TDBGrid
    Left = 0
    Top = 98
    Width = 800
    Height = 466
    Align = alClient
    DataSource = DsListaClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    OnDblClick = DBGridListagemDblClick
    OnTitleClick = DBGridListagemTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taRightJustify
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE_UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Cidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDER_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Endere'#231'o'
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
        FieldName = 'BAIRRO_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Bairro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONER_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Telefone'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'CPF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CGC_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'CNPJ'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENQUADRAMENTO_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Enquadramento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Email'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 200
        Visible = True
      end>
  end
  object PnFiltro: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object PageControl: TPageControl
      Left = 0
      Top = 0
      Width = 800
      Height = 60
      ActivePage = TsFiltro1
      Align = alClient
      TabOrder = 0
      object TsFiltro1: TTabSheet
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object Label5: TLabel
          Left = 3
          Top = 6
          Width = 73
          Height = 13
          Caption = 'C'#243'digo Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label6: TLabel
          Left = 230
          Top = 6
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label7: TLabel
          Left = 305
          Top = 6
          Width = 37
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 498
          Top = 6
          Width = 74
          Height = 13
          Caption = 'Data Cadastro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object BtnBuscarCid: TSpeedButton
          Left = 459
          Top = 3
          Width = 23
          Height = 22
          Flat = True
          OnClick = BtnBuscarCidClick
        end
        object btnBuscarCli: TSpeedButton
          Left = 191
          Top = 3
          Width = 23
          Height = 22
          Flat = True
          OnClick = btnBuscarCliClick
        end
        object Label1: TLabel
          Left = 664
          Top = 6
          Width = 17
          Height = 13
          Caption = 'At'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object EdtCodCidade: TEdit
          Left = 350
          Top = 3
          Width = 100
          Height = 21
          TabOrder = 2
          OnKeyDown = EdtCodCidadeKeyDown
        end
        object EdtCodCliente: TEdit
          Left = 82
          Top = 3
          Width = 100
          Height = 21
          TabOrder = 0
          OnKeyDown = EdtCodClienteKeyDown
        end
        object EdtUf: TEdit
          Left = 253
          Top = 3
          Width = 36
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 2
          TabOrder = 1
        end
        object DtCadastroIni: TJvDatePickerEdit
          Left = 578
          Top = 3
          Width = 80
          Height = 21
          AllowNoDate = True
          Checked = False
          Flat = False
          ParentFlat = False
          NoDateText = '  /  /     '
          TabOrder = 3
          OnKeyPress = DtCadastroIniKeyPress
        end
        object DtCadastroFim: TJvDatePickerEdit
          Left = 686
          Top = 3
          Width = 80
          Height = 21
          AllowNoDate = True
          Checked = False
          Flat = False
          ParentFlat = False
          NoDateText = '  /  /     '
          TabOrder = 4
          OnKeyPress = DtCadastroFimKeyPress
        end
      end
      object TsFiltro2: TTabSheet
        Caption = 'Outros'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label2: TLabel
          Left = 4
          Top = 6
          Width = 71
          Height = 13
          Caption = 'Renda Mensal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label3: TLabel
          Left = 221
          Top = 6
          Width = 32
          Height = 13
          Caption = 'Idade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label16: TLabel
          Left = 332
          Top = 6
          Width = 80
          Height = 13
          Caption = 'Time de Futebol:'
          Layout = tlCenter
        end
        object Label4: TLabel
          Left = 564
          Top = 6
          Width = 57
          Height = 13
          Caption = 'Tipo Pessoa'
          Layout = tlCenter
        end
        object Label9: TLabel
          Left = 137
          Top = 3
          Width = 6
          Height = 19
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EdtRenda: TEdit
          Left = 81
          Top = 3
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 0
        end
        object EdtIdade: TEdit
          Left = 259
          Top = 3
          Width = 54
          Height = 21
          MaxLength = 6
          TabOrder = 2
        end
        object EdtTime: TEdit
          Left = 418
          Top = 3
          Width = 127
          Height = 21
          MaxLength = 30
          TabOrder = 3
        end
        object CbTipoPessoa: TComboBox
          Left = 627
          Top = 3
          Width = 102
          Height = 21
          Style = csDropDownList
          TabOrder = 4
          Items.Strings = (
            'Todos'
            'Pessoa F'#237'sica'
            'Pessoa Jur'#237'dica')
        end
        object EdtRendaP2: TEdit
          Left = 143
          Top = 3
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 1
        end
      end
    end
  end
  object PnTop: TPanel
    Left = 0
    Top = 60
    Width = 800
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object LbRegistros: TLabel
      AlignWithMargins = True
      Left = 642
      Top = 3
      Width = 143
      Height = 16
      Margins.Right = 15
      Align = alRight
      Alignment = taRightJustify
      Caption = 'Registros encontrados: 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object pnBtnsFiltro: TPanel
      Left = 225
      Top = 2
      Width = 199
      Height = 33
      Align = alCustom
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object BtnAtualizar: TButton
        Left = 8
        Top = 5
        Width = 90
        Height = 25
        Caption = 'Atualizar <F5>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageAlignment = iaRight
        ImageIndex = 4
        ParentFont = False
        TabOrder = 0
        OnClick = BtnAtualizarClick
      end
      object BtnLimpar: TButton
        Left = 101
        Top = 5
        Width = 90
        Height = 25
        Caption = 'Limpar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageAlignment = iaRight
        ImageIndex = 3
        ImageMargins.Right = -10
        ParentFont = False
        TabOrder = 1
        OnClick = BtnLimparClick
      end
    end
  end
  object PnBtnBottom: TPanel
    Left = 0
    Top = 564
    Width = 800
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object btnRel: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 7
      Width = 100
      Height = 26
      Margins.Top = 7
      Align = alLeft
      Caption = 'Relat'#243'rios'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF010101FFFFFF010101F7F7F7FEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE010101000000010101
        A5A5A5FFFFFFFFFFFF010101010101D6D6D6010101FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF010101FFFFFF010101010101FF
        FFFFFFFFFF010101010101FFFFFF010101FFFFFFFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFFFFFF010101FCFCFC010101010101FFFFFFFFFF
        FF01010101010100000009090901010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101FFFFFFFFFFFF010101
        0101010101010000000202020202020303030303030202020202020404040404
        04000000000000000000010101010101010101FFFFFFFFFFFF01010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        010101010101010101010101010101FFFFFFFFFFFF0101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101010101FFFFFFFFFFFF010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        01010101010101FFFFFFFFFFFFFDFDFD00000001010100000000000000000000
        0000000000000000000000000000000000000000000000000000040404000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF010101FFFFFF0202020202020202020202
        02020202020202020202020202020202020202FFFFFF010101FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF010101FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF010101FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      PopupMenu = mnRelatorios
      OnClick = btnRelClick
      ExplicitLeft = 217
      ExplicitTop = 6
    end
    object btnCancelar: TBitBtn
      AlignWithMargins = True
      Left = 697
      Top = 7
      Width = 100
      Height = 26
      Margins.Top = 7
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
  end
  object DsListaClientes: TDataSource
    DataSet = QryListaClientes
    Left = 169
    Top = 248
  end
  object mnRelatorios: TPopupMenu
    TrackButton = tbLeftButton
    Left = 167
    Top = 296
    object mBtnRelCliUFCidRp: TMenuItem
      Tag = 50
      Caption = 'Rela'#231#227'o de Clientes por UF/Cidade 2'
      OnClick = mBtnRelCliUFCidRpClick
    end
    object mBtnRelCliUFCidQr: TMenuItem
      Tag = 40
      Caption = 'Rela'#231#227'o de Clientes por UF/Cidade'
      OnClick = mBtnRelCliUFCidQrClick
    end
    object mBtnRelCliUFRp: TMenuItem
      Tag = 30
      Caption = 'Rela'#231#227'o de Clientes por Cidade'
      OnClick = mBtnRelCliUFRpClick
    end
    object mBtnRelCliUFQr: TMenuItem
      Tag = 20
      Caption = 'Rela'#231#227'o de Clientes por UF'
      OnClick = mBtnRelCliUFQrClick
    end
    object mBtnRelListCli: TMenuItem
      Tag = 10
      Caption = 'Listagem de Clientes'
      OnClick = mBtnRelListCliClick
    end
  end
  object QryListaClientes: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    C.COD_CLIENTE,'
      '    C.NOME_CLIENTE,'
      
        '    COALESCE(C.ENDER_CLIENTE || '#39', '#39' || C.NUM_CLIENTE, C.ENDER_C' +
        'LIENTE) AS ENDER_CLIENTE,'
      '    C.BAIRRO_CLIENTE,'
      '    C.SEXO_CLIENTE,'
      '    C.DTNASC_CLIENTE,'
      '    C.FONER_CLIENTE,'
      '    C.CELULAR_CLIENTE,'
      '    C.CPF_CLIENTE,'
      '    C.CGC_CLIENTE,'
      '    C.RG_CLIENTE,'
      '    C.CODCIDADE_CLIENTE,'
      '    CI.NOME_CIDADE || '#39'-'#39' || CI.UF_CIDADE AS CIDADE_UF,'
      '    CI.NOME_CIDADE,'
      '    CI.CEP_CIDADE,'
      '    CI.UF_CIDADE,'
      '    C.DEPENDENTES_CLIENTE,'
      '    C.DTCADASTRO_CLIENTE,'
      '    C.CEP_CLIENTE,'
      '    C.ESTADOCIVIL_CLIENTE,'
      '    C.EMAIL_CLIENTE,'
      '    C.CLASSIFICACAO_CLIENTE,'
      '    C.INSCRICAO_CLIENTE,'
      '    C.APELIDO_CLIENTE,'
      '    C.NOMEMAE_CLIENTE,'
      '    C.NOMEPAI_CLIENTE,'
      '    C.DTADMISSAO_CLIENTE,'
      '    C.DTALTERACAO_CLIENTE,'
      '    C.TIPO_PESSOA,'
      '    C.ENQUADRAMENTO_CLIENTE'
      
        'FROM CLIENTES C LEFT JOIN CIDADES CI ON (C.CODCIDADE_CLIENTE = C' +
        'I.COD_CIDADE)'
      'ORDER BY C.COD_CLIENTE')
    Transaction = TransListClientes
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '    C.COD_CLIENTE,'
      '    C.NOME_CLIENTE,'
      
        '    COALESCE(C.ENDER_CLIENTE || '#39', '#39' || C.NUM_CLIENTE, C.ENDER_C' +
        'LIENTE) AS ENDER_CLIENTE,'
      '    C.BAIRRO_CLIENTE,'
      '    C.SEXO_CLIENTE,'
      '    C.DTNASC_CLIENTE,'
      '    C.FONER_CLIENTE,'
      '    C.CELULAR_CLIENTE,'
      '    C.CPF_CLIENTE,'
      '    C.CGC_CLIENTE,'
      '    C.RG_CLIENTE,'
      '    C.CODCIDADE_CLIENTE,'
      '    CI.NOME_CIDADE || '#39'-'#39' || CI.UF_CIDADE AS CIDADE_UF,'
      '    CI.NOME_CIDADE,'
      '    CI.CEP_CIDADE,'
      '    CI.UF_CIDADE,'
      '    C.DEPENDENTES_CLIENTE,'
      '    C.DTCADASTRO_CLIENTE,'
      '    C.CEP_CLIENTE,'
      '    C.ESTADOCIVIL_CLIENTE,'
      '    C.EMAIL_CLIENTE,'
      '    C.CLASSIFICACAO_CLIENTE,'
      '    C.INSCRICAO_CLIENTE,'
      '    C.APELIDO_CLIENTE,'
      '    C.NOMEMAE_CLIENTE,'
      '    C.NOMEPAI_CLIENTE,'
      '    C.DTADMISSAO_CLIENTE,'
      '    C.DTALTERACAO_CLIENTE,'
      '    C.TIPO_PESSOA,'
      '    C.ENQUADRAMENTO_CLIENTE'
      
        'FROM CLIENTES C LEFT JOIN CIDADES CI ON (C.CODCIDADE_CLIENTE = C' +
        'I.COD_CIDADE)'
      'ORDER BY C.COD_CLIENTE')
    Left = 88
    Top = 248
    object QryListaClientesCOD_CLIENTE: TFIBIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object QryListaClientesNOME_CLIENTE: TFIBStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryListaClientesENDER_CLIENTE: TFIBStringField
      FieldName = 'ENDER_CLIENTE'
      Size = 92
      EmptyStrToNull = True
    end
    object QryListaClientesBAIRRO_CLIENTE: TFIBStringField
      FieldName = 'BAIRRO_CLIENTE'
      Size = 30
      EmptyStrToNull = True
    end
    object QryListaClientesSEXO_CLIENTE: TFIBSmallIntField
      FieldName = 'SEXO_CLIENTE'
    end
    object QryListaClientesDTNASC_CLIENTE: TFIBDateField
      FieldName = 'DTNASC_CLIENTE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryListaClientesFONER_CLIENTE: TFIBStringField
      FieldName = 'FONER_CLIENTE'
      OnGetText = QryListaClientesFONER_CLIENTEGetText
      Size = 15
      EmptyStrToNull = True
    end
    object QryListaClientesCELULAR_CLIENTE: TFIBStringField
      FieldName = 'CELULAR_CLIENTE'
      OnGetText = QryListaClientesCELULAR_CLIENTEGetText
      Size = 15
      EmptyStrToNull = True
    end
    object QryListaClientesCPF_CLIENTE: TFIBStringField
      FieldName = 'CPF_CLIENTE'
      OnGetText = QryListaClientesCPF_CLIENTEGetText
      Size = 11
      EmptyStrToNull = True
    end
    object QryListaClientesCGC_CLIENTE: TFIBStringField
      FieldName = 'CGC_CLIENTE'
      OnGetText = QryListaClientesCGC_CLIENTEGetText
      Size = 14
      EmptyStrToNull = True
    end
    object QryListaClientesRG_CLIENTE: TFIBStringField
      FieldName = 'RG_CLIENTE'
      Size = 13
      EmptyStrToNull = True
    end
    object QryListaClientesCODCIDADE_CLIENTE: TFIBIntegerField
      FieldName = 'CODCIDADE_CLIENTE'
    end
    object QryListaClientesNOME_CIDADE: TFIBStringField
      FieldName = 'NOME_CIDADE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryListaClientesCEP_CIDADE: TFIBStringField
      FieldName = 'CEP_CIDADE'
      Size = 8
      EmptyStrToNull = True
    end
    object QryListaClientesDEPENDENTES_CLIENTE: TFIBStringField
      FieldName = 'DEPENDENTES_CLIENTE'
      Size = 100
      EmptyStrToNull = True
    end
    object QryListaClientesDTCADASTRO_CLIENTE: TFIBDateField
      FieldName = 'DTCADASTRO_CLIENTE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryListaClientesCEP_CLIENTE: TFIBStringField
      FieldName = 'CEP_CLIENTE'
      Size = 8
      EmptyStrToNull = True
    end
    object QryListaClientesESTADOCIVIL_CLIENTE: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'ESTADOCIVIL_CLIENTE'
    end
    object QryListaClientesEMAIL_CLIENTE: TFIBStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 100
      EmptyStrToNull = True
    end
    object QryListaClientesCLASSIFICACAO_CLIENTE: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'CLASSIFICACAO_CLIENTE'
    end
    object QryListaClientesINSCRICAO_CLIENTE: TFIBStringField
      FieldName = 'INSCRICAO_CLIENTE'
      Size = 15
      EmptyStrToNull = True
    end
    object QryListaClientesAPELIDO_CLIENTE: TFIBStringField
      FieldName = 'APELIDO_CLIENTE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryListaClientesNOMEMAE_CLIENTE: TFIBStringField
      FieldName = 'NOMEMAE_CLIENTE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryListaClientesNOMEPAI_CLIENTE: TFIBStringField
      FieldName = 'NOMEPAI_CLIENTE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryListaClientesDTADMISSAO_CLIENTE: TFIBDateField
      FieldName = 'DTADMISSAO_CLIENTE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryListaClientesDTALTERACAO_CLIENTE: TFIBDateTimeField
      FieldName = 'DTALTERACAO_CLIENTE'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object TFIBStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
      EmptyStrToNull = True
    end
    object QryListaClientesENQUADRAMENTO_CLIENTE: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'ENQUADRAMENTO_CLIENTE'
      OnGetText = QryListaClientesENQUADRAMENTO_CLIENTEGetText
    end
    object QryListaClientesCIDADE_UF: TFIBStringField
      FieldName = 'CIDADE_UF'
      Size = 63
      EmptyStrToNull = True
    end
    object QryListaClientesUF_CIDADE: TFIBStringField
      FieldName = 'UF_CIDADE'
      Size = 2
      EmptyStrToNull = True
    end
  end
  object pipeRelListCli: TppDBPipeline
    DataSource = dsAux
    UserName = 'pipeRelListCli'
    Left = 88
    Top = 176
    object pipeRelListClippField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLIENTE'
      FieldName = 'COD_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pipeRelListClippField2: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object pipeRelListClippField3: TppField
      FieldAlias = 'ENDER_CLIENTE'
      FieldName = 'ENDER_CLIENTE'
      FieldLength = 92
      DisplayWidth = 92
      Position = 2
    end
    object pipeRelListClippField4: TppField
      FieldAlias = 'BAIRRO_CLIENTE'
      FieldName = 'BAIRRO_CLIENTE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object pipeRelListClippField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEXO_CLIENTE'
      FieldName = 'SEXO_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pipeRelListClippField6: TppField
      FieldAlias = 'DTNASC_CLIENTE'
      FieldName = 'DTNASC_CLIENTE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object pipeRelListClippField7: TppField
      FieldAlias = 'FONER_CLIENTE'
      FieldName = 'FONER_CLIENTE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object pipeRelListClippField8: TppField
      FieldAlias = 'CELULAR_CLIENTE'
      FieldName = 'CELULAR_CLIENTE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object pipeRelListClippField9: TppField
      FieldAlias = 'CPF_CLIENTE'
      FieldName = 'CPF_CLIENTE'
      FieldLength = 11
      DisplayWidth = 11
      Position = 8
    end
    object pipeRelListClippField10: TppField
      FieldAlias = 'CGC_CLIENTE'
      FieldName = 'CGC_CLIENTE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 9
    end
    object pipeRelListClippField11: TppField
      FieldAlias = 'RG_CLIENTE'
      FieldName = 'RG_CLIENTE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 10
    end
    object pipeRelListClippField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODCIDADE_CLIENTE'
      FieldName = 'CODCIDADE_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object pipeRelListClippField13: TppField
      FieldAlias = 'NOME_CIDADE'
      FieldName = 'NOME_CIDADE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 12
    end
    object pipeRelListClippField14: TppField
      FieldAlias = 'CEP_CIDADE'
      FieldName = 'CEP_CIDADE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 13
    end
    object pipeRelListClippField15: TppField
      FieldAlias = 'DEPENDENTES_CLIENTE'
      FieldName = 'DEPENDENTES_CLIENTE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 14
    end
    object pipeRelListClippField16: TppField
      FieldAlias = 'DTCADASTRO_CLIENTE'
      FieldName = 'DTCADASTRO_CLIENTE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 15
    end
    object pipeRelListClippField17: TppField
      FieldAlias = 'CEP_CLIENTE'
      FieldName = 'CEP_CLIENTE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 16
    end
    object pipeRelListClippField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTADOCIVIL_CLIENTE'
      FieldName = 'ESTADOCIVIL_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object pipeRelListClippField19: TppField
      FieldAlias = 'EMAIL_CLIENTE'
      FieldName = 'EMAIL_CLIENTE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 18
    end
    object pipeRelListClippField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLASSIFICACAO_CLIENTE'
      FieldName = 'CLASSIFICACAO_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object pipeRelListClippField21: TppField
      FieldAlias = 'INSCRICAO_CLIENTE'
      FieldName = 'INSCRICAO_CLIENTE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 20
    end
    object pipeRelListClippField22: TppField
      FieldAlias = 'APELIDO_CLIENTE'
      FieldName = 'APELIDO_CLIENTE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 21
    end
    object pipeRelListClippField23: TppField
      FieldAlias = 'NOMEMAE_CLIENTE'
      FieldName = 'NOMEMAE_CLIENTE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 22
    end
    object pipeRelListClippField24: TppField
      FieldAlias = 'NOMEPAI_CLIENTE'
      FieldName = 'NOMEPAI_CLIENTE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 23
    end
    object pipeRelListClippField25: TppField
      FieldAlias = 'DTADMISSAO_CLIENTE'
      FieldName = 'DTADMISSAO_CLIENTE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 24
    end
    object pipeRelListClippField26: TppField
      FieldAlias = 'DTALTERACAO_CLIENTE'
      FieldName = 'DTALTERACAO_CLIENTE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 25
    end
    object pipeRelListClippField27: TppField
      FieldAlias = 'TIPO_PESSOA'
      FieldName = 'TIPO_PESSOA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 26
    end
    object pipeRelListClippField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENQUADRAMENTO_CLIENTE'
      FieldName = 'ENQUADRAMENTO_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object pipeRelListClippField29: TppField
      FieldAlias = 'CIDADE_UF'
      FieldName = 'CIDADE_UF'
      FieldLength = 63
      DisplayWidth = 63
      Position = 28
    end
    object pipeRelListClippField30: TppField
      FieldAlias = 'UF_CIDADE'
      FieldName = 'UF_CIDADE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 29
    end
  end
  object pRepRelListCli: TppReport
    AutoStop = False
    DataPipeline = pipeRelListCli
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\DS14\Documents\Linassi\LinSoft\RelListagemClientes.rtm'
    AfterPrint = pRepRelListCliAfterPrint
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = pRepRelListCliBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = True
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 160
    Top = 176
    Version = '17.02'
    mmColumnWidth = 0
    DataPipelineName = 'pipeRelListCli'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 32279
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Rel. de Clientes Agrupado por UF / Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 1588
        mmTop = 17463
        mmWidth = 84666
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 3701
        mmTop = 25135
        mmWidth = 11907
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 16929
        mmTop = 25135
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 99219
        mmTop = 25135
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object LbNomeEmpresa: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LbNomeEmpresa'
        AutoSize = False
        Caption = 'Nome Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8201
        mmLeft = 1588
        mmTop = 0
        mmWidth = 194469
        BandType = 0
        LayerName = Foreground
      end
      object LbEnderEmpresa: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LbEnderEmpresa'
        Caption = 'Endere'#231'o Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3968
        mmLeft = 83344
        mmTop = 7938
        mmWidth = 28310
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1590
        mmTop = 22495
        mmWidth = 193143
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = '27/06/2017'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'DraFT 12CPI'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 178328
        mmTop = 18257
        mmWidth = 16934
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 72759
        mmTop = 25135
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'CPF/CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 165610
        mmTop = 25135
        mmWidth = 16934
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDbTxtCodCli: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'COD_CLIENTE'
        DataPipeline = pipeRelListCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pipeRelListCli'
        mmHeight = 4498
        mmLeft = 2913
        mmTop = 519
        mmWidth = 12693
        BandType = 4
        LayerName = Foreground
      end
      object ppDbTxtTelef: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        OnGetText = ppDbTxtTelefGetText
        DataField = 'FONER_CLIENTE'
        DataPipeline = pipeRelListCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeRelListCli'
        mmHeight = 4498
        mmLeft = 72779
        mmTop = 526
        mmWidth = 24353
        BandType = 4
        LayerName = Foreground
      end
      object ppLbDoc: TppLabel
        OnPrint = ppLbDocPrint
        DesignLayer = ppDesignLayer1
        UserName = 'LbDoc'
        AutoSize = False
        Caption = 'LbDoc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 165623
        mmTop = 529
        mmWidth = 29108
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'NOME_CLIENTE'
        DataPipeline = pipeRelListCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'pipeRelListCli'
        mmHeight = 4498
        mmLeft = 16925
        mmTop = 529
        mmWidth = 53988
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'ENDER_CLIENTE'
        DataPipeline = pipeRelListCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'pipeRelListCli'
        mmHeight = 4498
        mmLeft = 99219
        mmTop = 529
        mmWidth = 64828
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 158750
        mmTop = 3704
        mmWidth = 35983
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object LbQntRegistros: TppLabel
        OnPrint = LbQntRegistrosPrint
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Caption = 'Quantidade de Registros: 20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 114035
        mmTop = 4763
        mmWidth = 80698
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1588
        mmTop = 3973
        mmWidth = 193672
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'UF_CIDADE'
      DataPipeline = pipeRelListCli
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pipeRelListCli'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          DataField = 'UF_CIDADE'
          DataPipeline = pipeRelListCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'pipeRelListCli'
          mmHeight = 4498
          mmLeft = 1588
          mmTop = 2910
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CIDADE_UF'
      DataPipeline = pipeRelListCli
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pipeRelListCli'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          DataField = 'NOME_CIDADE'
          DataPipeline = pipeRelListCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'pipeRelListCli'
          mmHeight = 4498
          mmLeft = 5828
          mmTop = 2120
          mmWidth = 47625
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object TransListClientes: TpFIBTransaction
    DefaultDatabase = dm.DB
    Left = 88
    Top = 296
  end
  object cdsAux: TpFIBClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'COD_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'NOME_CLIENTE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENDER_CLIENTE'
        DataType = ftString
        Size = 92
      end
      item
        Name = 'BAIRRO_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SEXO_CLIENTE'
        DataType = ftSmallint
      end
      item
        Name = 'DTNASC_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'FONER_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CELULAR_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CPF_CLIENTE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CGC_CLIENTE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'RG_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CODCIDADE_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'NOME_CIDADE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CEP_CIDADE'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DEPENDENTES_CLIENTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DTCADASTRO_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'CEP_CLIENTE'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ESTADOCIVIL_CLIENTE'
        DataType = ftSmallint
      end
      item
        Name = 'EMAIL_CLIENTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CLASSIFICACAO_CLIENTE'
        DataType = ftSmallint
      end
      item
        Name = 'INSCRICAO_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'APELIDO_CLIENTE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NOMEMAE_CLIENTE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NOMEPAI_CLIENTE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DTADMISSAO_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'DTALTERACAO_CLIENTE'
        DataType = ftDateTime
      end
      item
        Name = 'TIPO_PESSOA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ENQUADRAMENTO_CLIENTE'
        DataType = ftSmallint
      end
      item
        Name = 'CIDADE_UF'
        DataType = ftString
        Size = 63
      end
      item
        Name = 'UF_CIDADE'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'IDX_UF_CID_CLI'
        Fields = 'UF_CIDADE;NOME_CIDADE;COD_CLIENTE'
      end
      item
        Name = 'IDX_CID_CLI'
        Fields = 'NOME_CIDADE;COD_CLIENTE'
      end
      item
        Name = 'IDX_CLI'
        Fields = 'COD_CLIENTE'
      end>
    Params = <>
    ProviderName = 'cdsProvAux'
    StoreDefs = True
    Left = 136
    Top = 120
    object cdsAuxCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object cdsAuxNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsAuxENDER_CLIENTE: TStringField
      FieldName = 'ENDER_CLIENTE'
      Size = 92
    end
    object cdsAuxBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      Size = 30
    end
    object cdsAuxSEXO_CLIENTE: TSmallintField
      FieldName = 'SEXO_CLIENTE'
    end
    object cdsAuxDTNASC_CLIENTE: TDateField
      FieldName = 'DTNASC_CLIENTE'
    end
    object cdsAuxFONER_CLIENTE: TStringField
      FieldName = 'FONER_CLIENTE'
      Size = 15
    end
    object cdsAuxCELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 15
    end
    object cdsAuxCPF_CLIENTE: TStringField
      FieldName = 'CPF_CLIENTE'
      Size = 11
    end
    object cdsAuxCGC_CLIENTE: TStringField
      FieldName = 'CGC_CLIENTE'
      Size = 14
    end
    object cdsAuxRG_CLIENTE: TStringField
      FieldName = 'RG_CLIENTE'
      Size = 13
    end
    object cdsAuxCODCIDADE_CLIENTE: TIntegerField
      FieldName = 'CODCIDADE_CLIENTE'
    end
    object cdsAuxNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 60
    end
    object cdsAuxCEP_CIDADE: TStringField
      FieldName = 'CEP_CIDADE'
      Size = 8
    end
    object cdsAuxDEPENDENTES_CLIENTE: TStringField
      FieldName = 'DEPENDENTES_CLIENTE'
      Size = 100
    end
    object cdsAuxDTCADASTRO_CLIENTE: TDateField
      FieldName = 'DTCADASTRO_CLIENTE'
    end
    object cdsAuxCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 8
    end
    object cdsAuxESTADOCIVIL_CLIENTE: TSmallintField
      FieldName = 'ESTADOCIVIL_CLIENTE'
    end
    object cdsAuxEMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 100
    end
    object cdsAuxCLASSIFICACAO_CLIENTE: TSmallintField
      FieldName = 'CLASSIFICACAO_CLIENTE'
    end
    object cdsAuxINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
      Size = 15
    end
    object cdsAuxAPELIDO_CLIENTE: TStringField
      FieldName = 'APELIDO_CLIENTE'
      Size = 60
    end
    object cdsAuxNOMEMAE_CLIENTE: TStringField
      FieldName = 'NOMEMAE_CLIENTE'
      Size = 60
    end
    object cdsAuxNOMEPAI_CLIENTE: TStringField
      FieldName = 'NOMEPAI_CLIENTE'
      Size = 60
    end
    object cdsAuxDTADMISSAO_CLIENTE: TDateField
      FieldName = 'DTADMISSAO_CLIENTE'
    end
    object cdsAuxDTALTERACAO_CLIENTE: TDateTimeField
      FieldName = 'DTALTERACAO_CLIENTE'
    end
    object cdsAuxTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
    end
    object cdsAuxENQUADRAMENTO_CLIENTE: TSmallintField
      FieldName = 'ENQUADRAMENTO_CLIENTE'
    end
    object cdsAuxCIDADE_UF: TStringField
      FieldName = 'CIDADE_UF'
      Size = 63
    end
    object cdsAuxUF_CIDADE: TStringField
      FieldName = 'UF_CIDADE'
      Size = 2
    end
  end
  object cdsProvAux: TpFIBDataSetProvider
    DataSet = QryListaClientes
    Options = []
    Left = 80
    Top = 120
  end
  object dsAux: TDataSource
    DataSet = cdsAux
    Left = 184
    Top = 128
  end
end
