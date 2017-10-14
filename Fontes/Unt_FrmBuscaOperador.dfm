object Frm_BuscaOperador: TFrm_BuscaOperador
  Left = 0
  Top = 0
  Caption = 'Busca Operador'
  ClientHeight = 393
  ClientWidth = 684
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
  object DbgBuscaOperador: TDBGrid
    Left = 8
    Top = 112
    Width = 667
    Height = 242
    DataSource = DsBuscaProduto
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
    OnDblClick = DbgBuscaOperadorDblClick
    OnKeyDown = DbgBuscaOperadorKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_VENDEDOR'
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
        FieldName = 'NOME_VENDEDOR'
        Title.Caption = 'Operador'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 330
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'STATUS_VENDEDOR'
        Title.Alignment = taRightJustify
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
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
    TabOrder = 5
    object RbCod: TRadioButton
      Left = 16
      Top = 15
      Width = 113
      Height = 17
      Caption = 'Buscar por C'#243'digo'
      TabOrder = 0
      WordWrap = True
    end
    object RbOperador: TRadioButton
      Left = 193
      Top = 15
      Width = 113
      Height = 17
      Caption = 'Buscar por Produto'
      TabOrder = 1
      WordWrap = True
    end
  end
  object BtnSelecionar: TButton
    Left = 239
    Top = 362
    Width = 90
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 3
    WordWrap = True
    OnClick = BtnSelecionarClick
  end
  object BtnCancelar: TButton
    Left = 335
    Top = 362
    Width = 90
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BtnCancelarClick
  end
  object BtnBusca: TBitBtn
    Left = 653
    Top = 55
    Width = 23
    Height = 22
    TabOrder = 1
    TabStop = False
    OnClick = BtnBuscaClick
  end
  object QryBuscaOperador: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    V.COD_VENDEDOR,'
      '    V.NOME_VENDEDOR,'
      '    V.STATUS_VENDEDOR'
      'FROM VENDEDORES V')
    Transaction = dm.Trans
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '    V.COD_VENDEDOR,'
      '    V.NOME_VENDEDOR,'
      '    V.STATUS_VENDEDOR'
      'FROM VENDEDORES V')
    Left = 368
    Top = 168
    object QryBuscaOperadorCOD_VENDEDOR: TFIBIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object QryBuscaOperadorNOME_VENDEDOR: TFIBStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
      EmptyStrToNull = True
    end
    object QryBuscaOperadorSTATUS_VENDEDOR: TFIBStringField
      FieldName = 'STATUS_VENDEDOR'
      OnGetText = QryBuscaOperadorSTATUS_VENDEDORGetText
      Size = 1
      EmptyStrToNull = True
    end
  end
  object DsBuscaProduto: TDataSource
    DataSet = QryBuscaOperador
    Left = 464
    Top = 184
  end
end
