object Frm_Busca: TFrm_Busca
  Left = 0
  Top = 0
  BorderWidth = 5
  Caption = 'Busca'
  ClientHeight = 451
  ClientWidth = 675
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
  object dbgBusca: TDBGrid
    Left = 0
    Top = 114
    Width = 675
    Height = 295
    Align = alClient
    DataSource = dsBusca
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
    OnDblClick = dbgBuscaDblClick
    OnKeyDown = dbgBuscaKeyDown
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 89
    Width = 669
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object LbRegistros: TLabel
      AlignWithMargins = True
      Left = 153
      Top = 3
      Width = 64
      Height = 16
      Align = alLeft
      Caption = '0 Registros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 165
      ExplicitTop = 25
    end
    object LbTxtRegistros: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 144
      Height = 16
      Align = alLeft
      Caption = 'Registros Encotrados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 15
      ExplicitTop = 25
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 409
    Width = 675
    Height = 42
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 4
    object pnlButtons: TPanel
      AlignWithMargins = True
      Left = 252
      Top = 14
      Width = 211
      Height = 35
      Margins.Top = 7
      Margins.Bottom = 0
      Align = alCustom
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 249
      ExplicitTop = 7
      object btnSelecionar: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 100
        Height = 29
        Align = alLeft
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
        TabOrder = 0
        OnClick = BtnSelecionarClick
      end
      object btnCacnelar: TBitBtn
        AlignWithMargins = True
        Left = 109
        Top = 3
        Width = 100
        Height = 29
        Align = alLeft
        Caption = 'Canelar'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btnCacnelarClick
      end
    end
  end
  object pgControl: TPageControl
    Left = 0
    Top = 0
    Width = 675
    Height = 54
    ActivePage = tbGrupo
    Align = alTop
    TabOrder = 0
    object tbGrupo: TTabSheet
      Caption = 'Grupo'
      object rbGrupo: TRadioButton
        AlignWithMargins = True
        Left = 10
        Top = 0
        Width = 103
        Height = 21
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Nome Grupo'
        TabOrder = 0
        WordWrap = True
      end
      object rbCodGrupo: TRadioButton
        AlignWithMargins = True
        Left = 133
        Top = 0
        Width = 109
        Height = 21
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'C'#243'digo Grupo'
        TabOrder = 1
        WordWrap = True
      end
    end
    object tbSubgrupo: TTabSheet
      Caption = 'Subgrupo'
      ImageIndex = 1
      object rbGrupoPai: TRadioButton
        AlignWithMargins = True
        Left = 10
        Top = 0
        Width = 119
        Height = 21
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Nome Grupo Pai'
        TabOrder = 0
        WordWrap = True
      end
      object rbSubgrupo: TRadioButton
        AlignWithMargins = True
        Left = 293
        Top = 0
        Width = 116
        Height = 21
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Nome Subgrupo'
        TabOrder = 1
        WordWrap = True
      end
      object rbCodSubgrupo: TRadioButton
        AlignWithMargins = True
        Left = 149
        Top = 0
        Width = 124
        Height = 21
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'C'#243'digo Subgrupo'
        TabOrder = 2
        WordWrap = True
      end
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 59
    Width = 675
    Height = 24
    Margins.Left = 0
    Margins.Top = 5
    Margins.Right = 0
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object BtnBusca: TBitBtn
      AlignWithMargins = True
      Left = 651
      Top = 0
      Width = 23
      Height = 24
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alRight
      TabOrder = 0
      TabStop = False
      OnClick = BtnBuscaClick
      ExplicitLeft = 654
      ExplicitTop = -2
    end
    object EdtBusca: TEdit
      Left = 0
      Top = 0
      Width = 646
      Height = 24
      Align = alClient
      TabOrder = 1
      OnKeyPress = EdtBuscaKeyPress
      ExplicitHeight = 21
    end
  end
  object dsBusca: TDataSource
    DataSet = qryBusca
    Left = 480
    Top = 160
  end
  object qryBusca: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '      C.COD_CLASSE,'
      '      C.NOME_CLASSE,'
      '      C.DESCRICAO_CLASSE'
      'FROM CLASSES C')
    Transaction = dm.Trans
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '      C.COD_CLASSE,'
      '      C.NOME_CLASSE,'
      '      C.DESCRICAO_CLASSE'
      'FROM CLASSES C')
    Left = 432
    Top = 152
  end
end
