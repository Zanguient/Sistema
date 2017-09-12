object Frm_CadGrupo: TFrm_CadGrupo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = 'Cadastro de Grupo'
  ClientHeight = 212
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbOperacao: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 395
    Height = 40
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrando Grupos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 294
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 184
    Width = 398
    Height = 25
    Margins.Right = 0
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnCancelar: TBitBtn
      AlignWithMargins = True
      Left = 308
      Top = 0
      Width = 90
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Cancelar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
        44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
        00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
        33833F333383F33300003333AA463362A433333333383F333833F33300003333
        6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
        33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
        6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
        000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
        333383333333F3330000333333322AAA4333333333333833333F333300003333
        333322A4333333333333338333F333330000333333344A433333333333333338
        3F333333000033333336A24333333333333333833F333333000033333336AA43
        33333333333333833F3333330000333333336663333333333333333888333333
        0000}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      AlignWithMargins = True
      Left = 122
      Top = 0
      Width = 90
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Gravar'
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
      OnClick = btnGravarClick
    end
    object btnDeletar: TBitBtn
      AlignWithMargins = True
      Left = 215
      Top = 0
      Width = 90
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Deletar'
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
      TabOrder = 1
      OnClick = btnDeletarClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 46
    Width = 401
    Height = 134
    Align = alTop
    TabOrder = 1
    object pnlCod: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 391
      Height = 21
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object btnGp: TSpeedButton
        Left = 170
        Top = 0
        Width = 23
        Height = 21
        Flat = True
        OnClick = btnGpClick
      end
      object lbCod: TLabel
        Left = 32
        Top = 5
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo: '
      end
      object edtCod: TEdit
        Left = 77
        Top = 0
        Width = 89
        Height = 21
        TabOrder = 0
        OnKeyDown = edtCodKeyDown
      end
    end
    object pnlNome: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 45
      Width = 391
      Height = 21
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object lbNome: TLabel
        Left = 22
        Top = 4
        Width = 50
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nome:'
      end
      object edtNome: TEdit
        Left = 77
        Top = 0
        Width = 297
        Height = 21
        TabOrder = 0
      end
    end
    object pnlDescricao: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 72
      Width = 391
      Height = 21
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object lbDescricao: TLabel
        Left = 22
        Top = 4
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o:'
      end
      object edtDescricao: TEdit
        Left = 77
        Top = 0
        Width = 297
        Height = 21
        TabOrder = 0
      end
    end
    object pnlGrupoSgp: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 99
      Width = 391
      Height = 21
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 3
      object btnSbg: TSpeedButton
        Left = 351
        Top = 0
        Width = 23
        Height = 21
        Flat = True
        OnClick = btnSbgClick
      end
      object lbSgp: TLabel
        Left = 39
        Top = 3
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Grupo:'
      end
      object edtSgNome: TEdit
        Left = 116
        Top = 0
        Width = 231
        Height = 21
        Color = clInactiveBorder
        Enabled = False
        TabOrder = 1
      end
      object edtSgCod: TEdit
        Left = 77
        Top = 0
        Width = 38
        Height = 21
        TabOrder = 0
        OnExit = edtSgCodExit
        OnKeyDown = edtSgCodKeyDown
      end
    end
  end
  object qryGrupo: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CLASSES'
      'SET '
      '    NOME_CLASSE = :NOME_CLASSE,'
      '    DESCRICAO_CLASSE = :DESCRICAO_CLASSE,'
      '    DTUPDATE_CLASSE = :DTUPDATE_CLASSE'
      'WHERE'
      '    COD_CLASSE = :OLD_COD_CLASSE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CLASSES'
      'WHERE'
      '        COD_CLASSE = :OLD_COD_CLASSE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CLASSES('
      '    COD_CLASSE,'
      '    NOME_CLASSE,'
      '    DESCRICAO_CLASSE,'
      '    DTUPDATE_CLASSE'
      ')'
      'VALUES('
      '    :COD_CLASSE,'
      '    :NOME_CLASSE,'
      '    :DESCRICAO_CLASSE,'
      '    :DTUPDATE_CLASSE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '      C.COD_CLASSE,'
      '      C.NOME_CLASSE,'
      '      C.DESCRICAO_CLASSE,'
      '      C.DTUPDATE_CLASSE'
      'FROM CLASSES C'
      'WHERE(  C.COD_CLASSE = :COD'
      '     ) and (     C.COD_CLASSE = :OLD_COD_CLASSE'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '      C.COD_CLASSE,'
      '      C.NOME_CLASSE,'
      '      C.DESCRICAO_CLASSE,'
      '      C.DTUPDATE_CLASSE'
      'FROM CLASSES C'
      'WHERE C.COD_CLASSE = :COD')
    Transaction = dm.Trans
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '      C.COD_CLASSE,'
      '      C.NOME_CLASSE,'
      '      C.DESCRICAO_CLASSE,'
      '      C.DTUPDATE_CLASSE'
      'FROM CLASSES C'
      'WHERE C.COD_CLASSE = :COD')
    Left = 248
    Top = 32
    object qryGrupoCOD_CLASSE: TFIBIntegerField
      FieldName = 'COD_CLASSE'
    end
    object qryGrupoNOME_CLASSE: TFIBStringField
      FieldName = 'NOME_CLASSE'
      Size = 60
      EmptyStrToNull = True
    end
    object qryGrupoDESCRICAO_CLASSE: TFIBStringField
      FieldName = 'DESCRICAO_CLASSE'
      Size = 60
      EmptyStrToNull = True
    end
    object qryGrupoDTUPDATE_CLASSE: TFIBDateTimeField
      FieldName = 'DTUPDATE_CLASSE'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
  end
  object qrySubgrupo: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SUBCLASSE'
      'SET '
      '    CODCLASSE_SUBCLASSE = :CODCLASSE_SUBCLASSE,'
      '    NOME_SUBCLASSE = :NOME_SUBCLASSE,'
      '    DTUPDATE_SUBCLASSE = :DTUPDATE_SUBCLASSE'
      'WHERE'
      '    COD_SUBCLASSE = :OLD_COD_SUBCLASSE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SUBCLASSE'
      'WHERE'
      '        COD_SUBCLASSE = :OLD_COD_SUBCLASSE'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SUBCLASSE('
      '    COD_SUBCLASSE,'
      '    CODCLASSE_SUBCLASSE,'
      '    NOME_SUBCLASSE,'
      '    DTUPDATE_SUBCLASSE'
      ')'
      'VALUES('
      '    :COD_SUBCLASSE,'
      '    :CODCLASSE_SUBCLASSE,'
      '    :NOME_SUBCLASSE,'
      '    :DTUPDATE_SUBCLASSE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '      SC.COD_SUBCLASSE,'
      '      SC.CODCLASSE_SUBCLASSE,'
      '      SC.NOME_SUBCLASSE,'
      '      SC.DTUPDATE_SUBCLASSE,'
      '      C.NOME_CLASSE'
      'FROM SUBCLASSE SC'
      
        '     INNER JOIN CLASSES C ON SC.CODCLASSE_SUBCLASSE = C.COD_CLAS' +
        'SE'
      'WHERE(  SC.COD_SUBCLASSE = :COD'
      '     ) and (     SC.COD_SUBCLASSE = :OLD_COD_SUBCLASSE'
      '     )'
      '    '
      ''
      '')
    SelectSQL.Strings = (
      'SELECT'
      '      SC.COD_SUBCLASSE,'
      '      SC.CODCLASSE_SUBCLASSE,'
      '      SC.NOME_SUBCLASSE,'
      '      SC.DTUPDATE_SUBCLASSE,'
      '      C.NOME_CLASSE'
      'FROM SUBCLASSE SC'
      
        '    INNER JOIN CLASSES C ON SC.CODCLASSE_SUBCLASSE = C.COD_CLASS' +
        'E'
      'WHERE SC.COD_SUBCLASSE = :COD'
      ''
      '')
    Transaction = dm.Trans
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '      SC.COD_SUBCLASSE,'
      '      SC.CODCLASSE_SUBCLASSE,'
      '      SC.NOME_SUBCLASSE,'
      '      SC.DTUPDATE_SUBCLASSE,'
      '      C.NOME_CLASSE'
      'FROM SUBCLASSE SC'
      
        '    INNER JOIN CLASSES C ON SC.CODCLASSE_SUBCLASSE = C.COD_CLASS' +
        'E'
      'WHERE SC.COD_SUBCLASSE = :COD'
      ''
      '')
    Left = 304
    Top = 32
    object qrySubgrupoCOD_SUBCLASSE: TFIBIntegerField
      FieldName = 'COD_SUBCLASSE'
    end
    object qrySubgrupoCODCLASSE_SUBCLASSE: TFIBIntegerField
      FieldName = 'CODCLASSE_SUBCLASSE'
    end
    object qrySubgrupoNOME_SUBCLASSE: TFIBStringField
      FieldName = 'NOME_SUBCLASSE'
      Size = 30
      EmptyStrToNull = True
    end
    object qrySubgrupoDTUPDATE_SUBCLASSE: TFIBDateTimeField
      FieldName = 'DTUPDATE_SUBCLASSE'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object qrySubgrupoNOME_CLASSE: TFIBStringField
      FieldName = 'NOME_CLASSE'
      Size = 60
      EmptyStrToNull = True
    end
  end
end
