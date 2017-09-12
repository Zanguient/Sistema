object FormListClientes: TFormListClientes
  Left = 0
  Top = 0
  Caption = 'Listagem de Clientes'
  ClientHeight = 509
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object LbTxtRegistros: TLabel
    Left = 8
    Top = 447
    Width = 156
    Height = 16
    Caption = 'Registros Encontrados: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbRegistros: TLabel
    Left = 167
    Top = 447
    Width = 78
    Height = 16
    Caption = '200 Registros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SbImprimir: TSpeedButton
    Left = 8
    Top = 475
    Width = 90
    Height = 25
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SbRelatorios: TSpeedButton
    Left = 104
    Top = 476
    Width = 90
    Height = 25
    Caption = 'Relat'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGridListagem: TDBGrid
    Left = 8
    Top = 128
    Width = 761
    Height = 313
    DataSource = DsListaClientes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = pMenu
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridListagemDblClick
    OnKeyDown = DBGridListagemKeyDown
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
        Width = 60
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
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CIDADE'
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
        Width = 200
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR_CLIENTE'
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
        Width = 100
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
        Width = 120
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
        Visible = True
      end>
  end
  object PSheet: TPanel
    Left = 8
    Top = 8
    Width = 762
    Height = 73
    BevelOuter = bvNone
    TabOrder = 4
    object PageControl: TPageControl
      Left = 0
      Top = 0
      Width = 762
      Height = 73
      ActivePage = TsFiltro1
      Align = alClient
      TabOrder = 0
      TabStop = False
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
        end
        object Label6: TLabel
          Left = 252
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
        end
        object Label7: TLabel
          Left = 327
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
          Left = 547
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
        end
        object SbBuscarCid: TSpeedButton
          Left = 503
          Top = 3
          Width = 23
          Height = 22
          OnClick = SbBuscarCidClick
        end
        object SbBuscarCli: TSpeedButton
          Left = 213
          Top = 3
          Width = 23
          Height = 22
          OnClick = SbBuscarCliClick
        end
        object EdtCodCidade: TEdit
          Left = 372
          Top = 3
          Width = 125
          Height = 21
          TabOrder = 2
          OnKeyPress = EdtCodCidadeKeyPress
          OnKeyUp = EdtCodCidadeKeyUp
        end
        object EdtCodCliente: TEdit
          Left = 82
          Top = 3
          Width = 125
          Height = 21
          TabOrder = 0
          OnKeyPress = EdtCodClienteKeyPress
          OnKeyUp = EdtCodClienteKeyUp
        end
        object EdtUf: TEdit
          Left = 275
          Top = 3
          Width = 36
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 2
          TabOrder = 1
          OnKeyPress = EdtUfKeyPress
        end
        object DtData: TDateTimePicker
          Left = 627
          Top = 3
          Width = 105
          Height = 21
          Date = 0.446670208330033300
          Time = 0.446670208330033300
          TabOrder = 3
          OnKeyPress = DtDataKeyPress
        end
      end
      object TsFiltro2: TTabSheet
        Caption = 'Outros'
        ImageIndex = 1
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
        end
        object Label16: TLabel
          Left = 332
          Top = 6
          Width = 80
          Height = 13
          Caption = 'Time de Futebol:'
        end
        object Label4: TLabel
          Left = 564
          Top = 6
          Width = 57
          Height = 13
          Caption = 'Tipo Pessoa'
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
          OnExit = EdtRendaExit
          OnKeyPress = EdtUfKeyPress
        end
        object EdtIdade: TEdit
          Left = 259
          Top = 3
          Width = 54
          Height = 21
          MaxLength = 6
          TabOrder = 2
          OnKeyPress = EdtUfKeyPress
        end
        object EdtTime: TEdit
          Left = 418
          Top = 3
          Width = 127
          Height = 21
          MaxLength = 30
          TabOrder = 3
          OnKeyPress = EdtUfKeyPress
        end
        object CbTipoPessoa: TComboBox
          Left = 627
          Top = 3
          Width = 102
          Height = 21
          Style = csDropDownList
          TabOrder = 4
          OnEnter = CbTipoPessoaEnter
          OnKeyPress = CbTipoPessoaKeyPress
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
          OnExit = EdtRendaP2Exit
          OnKeyPress = EdtUfKeyPress
        end
      end
    end
  end
  object BtnAtualizar: TButton
    Left = 271
    Top = 97
    Width = 90
    Height = 25
    Caption = 'Atualizar <F5>'
    ImageIndex = 4
    TabOrder = 0
    OnClick = BtnAtualizarClick
  end
  object BtnLimpar: TButton
    Left = 367
    Top = 97
    Width = 90
    Height = 25
    Caption = 'Limpar'
    ImageIndex = 3
    ImageMargins.Right = -10
    Images = udmComp.ImageList1
    TabOrder = 1
    OnClick = BtnLimparClick
  end
  object btnCancelar: TButton
    Left = 680
    Top = 476
    Width = 90
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = btnCancelarClick
  end
  object DsListaClientes: TDataSource
    DataSet = QryListaClientes
    Enabled = False
    Left = 704
    Top = 288
  end
  object pMenu: TPopupMenu
    Left = 704
    Top = 344
    object teste11: TMenuItem
      Caption = 'Abrir Cadastro'
      OnClick = teste11Click
    end
    object teste21: TMenuItem
      Caption = 'Selecionar'
      OnClick = teste21Click
    end
    object teste31: TMenuItem
      Caption = 'Selecionar Tudo'
    end
  end
  object QryListaClientes: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      #9'CLIENTES.COD_CLIENTE,'
      #9'CLIENTES.NOME_CLIENTE,'
      
        ' COALESCE(CLIENTES.ENDER_CLIENTE || '#39', '#39' || CLIENTES.NUM_CLIENTE' +
        ', CLIENTES.ENDER_CLIENTE) AS ENDER_CLIENTE,'
      #9'CLIENTES.BAIRRO_CLIENTE,'
      #9'CLIENTES.SEXO_CLIENTE,'
      #9'CLIENTES.DTNASC_CLIENTE,'
      #9'CLIENTES.FONER_CLIENTE,'
      #9'CLIENTES.CELULAR_CLIENTE,'
      ' CLIENTES.CPF_CLIENTE,'
      ' CLIENTES.CGC_CLIENTE,'
      #9'CLIENTES.RG_CLIENTE,'
      #9'CLIENTES.CODCIDADE_CLIENTE,'
      #9'CIDADES.NOME_CIDADE || '#39'-'#39' || CIDADES.UF_CIDADE AS NOME_CIDADE,'
      #9'CIDADES.CEP_CIDADE,'
      #9'CLIENTES.DEPENDENTES_CLIENTE,'
      #9'CLIENTES.DTCADASTRO_CLIENTE,'
      ' CLIENTES.CEP_CLIENTE,'
      #9'CLIENTES.ESTADOCIVIL_CLIENTE,'
      ' CLIENTES.EMAIL_CLIENTE,'
      #9'CLIENTES.CLASSIFICACAO_CLIENTE,'
      #9'CLIENTES.INSCRICAO_CLIENTE,'
      #9'CLIENTES.APELIDO_CLIENTE,'
      #9'CLIENTES.NOMEMAE_CLIENTE,'
      #9'CLIENTES.NOMEPAI_CLIENTE,'
      ' CLIENTES.DTADMISSAO_CLIENTE,'
      ' CLIENTES.DTALTERACAO_CLIENTE,'
      ' CLIENTES.TIPO_PESSOA,'
      ' CLIENTES.ENQUADRAMENTO_CLIENTE'
      'FROM'
      '    CLIENTES INNER JOIN CIDADES ON'
      '        CLIENTES.CODCIDADE_CLIENTE = CIDADES.COD_CIDADE'
      '')
    Transaction = dm.Trans
    Database = dm.DB
    SelectSQL.Strings = (
      'SELECT'
      #9'CLIENTES.COD_CLIENTE,'
      #9'CLIENTES.NOME_CLIENTE,'
      
        ' COALESCE(CLIENTES.ENDER_CLIENTE || '#39', '#39' || CLIENTES.NUM_CLIENTE' +
        ', CLIENTES.ENDER_CLIENTE) AS ENDER_CLIENTE,'
      #9'CLIENTES.BAIRRO_CLIENTE,'
      #9'CLIENTES.SEXO_CLIENTE,'
      #9'CLIENTES.DTNASC_CLIENTE,'
      #9'CLIENTES.FONER_CLIENTE,'
      #9'CLIENTES.CELULAR_CLIENTE,'
      ' CLIENTES.CPF_CLIENTE,'
      ' CLIENTES.CGC_CLIENTE,'
      #9'CLIENTES.RG_CLIENTE,'
      #9'CLIENTES.CODCIDADE_CLIENTE,'
      #9'CIDADES.NOME_CIDADE || '#39'-'#39' || CIDADES.UF_CIDADE AS NOME_CIDADE,'
      #9'CIDADES.CEP_CIDADE,'
      #9'CLIENTES.DEPENDENTES_CLIENTE,'
      #9'CLIENTES.DTCADASTRO_CLIENTE,'
      ' CLIENTES.CEP_CLIENTE,'
      #9'CLIENTES.ESTADOCIVIL_CLIENTE,'
      ' CLIENTES.EMAIL_CLIENTE,'
      #9'CLIENTES.CLASSIFICACAO_CLIENTE,'
      #9'CLIENTES.INSCRICAO_CLIENTE,'
      #9'CLIENTES.APELIDO_CLIENTE,'
      #9'CLIENTES.NOMEMAE_CLIENTE,'
      #9'CLIENTES.NOMEPAI_CLIENTE,'
      ' CLIENTES.DTADMISSAO_CLIENTE,'
      ' CLIENTES.DTALTERACAO_CLIENTE,'
      ' CLIENTES.TIPO_PESSOA,'
      ' CLIENTES.ENQUADRAMENTO_CLIENTE'
      'FROM'
      '    CLIENTES INNER JOIN CIDADES ON'
      '        CLIENTES.CODCIDADE_CLIENTE = CIDADES.COD_CIDADE'
      '')
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy HH:mm'
    DefaultFormats.DisplayFormatTime = 'HH:mm'
    Left = 616
    Top = 288
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
      Size = 15
      EmptyStrToNull = True
    end
    object QryListaClientesCELULAR_CLIENTE: TFIBStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 15
      EmptyStrToNull = True
    end
    object QryListaClientesCPF_CLIENTE: TFIBStringField
      FieldName = 'CPF_CLIENTE'
      Size = 11
      EmptyStrToNull = True
    end
    object QryListaClientesCGC_CLIENTE: TFIBStringField
      FieldName = 'CGC_CLIENTE'
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
      Size = 63
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
    object QryListaClientesTIPO_PESSOA: TFIBStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
      EmptyStrToNull = True
    end
    object QryListaClientesENQUADRAMENTO_CLIENTE: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'ENQUADRAMENTO_CLIENTE'
    end
  end
end
