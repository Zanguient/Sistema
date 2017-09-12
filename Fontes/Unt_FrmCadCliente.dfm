object FormCadastroCliente: TFormCadastroCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 416
  ClientWidth = 494
  Color = clBtnFace
  TransparentColorValue = clDefault
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
  object LbOperacao: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 488
    Height = 29
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrando Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 211
  end
  object PnDown: TPanel
    AlignWithMargins = True
    Left = 6
    Top = 385
    Width = 485
    Height = 28
    Margins.Left = 6
    Margins.Top = 0
    Align = alBottom
    BevelOuter = bvNone
    Constraints.MaxHeight = 40
    Constraints.MinHeight = 25
    TabOrder = 0
    object BtnCancelar: TButton
      AlignWithMargins = True
      Left = 395
      Top = 0
      Width = 90
      Height = 28
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Cancelar'
      Constraints.MaxHeight = 28
      Constraints.MaxWidth = 90
      Constraints.MinHeight = 25
      Constraints.MinWidth = 90
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object BtnDeletar: TButton
      AlignWithMargins = True
      Left = 299
      Top = 0
      Width = 90
      Height = 28
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Deletar'
      Constraints.MaxHeight = 28
      Constraints.MaxWidth = 90
      Constraints.MinHeight = 25
      Constraints.MinWidth = 90
      ImageAlignment = iaCenter
      TabOrder = 2
      OnClick = BtnDeletarClick
    end
    object BtnLimpar: TButton
      AlignWithMargins = True
      Left = 203
      Top = 0
      Width = 90
      Height = 28
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Limpar <Esc>'
      Constraints.MaxHeight = 28
      Constraints.MaxWidth = 90
      Constraints.MinHeight = 25
      Constraints.MinWidth = 90
      TabOrder = 1
      OnClick = BtnLimparClick
    end
    object BtnSalvar: TButton
      AlignWithMargins = True
      Left = 107
      Top = 0
      Width = 90
      Height = 28
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alRight
      BiDiMode = bdLeftToRight
      Caption = 'Gravar (Ins)'
      Constraints.MaxHeight = 28
      Constraints.MaxWidth = 90
      Constraints.MinHeight = 25
      Constraints.MinWidth = 90
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = BtnSalvarClick
    end
  end
  object PageControl: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 38
    Width = 488
    Height = 344
    ActivePage = TSheetPrincipal
    Align = alClient
    TabOrder = 1
    TabStop = False
    OnChange = PageControlChange
    object TSheetPrincipal: TTabSheet
      Caption = 'Principal'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 15
        Top = 8
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label10: TLabel
        Left = 24
        Top = 139
        Width = 28
        Height = 13
        Caption = 'Sexo:'
      end
      object Label11: TLabel
        Left = 166
        Top = 139
        Width = 32
        Height = 13
        Caption = 'Idade:'
      end
      object Label12: TLabel
        Left = 286
        Top = 139
        Width = 37
        Height = 13
        Caption = 'Celular:'
      end
      object Label13: TLabel
        Left = 20
        Top = 246
        Width = 32
        Height = 13
        Caption = 'Bairro:'
      end
      object Label2: TLabel
        Left = 21
        Top = 110
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object Label5: TLabel
        Left = 364
        Top = 180
        Width = 23
        Height = 13
        Caption = 'CEP:'
      end
      object Label6: TLabel
        Left = 3
        Top = 216
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label7: TLabel
        Left = 349
        Top = 216
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object Label9: TLabel
        Left = 320
        Top = 246
        Width = 59
        Height = 13
        Caption = 'Logradouro:'
      end
      object btnBuscarCliente: TSpeedButton
        Left = 185
        Top = 5
        Width = 23
        Height = 21
        Flat = True
        OnClick = btnBuscarClienteClick
      end
      object LbTxtCpfCnpj: TLabel
        Left = 30
        Top = 81
        Width = 23
        Height = 13
        Caption = 'CPF:'
      end
      object LbRgIe: TLabel
        Left = 294
        Top = 81
        Width = 18
        Height = 13
        Caption = 'RG:'
      end
      object SbDown: TSpeedButton
        Left = 458
        Top = 78
        Width = 12
        Height = 21
        Flat = True
        Glyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        OnClick = SbDownClick
      end
      object CbIdade: TComboBox
        Left = 200
        Top = 136
        Width = 77
        Height = 21
        Style = csDropDownList
        TabOrder = 6
        OnEnter = CbIdadeEnter
        Items.Strings = (
          ''
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31'
          '32'
          '33'
          '34'
          '35'
          '36'
          '37'
          '38'
          '39'
          '40'
          '41'
          '42'
          '43'
          '44'
          '45'
          '46'
          '47'
          '48'
          '49'
          '50'
          '51'
          '52'
          '53'
          '54'
          '55'
          '56'
          '57'
          '58'
          '59'
          '60'
          '61'
          '62'
          '63'
          '64'
          '65'
          '66'
          '67'
          '68'
          '69'
          '70'
          '71'
          '72'
          '73'
          '74'
          '75'
          '76'
          '77'
          '78'
          '79'
          '80'
          '81'
          '82'
          '83'
          '84'
          '85'
          '86'
          '87'
          '88'
          '89'
          '90'
          '91'
          '92'
          '93'
          '94'
          '95'
          '96'
          '97'
          '98'
          '99'
          '100')
      end
      object GroupBox1: TGroupBox
        Left = 54
        Top = 162
        Width = 300
        Height = 45
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        object btnBuscarCidade: TSpeedButton
          Left = 245
          Top = 15
          Width = 23
          Height = 21
          Flat = True
          OnClick = btnBuscarCidadeClick
        end
        object btnCadCidade: TSpeedButton
          Left = 271
          Top = 15
          Width = 23
          Height = 21
          Flat = True
          OnClick = btnCadCidadeClick
        end
        object EdtNomeCidade: TEdit
          Left = 50
          Top = 15
          Width = 187
          Height = 21
          TabStop = False
          BevelOuter = bvNone
          Color = clInactiveBorder
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 25
          ParentFont = False
          TabOrder = 0
          OnKeyPress = EdtCodCidadeKeyPress
        end
        object EdtCodCidade: TEdit
          Left = 6
          Top = 15
          Width = 37
          Height = 21
          BevelOuter = bvNone
          MaxLength = 25
          TabOrder = 1
          OnExit = EdtCodCidadeExit
          OnKeyDown = EdtCodCidadeKeyDown
          OnKeyPress = EdtCodCidadeKeyPress
        end
      end
      object EdtCod: TEdit
        Left = 55
        Top = 5
        Width = 120
        Height = 21
        MaxLength = 15
        TabOrder = 0
        OnExit = EdtCodExit
        OnKeyDown = EdtCodKeyDown
      end
      object GbTipoCad: TGroupBox
        Left = 55
        Top = 33
        Width = 230
        Height = 40
        Caption = 'Tipo de Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object rbPf: TRadioButton
          Left = 17
          Top = 20
          Width = 88
          Height = 17
          Caption = 'Pessoa F'#237'sica'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbPfClick
          OnEnter = rbPfEnter
        end
        object rbPj: TRadioButton
          Left = 124
          Top = 20
          Width = 93
          Height = 17
          Caption = 'Pessoa Jur'#237'dica'
          TabOrder = 1
          OnClick = rbPjClick
        end
      end
      object CbAtivo: TCheckBox
        Left = 54
        Top = 270
        Width = 97
        Height = 17
        Caption = 'Cliente Ativo'
        TabOrder = 14
      end
      object edtNome: TDBEdit
        Left = 55
        Top = 107
        Width = 415
        Height = 21
        DataField = 'NOME_CLIENTE'
        DataSource = DSCliente
        TabOrder = 4
      end
      object EdtTelefone: TDBEdit
        Left = 324
        Top = 137
        Width = 146
        Height = 21
        DataField = 'CELULAR_CLIENTE'
        DataSource = DSCliente
        TabOrder = 7
      end
      object EdtEndereco: TDBEdit
        Left = 54
        Top = 214
        Width = 285
        Height = 21
        DataField = 'ENDER_CLIENTE'
        DataSource = DSCliente
        TabOrder = 10
      end
      object EdtNum: TDBEdit
        Left = 391
        Top = 213
        Width = 79
        Height = 21
        DataField = 'NUM_CLIENTE'
        DataSource = DSCliente
        TabOrder = 11
      end
      object EdtBairro: TDBEdit
        Left = 54
        Top = 243
        Width = 256
        Height = 21
        DataField = 'BAIRRO_CLIENTE'
        DataSource = DSCliente
        TabOrder = 12
      end
      object EdtLogradouro: TDBEdit
        Left = 380
        Top = 243
        Width = 90
        Height = 21
        TabOrder = 13
      end
      object edtCep: TDBEdit
        Left = 388
        Top = 177
        Width = 82
        Height = 21
        DataField = 'CEP_CIDADE'
        DataSource = DSCliente
        TabOrder = 9
      end
      object edtCpfCnpj: TMaskEdit
        Left = 55
        Top = 78
        Width = 134
        Height = 21
        EditMask = '000.000.000-00;0'
        MaxLength = 14
        TabOrder = 2
        Text = ''
      end
      object edtIeRg: TMaskEdit
        Left = 314
        Top = 78
        Width = 140
        Height = 21
        TabOrder = 3
        Text = 'edtIeRg'
      end
      object CbSexo: TComboBox
        Left = 55
        Top = 136
        Width = 102
        Height = 21
        Style = csDropDownList
        TabOrder = 5
        Items.Strings = (
          'Masculino'
          'Femenino'
          'Nenhum')
      end
    end
    object TSheetAdicional: TTabSheet
      Caption = 'Adicional'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 3
        Top = 16
        Width = 398
        Height = 113
        Caption = 'Informa'#231#245'es Pessoais'
        TabOrder = 0
        object Label16: TLabel
          Left = 17
          Top = 80
          Width = 80
          Height = 13
          Caption = 'Time de Futebol:'
        end
        object Label15: TLabel
          Left = 26
          Top = 53
          Width = 71
          Height = 13
          Caption = 'Renda Mensal:'
        end
        object Label3: TLabel
          Left = 58
          Top = 28
          Width = 39
          Height = 13
          Caption = 'Apelido:'
        end
        object EdtTime: TEdit
          Left = 103
          Top = 76
          Width = 244
          Height = 21
          TabOrder = 2
        end
        object EdtRenda: TEdit
          Left = 103
          Top = 49
          Width = 244
          Height = 21
          TabOrder = 1
          OnExit = EdtRendaExit
          OnKeyPress = EdtRendaKeyPress
        end
        object EdtApelido: TEdit
          Left = 103
          Top = 22
          Width = 244
          Height = 21
          TabOrder = 0
          OnKeyPress = EdtApelidoKeyPress
        end
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 143
        Width = 398
        Height = 146
        Caption = 'Dados dos Familiares'
        TabOrder = 1
        object Label4: TLabel
          Left = 48
          Top = 29
          Width = 63
          Height = 13
          Caption = 'Nome do Pai:'
        end
        object Label14: TLabel
          Left = 42
          Top = 56
          Width = 69
          Height = 13
          Caption = 'Nome da M'#227'e:'
        end
        object Label17: TLabel
          Left = 15
          Top = 84
          Width = 96
          Height = 13
          Caption = 'Renda Mensal (Pai):'
        end
        object Label18: TLabel
          Left = 9
          Top = 108
          Width = 102
          Height = 13
          Caption = 'Renda Mensal (M'#227'e):'
        end
        object EdtRendMae: TEdit
          Left = 117
          Top = 106
          Width = 244
          Height = 21
          TabOrder = 3
          OnExit = EdtRendMaeExit
          OnKeyPress = EdtRendMaeKeyPress
        end
        object EdtRendPai: TEdit
          Left = 117
          Top = 79
          Width = 244
          Height = 21
          TabOrder = 2
          OnExit = EdtRendPaiExit
        end
        object EdtNomeMae: TEdit
          Left = 117
          Top = 52
          Width = 244
          Height = 21
          TabOrder = 1
        end
        object EdtNomePai: TEdit
          Left = 117
          Top = 25
          Width = 244
          Height = 21
          TabOrder = 0
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Livre'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label19: TLabel
        Left = 4
        Top = 13
        Width = 302
        Height = 13
        Caption = 'Adicione aqui informa'#231#245'es e observa'#231#245'es adicionais do cliente: '
      end
      object MeLivre: TMemo
        Left = 2
        Top = 32
        Width = 423
        Height = 378
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Foto'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label20: TLabel
        AlignWithMargins = True
        Left = 7
        Top = 17
        Width = 302
        Height = 13
        Caption = 'Clique em procurar para adicionar uma foto no perfil do usu'#225'rio'
      end
      object Image: TImage
        AlignWithMargins = True
        Left = 8
        Top = 98
        Width = 203
        Height = 214
        AutoSize = True
        Center = True
        Proportional = True
      end
      object BtnProcurarImg: TButton
        Left = 88
        Top = 35
        Width = 75
        Height = 25
        Caption = 'Procurar'
        TabOrder = 0
        OnClick = BtnProcurarImgClick
      end
      object BtnLimparImg: TButton
        Left = 7
        Top = 35
        Width = 75
        Height = 25
        Caption = 'Limpar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnLimparImgClick
      end
      object EdtResultImg: TEdit
        Left = 8
        Top = 66
        Width = 415
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.ico;*.emf;*.w' +
      'mf)|*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.ico;*.emf;*.wm' +
      'f|GIF Image (*.gif)|*.gif|Portable Network Graphics (*.png)|*.pn' +
      'g|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|' +
      'Bitmaps (*.bmp)|*.bmp|TIFF Images (*.tif)|*.tif|TIFF Images (*.t' +
      'iff)|*.tiff|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf' +
      '|Metafiles (*.wmf)|*.wmf'
    InitialDir = 'C:\Cadastro Clientes\Fotos\Clientes'
    Left = 356
    Top = 5
  end
  object PopupMenu1: TPopupMenu
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 373
    Top = 70
    object teste11: TMenuItem
      Caption = 'IE Isento'
      OnClick = teste11Click
    end
  end
  object ACBrValidador: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    AjustarTamanho = True
    PermiteVazio = True
    Left = 286
    Top = 4
  end
  object QryCliente: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CLIENTES'
      'SET '
      '    NOME_CLIENTE = :NOME_CLIENTE,'
      '    ENDER_CLIENTE = :ENDER_CLIENTE,'
      '    NUM_CLIENTE = :NUM_CLIENTE,'
      '    BAIRRO_CLIENTE = :BAIRRO_CLIENTE,'
      '    SEXO_CLIENTE = :SEXO_CLIENTE,'
      '    DTNASC_CLIENTE = :DTNASC_CLIENTE,'
      '    FONER_CLIENTE = :FONER_CLIENTE,'
      '    CELULAR_CLIENTE = :CELULAR_CLIENTE,'
      '    CPF_CLIENTE = :CPF_CLIENTE,'
      '    CGC_CLIENTE = :CGC_CLIENTE,'
      '    RG_CLIENTE = :RG_CLIENTE,'
      '    CODCIDADE_CLIENTE = :CODCIDADE_CLIENTE,'
      '    DEPENDENTES_CLIENTE = :DEPENDENTES_CLIENTE,'
      '    DTCADASTRO_CLIENTE = :DTCADASTRO_CLIENTE,'
      '    CEP_CLIENTE = :CEP_CLIENTE,'
      '    ESTADOCIVIL_CLIENTE = :ESTADOCIVIL_CLIENTE,'
      '    EMAIL_CLIENTE = :EMAIL_CLIENTE,'
      '    CLASSIFICACAO_CLIENTE = :CLASSIFICACAO_CLIENTE,'
      '    INSCRICAO_CLIENTE = :INSCRICAO_CLIENTE,'
      '    APELIDO_CLIENTE = :APELIDO_CLIENTE,'
      '    NOMEMAE_CLIENTE = :NOMEMAE_CLIENTE,'
      '    NOMEPAI_CLIENTE = :NOMEPAI_CLIENTE,'
      '    DTADMISSAO_CLIENTE = :DTADMISSAO_CLIENTE,'
      '    DTALTERACAO_CLIENTE = :DTALTERACAO_CLIENTE,'
      '    ENQUADRAMENTO_CLIENTE = :ENQUADRAMENTO_CLIENTE'
      'WHERE'
      '    COD_CLIENTE = :OLD_COD_CLIENTE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CLIENTES'
      'WHERE'
      '        COD_CLIENTE = :OLD_COD_CLIENTE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CLIENTES('
      '    COD_CLIENTE,'
      '    NOME_CLIENTE,'
      '    ENDER_CLIENTE,'
      '    NUM_CLIENTE,'
      '    BAIRRO_CLIENTE,'
      '    SEXO_CLIENTE,'
      '    DTNASC_CLIENTE,'
      '    FONER_CLIENTE,'
      '    CELULAR_CLIENTE,'
      '    CPF_CLIENTE,'
      '    CGC_CLIENTE,'
      '    RG_CLIENTE,'
      '    CODCIDADE_CLIENTE,'
      '    DEPENDENTES_CLIENTE,'
      '    DTCADASTRO_CLIENTE,'
      '    CEP_CLIENTE,'
      '    ESTADOCIVIL_CLIENTE,'
      '    EMAIL_CLIENTE,'
      '    CLASSIFICACAO_CLIENTE,'
      '    INSCRICAO_CLIENTE,'
      '    APELIDO_CLIENTE,'
      '    NOMEMAE_CLIENTE,'
      '    NOMEPAI_CLIENTE,'
      '    DTADMISSAO_CLIENTE,'
      '    DTALTERACAO_CLIENTE,'
      '    ENQUADRAMENTO_CLIENTE'
      ')'
      'VALUES('
      '    :COD_CLIENTE,'
      '    :NOME_CLIENTE,'
      '    :ENDER_CLIENTE,'
      '    :NUM_CLIENTE,'
      '    :BAIRRO_CLIENTE,'
      '    :SEXO_CLIENTE,'
      '    :DTNASC_CLIENTE,'
      '    :FONER_CLIENTE,'
      '    :CELULAR_CLIENTE,'
      '    :CPF_CLIENTE,'
      '    :CGC_CLIENTE,'
      '    :RG_CLIENTE,'
      '    :CODCIDADE_CLIENTE,'
      '    :DEPENDENTES_CLIENTE,'
      '    :DTCADASTRO_CLIENTE,'
      '    :CEP_CLIENTE,'
      '    :ESTADOCIVIL_CLIENTE,'
      '    :EMAIL_CLIENTE,'
      '    :CLASSIFICACAO_CLIENTE,'
      '    :INSCRICAO_CLIENTE,'
      '    :APELIDO_CLIENTE,'
      '    :NOMEMAE_CLIENTE,'
      '    :NOMEPAI_CLIENTE,'
      '    :DTADMISSAO_CLIENTE,'
      '    :DTALTERACAO_CLIENTE,'
      '    :ENQUADRAMENTO_CLIENTE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      #9'CLIENTES.COD_CLIENTE,'
      #9'CLIENTES.NOME_CLIENTE,'
      #9'CLIENTES.ENDER_CLIENTE,'
      #9'CLIENTES.NUM_CLIENTE,'
      #9'CLIENTES.BAIRRO_CLIENTE,'
      #9'CLIENTES.SEXO_CLIENTE,'
      #9'CLIENTES.DTNASC_CLIENTE,'
      #9'CLIENTES.FONER_CLIENTE,'
      #9'CLIENTES.CELULAR_CLIENTE,'
      ' CLIENTES.CPF_CLIENTE,'
      ' CLIENTES.CGC_CLIENTE,'
      #9'CLIENTES.RG_CLIENTE,'
      #9'CLIENTES.CODCIDADE_CLIENTE,'
      #9'CIDADES.NOME_CIDADE,'
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
      'WHERE( '
      '    CLIENTES.COD_CLIENTE = :COD'
      '     ) and (     CLIENTES.COD_CLIENTE = :OLD_COD_CLIENTE'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      #9'CLIENTES.COD_CLIENTE,'
      #9'CLIENTES.NOME_CLIENTE,'
      #9'CLIENTES.ENDER_CLIENTE,'
      #9'CLIENTES.NUM_CLIENTE,'
      #9'CLIENTES.BAIRRO_CLIENTE,'
      #9'CLIENTES.SEXO_CLIENTE,'
      #9'CLIENTES.DTNASC_CLIENTE,'
      #9'CLIENTES.FONER_CLIENTE,'
      #9'CLIENTES.CELULAR_CLIENTE,'
      ' CLIENTES.CPF_CLIENTE,'
      ' CLIENTES.CGC_CLIENTE,'
      #9'CLIENTES.RG_CLIENTE,'
      #9'CLIENTES.CODCIDADE_CLIENTE,'
      #9'CIDADES.NOME_CIDADE,'
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
      'WHERE'
      '    CLIENTES.COD_CLIENTE = :COD')
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      #9'CLIENTES.COD_CLIENTE,'
      #9'CLIENTES.NOME_CLIENTE,'
      #9'CLIENTES.ENDER_CLIENTE,'
      #9'CLIENTES.NUM_CLIENTE,'
      #9'CLIENTES.BAIRRO_CLIENTE,'
      #9'CLIENTES.SEXO_CLIENTE,'
      #9'CLIENTES.DTNASC_CLIENTE,'
      #9'CLIENTES.FONER_CLIENTE,'
      #9'CLIENTES.CELULAR_CLIENTE,'
      ' CLIENTES.CPF_CLIENTE,'
      ' CLIENTES.CGC_CLIENTE,'
      #9'CLIENTES.RG_CLIENTE,'
      #9'CLIENTES.CODCIDADE_CLIENTE,'
      #9'CIDADES.NOME_CIDADE,'
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
      'WHERE'
      '    CLIENTES.COD_CLIENTE = :COD')
    Left = 223
    Top = 3
    object QryClienteCOD_CLIENTE: TFIBIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object QryClienteNOME_CLIENTE: TFIBStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryClienteENDER_CLIENTE: TFIBStringField
      FieldName = 'ENDER_CLIENTE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryClienteBAIRRO_CLIENTE: TFIBStringField
      FieldName = 'BAIRRO_CLIENTE'
      Size = 30
      EmptyStrToNull = True
    end
    object QryClienteSEXO_CLIENTE: TFIBSmallIntField
      FieldName = 'SEXO_CLIENTE'
      OnGetText = QryClienteSEXO_CLIENTEGetText
    end
    object QryClienteDTNASC_CLIENTE: TFIBDateField
      FieldName = 'DTNASC_CLIENTE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryClienteFONER_CLIENTE: TFIBStringField
      FieldName = 'FONER_CLIENTE'
      EditMask = '(00) 0000-0000;0'
      Size = 15
      EmptyStrToNull = True
    end
    object QryClienteCPF_CLIENTE: TFIBStringField
      DisplayWidth = 11
      FieldName = 'CPF_CLIENTE'
      EditMask = '###.###.###-##;0;_'
      Size = 11
      EmptyStrToNull = True
    end
    object QryClienteRG_CLIENTE: TFIBStringField
      FieldName = 'RG_CLIENTE'
      Size = 13
      EmptyStrToNull = True
    end
    object QryClienteCODCIDADE_CLIENTE: TFIBIntegerField
      FieldName = 'CODCIDADE_CLIENTE'
    end
    object QryClienteDEPENDENTES_CLIENTE: TFIBStringField
      FieldName = 'DEPENDENTES_CLIENTE'
      Size = 100
      EmptyStrToNull = True
    end
    object QryClienteDTCADASTRO_CLIENTE: TFIBDateField
      FieldName = 'DTCADASTRO_CLIENTE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryClienteCEP_CLIENTE: TFIBStringField
      FieldName = 'CEP_CLIENTE'
      EditMask = '00000-000;0'
      Size = 8
      EmptyStrToNull = True
    end
    object QryClienteESTADOCIVIL_CLIENTE: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'ESTADOCIVIL_CLIENTE'
    end
    object QryClienteEMAIL_CLIENTE: TFIBStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 100
      EmptyStrToNull = True
    end
    object QryClienteCLASSIFICACAO_CLIENTE: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'CLASSIFICACAO_CLIENTE'
    end
    object QryClienteINSCRICAO_CLIENTE: TFIBStringField
      FieldName = 'INSCRICAO_CLIENTE'
      Size = 15
      EmptyStrToNull = True
    end
    object QryClienteAPELIDO_CLIENTE: TFIBStringField
      FieldName = 'APELIDO_CLIENTE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryClienteNOMEMAE_CLIENTE: TFIBStringField
      FieldName = 'NOMEMAE_CLIENTE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryClienteNOMEPAI_CLIENTE: TFIBStringField
      FieldName = 'NOMEPAI_CLIENTE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryClienteDTADMISSAO_CLIENTE: TFIBDateField
      FieldName = 'DTADMISSAO_CLIENTE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryClienteDTALTERACAO_CLIENTE: TFIBDateTimeField
      FieldName = 'DTALTERACAO_CLIENTE'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object QryClienteTIPO_PESSOA: TFIBStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
      EmptyStrToNull = True
    end
    object QryClienteENQUADRAMENTO_CLIENTE: TFIBSmallIntField
      DefaultExpression = '0'
      FieldName = 'ENQUADRAMENTO_CLIENTE'
    end
    object QryClienteNOME_CIDADE: TFIBStringField
      FieldName = 'NOME_CIDADE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryClienteCEP_CIDADE: TFIBStringField
      FieldName = 'CEP_CIDADE'
      EditMask = '00000-000;0'
      Size = 8
      EmptyStrToNull = True
    end
    object QryClienteCGC_CLIENTE: TFIBStringField
      FieldName = 'CGC_CLIENTE'
      Size = 14
      EmptyStrToNull = True
    end
    object QryClienteNUM_CLIENTE: TFIBStringField
      FieldName = 'NUM_CLIENTE'
      Size = 30
      EmptyStrToNull = True
    end
    object QryClienteCELULAR_CLIENTE: TFIBStringField
      FieldName = 'CELULAR_CLIENTE'
      EditMask = '(00) 0 0000-0000;0'
      Size = 15
      EmptyStrToNull = True
    end
  end
  object DSCliente: TDataSource
    DataSet = QryCliente
    Left = 314
    Top = 70
  end
  object ActionList: TActionList
    Left = 261
    Top = 69
    object ActGravar: TAction
      Caption = 'Gravar (Ins)'
    end
    object ActLimpar: TAction
      Caption = 'Limpar (Esc)'
    end
    object ActDeletar: TAction
      Caption = 'Deletar'
    end
    object ActCancelar: TAction
      Caption = 'Cancelar'
    end
  end
end
