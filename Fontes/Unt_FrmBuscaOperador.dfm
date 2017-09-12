object Frm_BuscaGen: TFrm_BuscaGen
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Busca Operador'
  ClientHeight = 403
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotton: TPanel
    Left = 0
    Top = 368
    Width = 625
    Height = 35
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    object pnlWrapBtn2: TPanel
      Left = 205
      Top = 0
      Width = 212
      Height = 35
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object btnCancelar: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 100
        Height = 29
        Align = alRight
        Caption = 'Cancelar'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 0
      end
      object btnSelecionar: TBitBtn
        AlignWithMargins = True
        Left = 109
        Top = 3
        Width = 100
        Height = 29
        Align = alRight
        Caption = 'Selecionar'
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
        ModalResult = 1
        NumGlyphs = 2
        TabOrder = 1
      end
    end
  end
  object pnlBtnTop: TPanel
    Left = 0
    Top = 74
    Width = 625
    Height = 35
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object pnlWrapBtnTop: TPanel
      Left = 206
      Top = 0
      Width = 212
      Height = 35
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object btnAtualizar: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 100
        Height = 29
        Align = alLeft
        Caption = 'Atualizar'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        TabOrder = 0
      end
      object btnLimpar: TBitBtn
        AlignWithMargins = True
        Left = 109
        Top = 3
        Width = 100
        Height = 29
        Align = alLeft
        Cancel = True
        Caption = 'Limpar'
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
      end
    end
  end
  object pnlBusca: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 619
    Height = 21
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnBusca: TSpeedButton
      AlignWithMargins = True
      Left = 596
      Top = 0
      Width = 23
      Height = 21
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Flat = True
      ExplicitLeft = 152
      ExplicitTop = 8
      ExplicitHeight = 22
    end
    object edtBusca: TEdit
      Left = 0
      Top = 0
      Width = 593
      Height = 21
      Align = alClient
      TabOrder = 0
    end
  end
  object rbgFiltro: TRadioGroup
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 619
    Height = 41
    Align = alTop
    Columns = 8
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 109
    Width = 625
    Height = 259
    Align = alClient
    DataSource = dsDbgOperador
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_VENDEDOR'
        Title.Alignment = taRightJustify
        Title.Caption = 'C'#243'digo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_VENDEDOR'
        Title.Caption = 'Operador'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 60
        Visible = True
      end>
  end
  object qryBuscaOperador: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    V.COD_VENDEDOR,'
      '    V.NOME_VENDEDOR,'
      'CASE (V.STATUS_VENDEDOR)'
      '    WHEN '#39'A'#39' THEN '#39'Ativo'#39
      '    WHEN '#39'I'#39' THEN '#39'Inativo'#39
      '    ELSE '#39'Desconhecido'#39
      'END AS STATUS'
      'FROM VENDEDORES V'
      '')
    Transaction = dm.Trans
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '    V.COD_VENDEDOR,'
      '    V.NOME_VENDEDOR,'
      'CASE (V.STATUS_VENDEDOR)'
      '    WHEN '#39'A'#39' THEN '#39'Ativo'#39
      '    WHEN '#39'I'#39' THEN '#39'Inativo'#39
      '    ELSE '#39'Desconhecido'#39
      'END AS STATUS'
      'FROM VENDEDORES V'
      '')
    Left = 432
    Top = 165
    object qryBuscaOperadorCOD_VENDEDOR: TFIBIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object qryBuscaOperadorNOME_VENDEDOR: TFIBStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
      EmptyStrToNull = True
    end
    object qryBuscaOperadorSTATUS: TFIBStringField
      FieldName = 'STATUS'
      Size = 12
      EmptyStrToNull = True
    end
  end
  object dsDbgOperador: TDataSource
    DataSet = qryBuscaOperador
    Left = 460
    Top = 165
  end
end
