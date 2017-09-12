object Frm_ConfigGeral: TFrm_ConfigGeral
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = 'Configura'#231#245'es Gerais'
  ClientHeight = 524
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object TreeView: TTreeView
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 121
    Height = 487
    Align = alLeft
    HideSelection = False
    Indent = 19
    TabOrder = 2
    TabStop = False
    OnChange = TreeViewChange
    Items.NodeData = {
      0302000000280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      0000000000010547006500720061006C002A0000000000000000000000FFFFFF
      FFFFFFFFFF0000000000000000000000000106560069007300750061006C00}
  end
  object Panel2: TPanel
    Left = 0
    Top = 493
    Width = 613
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BtnAplicar: TBitBtn
      AlignWithMargins = True
      Left = 523
      Top = 3
      Width = 90
      Height = 25
      Margins.Right = 0
      Align = alRight
      Caption = '&Aplicar'
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BtnAplicarClick
    end
    object BtnCancelar: TBitBtn
      AlignWithMargins = True
      Left = 337
      Top = 3
      Width = 90
      Height = 25
      Margins.Right = 0
      Align = alRight
      Cancel = True
      Caption = '&Cancelar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BtnCancelarClick
    end
    object BtnGravar: TBitBtn
      AlignWithMargins = True
      Left = 430
      Top = 3
      Width = 90
      Height = 25
      Margins.Right = 0
      Align = alRight
      Caption = '&OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BtnGravarClick
    end
  end
  object Panel1: TPanel
    Left = 127
    Top = 0
    Width = 486
    Height = 493
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 486
      Height = 458
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      TabStop = False
      object TabSheet1: TTabSheet
        Caption = 'Geral'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GbLocalizacao: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 122
          Width = 472
          Height = 113
          Align = alTop
          Caption = 'Localiza'#231#227'o'
          TabOrder = 1
          object LbEndereco: TLabel
            Left = 9
            Top = 53
            Width = 55
            Height = 13
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 27
            Top = 80
            Width = 37
            Height = 13
            Caption = 'Bairro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LbNum: TLabel
            Left = 381
            Top = 53
            Width = 16
            Height = 13
            Caption = 'N'#176'.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 283
            Top = 80
            Width = 59
            Height = 13
            Caption = 'Logradouro:'
          end
          object Panel3: TPanel
            Left = 14
            Top = 17
            Width = 445
            Height = 33
            BevelOuter = bvNone
            Caption = 'Panel3'
            TabOrder = 0
            object LbCid: TLabel
              Left = 9
              Top = 9
              Width = 41
              Height = 13
              Caption = 'Cidade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnBuscaCid: TSpeedButton
              Left = 301
              Top = 6
              Width = 23
              Height = 21
              Flat = True
              OnClick = BtnBuscaCidClick
            end
            object LbCEP: TLabel
              Left = 341
              Top = 10
              Width = 23
              Height = 13
              Caption = 'CEP:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdtCEP: TDBEdit
              Left = 371
              Top = 6
              Width = 72
              Height = 21
              DataField = 'CEP'
              DataSource = Ds
              TabOrder = 2
            end
            object EdtCodCid: TDBEdit
              Left = 55
              Top = 6
              Width = 25
              Height = 21
              DataField = 'CODCIDADE'
              DataSource = Ds
              TabOrder = 0
              OnExit = EdtCodCidExit
              OnKeyDown = EdtCodCidKeyDown
            end
            object EdtCidadeUF: TDBEdit
              Left = 86
              Top = 6
              Width = 208
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'CIDADE_UF'
              DataSource = Ds
              Enabled = False
              TabOrder = 1
            end
          end
          object EdtEnder: TDBEdit
            Left = 69
            Top = 50
            Width = 295
            Height = 21
            DataField = 'ENDER'
            DataSource = Ds
            TabOrder = 1
          end
          object EdtNum: TDBEdit
            Left = 404
            Top = 50
            Width = 53
            Height = 21
            DataField = 'NUMEMPRESA'
            DataSource = Ds
            TabOrder = 2
          end
          object EdtBairro: TDBEdit
            Left = 69
            Top = 77
            Width = 197
            Height = 21
            DataField = 'BAIRRO'
            DataSource = Ds
            TabOrder = 3
          end
          object EdtLograd: TDBEdit
            Left = 348
            Top = 77
            Width = 109
            Height = 21
            DataField = 'LOGRADOURO'
            DataSource = Ds
            TabOrder = 4
          end
        end
        object GbEmpresa: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 472
          Height = 113
          Align = alTop
          Caption = 'Empresa'
          TabOrder = 0
          object LbRazaoSoc: TLabel
            Left = 44
            Top = 24
            Width = 74
            Height = 13
            Caption = 'Raz'#227'o Social:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LbIE: TLabel
            Left = 12
            Top = 80
            Width = 106
            Height = 13
            Caption = 'Inscri'#231#227'o Estadual:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LbNomeFantas: TLabel
            Left = 32
            Top = 52
            Width = 86
            Height = 13
            Caption = 'Nome Fantasia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LbCNPJ: TLabel
            Left = 281
            Top = 80
            Width = 30
            Height = 13
            Caption = 'CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdtRazaoSoc: TDBEdit
            Left = 125
            Top = 21
            Width = 331
            Height = 21
            DataField = 'RAZAOSOCIAL'
            DataSource = Ds
            TabOrder = 0
          end
          object EdtNomeFant: TDBEdit
            Left = 125
            Top = 51
            Width = 331
            Height = 21
            DataField = 'NOME'
            DataSource = Ds
            TabOrder = 1
          end
          object EdtIE: TDBEdit
            Left = 125
            Top = 77
            Width = 140
            Height = 21
            DataField = 'INSCRICAO'
            DataSource = Ds
            TabOrder = 2
          end
          object EdtCNPJ: TDBEdit
            Left = 318
            Top = 78
            Width = 138
            Height = 21
            DataField = 'CNPJ'
            DataSource = Ds
            TabOrder = 3
          end
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 423
          Width = 472
          Height = 31
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
        end
        object GbContabil: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 360
          Width = 472
          Height = 57
          Align = alTop
          Caption = 'Cont'#225'bil'
          TabOrder = 3
          object Label1: TLabel
            Left = 12
            Top = 22
            Width = 93
            Height = 13
            Caption = 'Enquadramento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 257
            Top = 22
            Width = 89
            Height = 13
            Caption = '%Aliq. ICMS UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CbEnquadramento: TComboBox
            Left = 111
            Top = 19
            Width = 128
            Height = 21
            Style = csDropDownList
            TabOrder = 0
          end
          object EdtAliqICMS_UF: TDBEdit
            Left = 353
            Top = 19
            Width = 59
            Height = 21
            DataField = 'ALIQ_ICMS_INTERNA'
            DataSource = Ds
            TabOrder = 1
          end
        end
        object GroupBox6: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 241
          Width = 472
          Height = 113
          Align = alTop
          Caption = 'Contato'
          TabOrder = 2
          object Label18: TLabel
            Left = 12
            Top = 22
            Width = 55
            Height = 13
            Caption = 'Telefone 1:'
          end
          object Label19: TLabel
            Left = 35
            Top = 76
            Width = 32
            Height = 13
            Caption = 'E-mail:'
          end
          object Label20: TLabel
            Left = 246
            Top = 77
            Width = 32
            Height = 13
            Caption = 'Portal:'
          end
          object Label21: TLabel
            Left = 246
            Top = 22
            Width = 55
            Height = 13
            Caption = 'Telefone 2:'
          end
          object Label22: TLabel
            Left = 30
            Top = 47
            Width = 37
            Height = 13
            Caption = 'Celular:'
          end
          object Label23: TLabel
            Left = 246
            Top = 47
            Width = 23
            Height = 13
            Caption = 'FAX:'
          end
          object EdtFone1: TDBEdit
            Left = 73
            Top = 19
            Width = 156
            Height = 21
            DataField = 'FONE1'
            DataSource = Ds
            TabOrder = 0
          end
          object EdtCel: TDBEdit
            Left = 74
            Top = 44
            Width = 155
            Height = 21
            DataField = 'CEL'
            DataSource = Ds
            TabOrder = 2
          end
          object EdtEmail: TDBEdit
            Left = 74
            Top = 73
            Width = 155
            Height = 21
            DataField = 'EMAIL_CONFIG'
            DataSource = Ds
            TabOrder = 4
          end
          object EdtFone2: TDBEdit
            Left = 307
            Top = 19
            Width = 149
            Height = 21
            DataField = 'FONE2'
            DataSource = Ds
            TabOrder = 1
          end
          object EdtFax: TDBEdit
            Left = 276
            Top = 44
            Width = 180
            Height = 21
            TabOrder = 3
          end
          object EdtSite: TDBEdit
            Left = 285
            Top = 74
            Width = 171
            Height = 21
            TabOrder = 5
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Visual'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 3
          Width = 475
          Height = 423
          Margins.Left = 0
          Margins.Bottom = 4
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 65
            Width = 469
            Height = 97
            Align = alTop
            Caption = 'Formul'#225'rio Principal'
            TabOrder = 0
            object Label2: TLabel
              Left = 12
              Top = 25
              Width = 71
              Height = 13
              Caption = 'Caminho Logo:'
            end
            object CbHabDados: TCheckBox
              Left = 12
              Top = 69
              Width = 173
              Height = 17
              Caption = 'Exibir Nome Fantasia/Endere'#231'o '
              TabOrder = 0
            end
            object cbHabLogo: TCheckBox
              Left = 12
              Top = 50
              Width = 146
              Height = 17
              Caption = 'Habilitar Background Logo'
              TabOrder = 1
            end
            object edtPathLogo: TJvFilenameEdit
              Left = 87
              Top = 22
              Width = 356
              Height = 21
              Filter = 'JPG|*.jpg|PNG|*.png'
              ReadOnly = True
              TabOrder = 2
              Text = 'edtPathLogo'
            end
          end
          object GroupBox4: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 469
            Height = 56
            Align = alTop
            Caption = 'Controle de Temas'
            TabOrder = 1
            object Label4: TLabel
              Left = 12
              Top = 25
              Width = 73
              Height = 13
              Caption = 'Escolher Tema:'
            end
            object CmbTema: TComboBox
              Left = 88
              Top = 22
              Width = 355
              Height = 21
              Style = csDropDownList
              TabOrder = 0
              Items.Strings = (
                '')
            end
          end
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 458
      Width = 486
      Height = 35
      Align = alBottom
      TabOrder = 1
      object Label8: TLabel
        Left = 2
        Top = 15
        Width = 169
        Height = 14
        Align = alClient
        Alignment = taCenter
        Caption = 'Tela de Configura'#231#245'es Gerais...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object QryConfig: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CONFIG'
      'SET '
      '    RAZAOSOCIAL = :RAZAOSOCIAL,'
      '    NOME = :NOME,'
      '    INSCRICAO = :INSCRICAO,'
      '    CNPJ = :CNPJ,'
      '    FONE1 = :FONE1,'
      '    FONE2 = :FONE2,'
      '    CEL = :CEL,'
      '    EMAIL_CONFIG = :EMAIL_CONFIG,'
      '    CODCIDADE = :CODCIDADE,'
      '    ENDER = :ENDER,'
      '    LOGRADOURO = :LOGRADOURO,'
      '    NUMEMPRESA = :NUMEMPRESA,'
      '    BAIRRO = :BAIRRO,'
      '    LOGO = :LOGO,'
      '    PRINTLOGO_PRINCIPAL = :PRINTLOGO_PRINCIPAL,'
      '    PRINTDETALHES_PRINCIPAL = :PRINTDETALHES_PRINCIPAL,'
      '    TIPOTEMA = :TIPOTEMA,'
      '    TIPOENQUADRAMENTOEMPRESA = :TIPOENQUADRAMENTOEMPRESA,'
      '    ALIQ_ICMS_INTERNA = :ALIQ_ICMS_INTERNA'
      'WHERE'
      '    COD_CONFIG = :OLD_COD_CONFIG'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CONFIG'
      'WHERE'
      '        COD_CONFIG = :OLD_COD_CONFIG'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CONFIG('
      '    COD_CONFIG,'
      '    RAZAOSOCIAL,'
      '    NOME,'
      '    INSCRICAO,'
      '    CNPJ,'
      '    FONE1,'
      '    FONE2,'
      '    CEL,'
      '    EMAIL_CONFIG,'
      '    CODCIDADE,'
      '    ENDER,'
      '    LOGRADOURO,'
      '    NUMEMPRESA,'
      '    BAIRRO,'
      '    LOGO,'
      '    PRINTLOGO_PRINCIPAL,'
      '    PRINTDETALHES_PRINCIPAL,'
      '    TIPOTEMA,'
      '    TIPOENQUADRAMENTOEMPRESA,'
      '    ALIQ_ICMS_INTERNA'
      ')'
      'VALUES('
      '    :COD_CONFIG,'
      '    :RAZAOSOCIAL,'
      '    :NOME,'
      '    :INSCRICAO,'
      '    :CNPJ,'
      '    :FONE1,'
      '    :FONE2,'
      '    :CEL,'
      '    :EMAIL_CONFIG,'
      '    :CODCIDADE,'
      '    :ENDER,'
      '    :LOGRADOURO,'
      '    :NUMEMPRESA,'
      '    :BAIRRO,'
      '    :LOGO,'
      '    :PRINTLOGO_PRINCIPAL,'
      '    :PRINTDETALHES_PRINCIPAL,'
      '    :TIPOTEMA,'
      '    :TIPOENQUADRAMENTOEMPRESA,'
      '    :ALIQ_ICMS_INTERNA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '      C.COD_CONFIG,'
      '      C.RAZAOSOCIAL,'
      '      C.NOME,'
      '      C.INSCRICAO,'
      '      C.CNPJ,'
      '      C.FONE1,'
      '      C.FONE2,'
      '      C.CEL,'
      '      C.EMAIL_CONFIG,'
      '      C.CODCIDADE,'
      '      CI.NOME_CIDADE,'
      '      CI.NOME_CIDADE || '#39'-'#39' || CI.UF_CIDADE AS CIDADE_UF,'
      '      CI.UF_CIDADE,'
      '      C.ENDER,'
      '      COALESCE(CI.CEP_CIDADE, C.CEP) AS CEP,'
      '      C.CEP AS CEP_CONFIG,'
      '      C.LOGRADOURO,'
      '      C.NUMEMPRESA,'
      '      C.BAIRRO,'
      '      C.LOGO,'
      '      C.PRINTLOGO_PRINCIPAL,'
      '      C.PRINTDETALHES_PRINCIPAL,'
      '      C.TIPOTEMA,'
      '      C.TIPOENQUADRAMENTOEMPRESA,'
      '      C.ALIQ_ICMS_INTERNA'
      
        'FROM CONFIG C LEFT JOIN CIDADES CI ON C.CODCIDADE = CI.COD_CIDAD' +
        'E'
      'WHERE(  C.COD_CONFIG = :COD'
      '     ) and (     C.COD_CONFIG = :OLD_COD_CONFIG'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '      C.COD_CONFIG,'
      '      C.RAZAOSOCIAL,'
      '      C.NOME,'
      '      C.INSCRICAO,'
      '      C.CNPJ,'
      '      C.FONE1,'
      '      C.FONE2,'
      '      C.CEL,'
      '      C.EMAIL_CONFIG,'
      '      C.CODCIDADE,'
      '      CI.NOME_CIDADE,'
      '      CI.NOME_CIDADE || '#39'-'#39' || CI.UF_CIDADE AS CIDADE_UF,'
      '      CI.UF_CIDADE,'
      '      C.ENDER,'
      '      COALESCE(CI.CEP_CIDADE, C.CEP) AS CEP,'
      '      C.CEP AS CEP_CONFIG,'
      '      C.LOGRADOURO,'
      '      C.NUMEMPRESA,'
      '      C.BAIRRO,'
      '      C.LOGO,'
      '      C.PRINTLOGO_PRINCIPAL,'
      '      C.PRINTDETALHES_PRINCIPAL,'
      '      C.TIPOTEMA,'
      '      C.TIPOENQUADRAMENTOEMPRESA,'
      '      C.ALIQ_ICMS_INTERNA'
      
        'FROM CONFIG C LEFT JOIN CIDADES CI ON C.CODCIDADE = CI.COD_CIDAD' +
        'E'
      'WHERE C.COD_CONFIG = :COD')
    Transaction = dm.Trans
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '      C.COD_CONFIG,'
      '      C.RAZAOSOCIAL,'
      '      C.NOME,'
      '      C.INSCRICAO,'
      '      C.CNPJ,'
      '      C.FONE1,'
      '      C.FONE2,'
      '      C.CEL,'
      '      C.EMAIL_CONFIG,'
      '      C.CODCIDADE,'
      '      CI.NOME_CIDADE,'
      '      CI.NOME_CIDADE || '#39'-'#39' || CI.UF_CIDADE AS CIDADE_UF,'
      '      CI.UF_CIDADE,'
      '      C.ENDER,'
      '      COALESCE(CI.CEP_CIDADE, C.CEP) AS CEP,'
      '      C.CEP AS CEP_CONFIG,'
      '      C.LOGRADOURO,'
      '      C.NUMEMPRESA,'
      '      C.BAIRRO,'
      '      C.LOGO,'
      '      C.PRINTLOGO_PRINCIPAL,'
      '      C.PRINTDETALHES_PRINCIPAL,'
      '      C.TIPOTEMA,'
      '      C.TIPOENQUADRAMENTOEMPRESA,'
      '      C.ALIQ_ICMS_INTERNA'
      
        'FROM CONFIG C LEFT JOIN CIDADES CI ON C.CODCIDADE = CI.COD_CIDAD' +
        'E'
      'WHERE C.COD_CONFIG = :COD')
    Left = 55
    Top = 235
    object QryConfigCOD_CONFIG: TFIBIntegerField
      FieldName = 'COD_CONFIG'
    end
    object QryConfigRAZAOSOCIAL: TFIBStringField
      FieldName = 'RAZAOSOCIAL'
      OnGetText = QryConfigRAZAOSOCIALGetText
      OnSetText = QryConfigRAZAOSOCIALSetText
      Size = 60
      EmptyStrToNull = True
    end
    object QryConfigNOME: TFIBStringField
      FieldName = 'NOME'
      OnGetText = QryConfigRAZAOSOCIALGetText
      OnSetText = QryConfigRAZAOSOCIALSetText
      Size = 60
      EmptyStrToNull = True
    end
    object QryConfigINSCRICAO: TFIBStringField
      FieldName = 'INSCRICAO'
      Size = 15
      EmptyStrToNull = True
    end
    object QryConfigCNPJ: TFIBStringField
      FieldName = 'CNPJ'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
      EmptyStrToNull = True
    end
    object QryConfigFONE1: TFIBStringField
      FieldName = 'FONE1'
      Size = 15
      EmptyStrToNull = True
    end
    object QryConfigFONE2: TFIBStringField
      DisplayWidth = 15
      FieldName = 'FONE2'
      Size = 15
      EmptyStrToNull = True
    end
    object QryConfigEMAIL_CONFIG: TFIBStringField
      FieldName = 'EMAIL_CONFIG'
      Size = 60
      EmptyStrToNull = True
    end
    object QryConfigCODCIDADE: TFIBIntegerField
      Alignment = taCenter
      FieldName = 'CODCIDADE'
    end
    object QryConfigCIDADE_UF: TFIBStringField
      FieldName = 'CIDADE_UF'
      ReadOnly = True
      Size = 63
      EmptyStrToNull = True
    end
    object QryConfigENDER: TFIBStringField
      FieldName = 'ENDER'
      OnGetText = QryConfigRAZAOSOCIALGetText
      OnSetText = QryConfigRAZAOSOCIALSetText
      Size = 60
      EmptyStrToNull = True
    end
    object QryConfigLOGRADOURO: TFIBStringField
      FieldName = 'LOGRADOURO'
      OnGetText = QryConfigRAZAOSOCIALGetText
      OnSetText = QryConfigRAZAOSOCIALSetText
      Size = 30
      EmptyStrToNull = True
    end
    object QryConfigNUMEMPRESA: TFIBStringField
      FieldName = 'NUMEMPRESA'
      Size = 10
      EmptyStrToNull = True
    end
    object QryConfigBAIRRO: TFIBStringField
      FieldName = 'BAIRRO'
      OnGetText = QryConfigRAZAOSOCIALGetText
      OnSetText = QryConfigRAZAOSOCIALSetText
      Size = 30
      EmptyStrToNull = True
    end
    object QryConfigLOGO: TFIBStringField
      FieldName = 'LOGO'
      Size = 100
      EmptyStrToNull = True
    end
    object QryConfigTIPOENQUADRAMENTOEMPRESA: TFIBSmallIntField
      FieldName = 'TIPOENQUADRAMENTOEMPRESA'
    end
    object QryConfigALIQ_ICMS_INTERNA: TFIBFloatField
      FieldName = 'ALIQ_ICMS_INTERNA'
    end
    object QryConfigCEL: TFIBStringField
      FieldName = 'CEL'
      Size = 15
      EmptyStrToNull = True
    end
    object QryConfigCEP: TFIBStringField
      FieldName = 'CEP'
      EditMask = '99999-999;0'
      Size = 8
      EmptyStrToNull = True
    end
    object QryConfigCEP_CONFIG: TFIBStringField
      FieldName = 'CEP_CONFIG'
      Size = 8
      EmptyStrToNull = True
    end
    object QryConfigPRINTLOGO_PRINCIPAL: TFIBBooleanField
      FieldName = 'PRINTLOGO_PRINCIPAL'
    end
    object QryConfigPRINTDETALHES_PRINCIPAL: TFIBBooleanField
      FieldName = 'PRINTDETALHES_PRINCIPAL'
    end
    object QryConfigUF_CIDADE: TFIBStringField
      FieldName = 'UF_CIDADE'
      Size = 2
      EmptyStrToNull = True
    end
    object QryConfigNOME_CIDADE: TFIBStringField
      FieldName = 'NOME_CIDADE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryConfigTIPOTEMA: TFIBSmallIntField
      FieldName = 'TIPOTEMA'
    end
  end
  object ErHandler: TpFibErrorHandler
    Left = 32
    Top = 103
  end
  object Ds: TDataSource
    DataSet = QryConfig
    Left = 78
    Top = 104
  end
  object OpenDlgPic: TOpenPictureDialog
    Left = 79
    Top = 167
  end
end
