object FrmCadOperador: TFrmCadOperador
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = 'Cadastro de Operador'
  ClientHeight = 254
  ClientWidth = 356
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LbOperacao: TLabel
    Left = 0
    Top = 0
    Width = 356
    Height = 33
    Margins.Top = 10
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de Operador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 3
    ExplicitTop = 10
    ExplicitWidth = 262
  end
  object PnDown: TPanel
    AlignWithMargins = True
    Left = 6
    Top = 223
    Width = 347
    Height = 28
    Margins.Left = 6
    Margins.Top = 0
    Align = alBottom
    BevelOuter = bvNone
    Constraints.MaxHeight = 56
    Constraints.MinHeight = 25
    TabOrder = 0
    ExplicitTop = 221
    object BtnCancelar: TButton
      AlignWithMargins = True
      Left = 65
      Top = 0
      Width = 90
      Height = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Cancelar'
      Constraints.MaxHeight = 25
      Constraints.MaxWidth = 90
      Constraints.MinHeight = 25
      Constraints.MinWidth = 90
      TabOrder = 2
      OnClick = BtnCancelarClick
      ExplicitLeft = 84
      ExplicitTop = -8
    end
    object BtnDeletar: TButton
      AlignWithMargins = True
      Left = 158
      Top = 0
      Width = 90
      Height = 25
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Deletar'
      Constraints.MaxHeight = 25
      Constraints.MaxWidth = 90
      Constraints.MinHeight = 25
      Constraints.MinWidth = 90
      ImageAlignment = iaCenter
      TabOrder = 1
      OnClick = BtnDeletarClick
      ExplicitLeft = 225
    end
    object BtnSalvar: TButton
      AlignWithMargins = True
      Left = 254
      Top = 0
      Width = 90
      Height = 25
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alRight
      BiDiMode = bdLeftToRight
      Caption = 'Gravar (Ins)'
      Constraints.MaxHeight = 25
      Constraints.MaxWidth = 90
      Constraints.MinHeight = 25
      Constraints.MinWidth = 90
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = BtnSalvarClick
      ExplicitLeft = 257
      ExplicitTop = -8
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 350
    Height = 184
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 272
    ExplicitWidth = 384
    ExplicitHeight = 245
    object Label7: TLabel
      Left = 21
      Top = 47
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 15
      Top = 20
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object btnBuscaOper: TSpeedButton
      Left = 145
      Top = 17
      Width = 22
      Height = 21
      Flat = True
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBA1A2A293
        9393F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CFCFDCD4D4C5C8C89999
        99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7F7C1B1B1D5D1D1A7A9A9BFBFBF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFF6F6F6C6B6B6D7D5D58A8B8BE4E4E4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFEFEFEFCDC0C0CDCECE868686FAFAFAFEFE
        FEFDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFFFFFFE8E8E8D5CCCCAFB0B0A1A1A1FFFFFFFFFFFF
        FEFEFEF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFDFDFDFFFFFFE3E1E1DED8D8909090A2A3A39090918C8B8A86
        8585787878939494EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDFFFFFFD3D1D1BDBDBEC8C5BFF7F4E7FFFFF6FFFFFCFFFC
        F7D1CECC707070C6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFEFFFFFFB5B6B7D8CEC5FCF7EEFFFDF1FDFDF5FDFDF7FEFEF8FFFFFC
        F4EFEE6F706FD7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFF
        FFE2E2E3C4BDB7F9EDE3FFF9E9FDFAEDFEFAF2FEFCF5FEFDF6FCFDF6FFFCFBDE
        D6D6727372FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFC4C5C5
        DCC6BAFEF3E7FDF7E4FEF9EBFEF9F0FFFAF2FEFBF4FEFCF5FDFBF5FFF4F47D7E
        7DE2E2E2FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFC3C2C1E6CFBFFF
        F2E1FDF6E3FFF6E8FFF8EDFFF8F0FFF9F1FFFAF2FDFBF4FEF6F3A49F9EC0C0C0
        FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C5C3E4CDBCFEF2E0FDF3
        E0FEF4E5FFF5EAFFF6EEFFF8EEFFF8F0FDF9F1FEF4ECAAA4A0C0C0C1FFFFFFFE
        FEFEFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFCECECED2BDAAFFF0E0FEEFDCFEEFDE
        FFF0E0FEF0E2FEF1E3FEF3E6FEF4E9FFF2E494908EE2E2E2FFFFFFFEFEFEFFFF
        FFFFFFFFFFFFFFFDFDFDFFFFFFDEDFE0BEAEA1EFE0CFFFFCE9FDF4E4FEF5E9FE
        F4EBFEF4EAFCF4EBFFF7EDEFE2D5808182FFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFCFCFCD0CFCEBDAA97F3E9D7FFFAEBFFF7ECFFF6EDFFF7
        EEFFF8EEFAEDDE9F9B99D5D5D5FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFEFFFFFFF1F1F1C7C5C3BEB0A0E9E1D0F7EEE2FAF0E7F8EDE3E9DED1
        A7A4A0C4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEFEFFFFFFF7F7F7D1D1D2C3C0BCC1BDB7C2BDB8BBB7B3AEAEAEE2E2E2FF
        FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFEFFFFFFFFFFFFF8F8F8DCDCDDD7D8D8ECECECFFFFFFFFFFFFFDFDFDFFFF
        FFFFFFFFFFFFFFFFFFFF}
      OnClick = btnBuscaOperClick
    end
    object Label2: TLabel
      Left = 18
      Top = 75
      Width = 34
      Height = 13
      Caption = 'Senha:'
    end
    object Label1: TLabel
      Left = 17
      Top = 154
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object EdtNome: TEdit
      Left = 55
      Top = 44
      Width = 282
      Height = 21
      TabOrder = 0
    end
    object EdtCod: TEdit
      Left = 55
      Top = 17
      Width = 89
      Height = 21
      TabOrder = 1
      OnExit = EdtCodExit
      OnKeyDown = EdtCodKeyDown
      OnKeyPress = EdtCodKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 98
      Width = 321
      Height = 45
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object btnBuscaCid: TSpeedButton
        Left = 295
        Top = 15
        Width = 19
        Height = 21
        Flat = True
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000232E0000232E00000000000000000001FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBA1A2A293
          9393F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CFCFDCD4D4C5C8C89999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7F7C1B1B1D5D1D1A7A9A9BFBFBF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFF6F6F6C6B6B6D7D5D58A8B8BE4E4E4FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFEFEFEFCDC0C0CDCECE868686FAFAFAFEFE
          FEFDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFEFEFFFFFFE8E8E8D5CCCCAFB0B0A1A1A1FFFFFFFFFFFF
          FEFEFEF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFDFDFDFFFFFFE3E1E1DED8D8909090A2A3A39090918C8B8A86
          8585787878939494EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFFFFFD3D1D1BDBDBEC8C5BFF7F4E7FFFFF6FFFFFCFFFC
          F7D1CECC707070C6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFFFFB5B6B7D8CEC5FCF7EEFFFDF1FDFDF5FDFDF7FEFEF8FFFFFC
          F4EFEE6F706FD7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFF
          FFE2E2E3C4BDB7F9EDE3FFF9E9FDFAEDFEFAF2FEFCF5FEFDF6FCFDF6FFFCFBDE
          D6D6727372FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFC4C5C5
          DCC6BAFEF3E7FDF7E4FEF9EBFEF9F0FFFAF2FEFBF4FEFCF5FDFBF5FFF4F47D7E
          7DE2E2E2FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFC3C2C1E6CFBFFF
          F2E1FDF6E3FFF6E8FFF8EDFFF8F0FFF9F1FFFAF2FDFBF4FEF6F3A49F9EC0C0C0
          FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C5C3E4CDBCFEF2E0FDF3
          E0FEF4E5FFF5EAFFF6EEFFF8EEFFF8F0FDF9F1FEF4ECAAA4A0C0C0C1FFFFFFFE
          FEFEFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFCECECED2BDAAFFF0E0FEEFDCFEEFDE
          FFF0E0FEF0E2FEF1E3FEF3E6FEF4E9FFF2E494908EE2E2E2FFFFFFFEFEFEFFFF
          FFFFFFFFFFFFFFFDFDFDFFFFFFDEDFE0BEAEA1EFE0CFFFFCE9FDF4E4FEF5E9FE
          F4EBFEF4EAFCF4EBFFF7EDEFE2D5808182FFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFCFCFCD0CFCEBDAA97F3E9D7FFFAEBFFF7ECFFF6EDFFF7
          EEFFF8EEFAEDDE9F9B99D5D5D5FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFFFFF1F1F1C7C5C3BEB0A0E9E1D0F7EEE2FAF0E7F8EDE3E9DED1
          A7A4A0C4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFFFFFFF7F7F7D1D1D2C3C0BCC1BDB7C2BDB8BBB7B3AEAEAEE2E2E2FF
          FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFEFEFFFFFFFFFFFFF8F8F8DCDCDDD7D8D8ECECECFFFFFFFFFFFFFDFDFDFFFF
          FFFFFFFFFFFFFFFFFFFF}
        OnClick = btnBuscaCidClick
      end
      object EdtNomeCid: TEdit
        Left = 50
        Top = 15
        Width = 243
        Height = 21
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
        TabOrder = 1
      end
      object EdtCodCid: TEdit
        Left = 8
        Top = 15
        Width = 41
        Height = 21
        Align = alCustom
        BevelOuter = bvNone
        MaxLength = 25
        TabOrder = 0
        OnExit = EdtCodCidExit
        OnKeyDown = EdtCodCidKeyDown
      end
    end
    object EdtSenha: TEdit
      Left = 55
      Top = 72
      Width = 134
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
    end
    object cmbStatus: TComboBoxKey
      Left = 58
      Top = 149
      Width = 119
      Height = 21
      TabOrder = 4
      Text = 'cmbStatus'
    end
  end
  object QryOperador: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE VENDEDORES'
      'SET '
      '    NOME_VENDEDOR = :NOME_VENDEDOR,'
      '    STATUS_VENDEDOR = :STATUS_VENDEDOR'
      'WHERE'
      '    COD_VENDEDOR = :OLD_COD_VENDEDOR'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    VENDEDORES'
      'WHERE'
      '        COD_VENDEDOR = :OLD_COD_VENDEDOR'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO VENDEDORES('
      '    COD_VENDEDOR,'
      '    NOME_VENDEDOR,'
      '    STATUS_VENDEDOR'
      ')'
      'VALUES('
      '    :COD_VENDEDOR,'
      '    :NOME_VENDEDOR,'
      '    :STATUS_VENDEDOR'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    V.COD_VENDEDOR,'
      '    V.NOME_VENDEDOR,'
      '    C.COD_CIDADE,'
      '    C.NOME_CIDADE,'
      '    C.UF_CIDADE,'
      '    V.STATUS_VENDEDOR'
      'FROM VENDEDORES V, CIDADES C'
      'WHERE(  V.CODCIDADE_VENDEDOR = C.COD_CIDADE'
      '     ) and (     V.COD_VENDEDOR = :OLD_COD_VENDEDOR'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    V.COD_VENDEDOR,'
      '    V.NOME_VENDEDOR,'
      '    C.COD_CIDADE,'
      '    C.NOME_CIDADE,'
      '    C.UF_CIDADE,'
      '    V.STATUS_VENDEDOR'
      'FROM VENDEDORES V, CIDADES C'
      'WHERE V.CODCIDADE_VENDEDOR = C.COD_CIDADE')
    Transaction = dm.Trans
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '    V.COD_VENDEDOR,'
      '    V.NOME_VENDEDOR,'
      '    C.COD_CIDADE,'
      '    C.NOME_CIDADE,'
      '    C.UF_CIDADE,'
      '    V.STATUS_VENDEDOR'
      'FROM VENDEDORES V, CIDADES C'
      'WHERE V.CODCIDADE_VENDEDOR = C.COD_CIDADE')
    Left = 279
    Top = 32
    object QryOperadorCOD_VENDEDOR: TFIBIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object QryOperadorNOME_VENDEDOR: TFIBStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
      EmptyStrToNull = True
    end
    object QryOperadorCOD_CIDADE: TFIBIntegerField
      FieldName = 'COD_CIDADE'
    end
    object QryOperadorNOME_CIDADE: TFIBStringField
      FieldName = 'NOME_CIDADE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryOperadorUF_CIDADE: TFIBStringField
      FieldName = 'UF_CIDADE'
      Size = 2
      EmptyStrToNull = True
    end
    object QryOperadorSTATUS_VENDEDOR: TFIBStringField
      FieldName = 'STATUS_VENDEDOR'
      Size = 1
      EmptyStrToNull = True
    end
  end
  object DsOperador: TDataSource
    DataSet = QryOperador
    Left = 307
    Top = 32
  end
end
