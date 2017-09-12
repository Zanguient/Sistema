object FormCadProduto: TFormCadProduto
  Left = 0
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Produtos'
  ClientHeight = 546
  ClientWidth = 667
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LbOperacao: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 661
    Height = 35
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrando Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -31
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 261
  end
  object PageControl: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 41
    Width = 661
    Height = 472
    Margins.Top = 0
    Margins.Bottom = 0
    ActivePage = TabPrincipal
    Align = alTop
    TabOrder = 0
    OnChange = PageControlChange
    object TabPrincipal: TTabSheet
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Principal'
      object Label1: TLabel
        Left = 23
        Top = 30
        Width = 41
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Label10: TLabel
        Left = 40
        Top = 411
        Width = 24
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'Tipo:'
        Layout = tlCenter
      end
      object Label2: TLabel
        Left = 29
        Top = 59
        Width = 35
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object BtnBuscaCliente: TSpeedButton
        Left = 197
        Top = 27
        Width = 23
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
        OnClick = BtnBuscaClienteClick
      end
      object SpeedButton3: TSpeedButton
        Left = 621
        Top = 84
        Width = 22
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
      end
      object Label12: TLabel
        Left = 337
        Top = 87
        Width = 50
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'Subgrupo:'
        Layout = tlCenter
      end
      object Label11: TLabel
        Left = 27
        Top = 87
        Width = 37
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'Grupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object sbProcurar: TSpeedButton
        Left = 300
        Top = 84
        Width = 22
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
      end
      object Label7: TLabel
        Left = 15
        Top = 116
        Width = 49
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'Unidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Label34: TLabel
        Left = 427
        Top = 115
        Width = 56
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Label30: TLabel
        Left = 191
        Top = 116
        Width = 86
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'C'#243'digo de barras:'
        Layout = tlCenter
      end
      object Shape2: TShape
        Left = 15
        Top = 296
        Width = 628
        Height = 1
      end
      object SpeedButton7: TSpeedButton
        Left = 227
        Top = 27
        Width = 81
        Height = 21
        Caption = 'Duplicar'
        Flat = True
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF64BA8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF64BA8D64BA8DC8C8C8C8C8C8C8C8C8C8C8C8C9C9C9C9C9C9CB
          CBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF64BA8D64BA8D64BA8DF6F6F6F7F7F8F9F9F9FCFCFCFDFDFDD3D3D4CBCB
          CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AC49D64BA8D64BA8D64
          BA8D64BA8D64BA8D64BA8DF4F4F4F6F6F6F8F8F8FAFAFADEDEDFE7E7E8CBCBCB
          FFFFFFFFFFFFFFFFFFFFFFFFF2F9F664BA8D64BA8D64BA8D64BA8D64BA8D64BA
          8D64BA8D64BA8D64BA8DF3F3F3F5F5F5F6F6F7EAEAEBF4F4F4FCFCFCCBCBCBFF
          FFFFFFFFFFFFFFFF64BA8D64BA8D64BA8D64BA8D64BA8D64BA8D64BA8D64BA8D
          64BA8D66BB8FEFEFF0F1F1F2F3F3F3F5F5F5F7F7F7F9F9F9BABABAFFFFFFFFFF
          FF64BA8D64BA8D64BA8D64BA8D64BA8D66BB8F64BA8D64BA8D64BA8D67BB8FEA
          EAEAECECECEEEEEEF0F0F0F2F2F2F4F4F4F6F6F6B9B9B8FFFFFFFFFFFF64BA8D
          64BA8DA6D4BCF4F4F4F6F6F6F8F8F864BA8D64BA8D65BB8EAFAFAEF1F1F2EAEA
          EAEAEAEBECECEDEEEEEFF0F0F1F2F2F3B8B8B8FFFFFFFFFFFF64BA8D64BA8DEE
          EEEFF1F1F1F2F2F3F4F4F564BA8D66BB8EE8E8E8F1F1F1B4B4B4F1F1F2F2F2F2
          F0F0F1EBEBEBEDEDEDEFEFEFB7B7B7FFFFFFFFFFFF64BA8DD6E2DDEBEBECEDED
          EEEFEFF0F1F1F16ABC91F5F5F5C9C9C9CBCBCBCDCDCDB7B7B7F1F1F1F1F1F1F1
          F1F2EAEAEAECECECB6B6B6FFFFFFFFFFFFA4A4A4C2DACDE8E8E8EAEAEAECECEC
          EEEEEEF0F0F0F2F2F2F4F4F4F6F6F6F8F8F8B7B7B7F0F0F0F0F0F1F0F0F1F1F1
          F1E8E8E9B6B6B5FFFFFFFFFFFFA3A3A264BA8DE7E7E7E6E6E7E8E8E9EAEAEBEC
          ECEDEEEEEFF0F0F0F2F2F2F4F4F4B6B6B7EFEFEFEFEFEFEFEFEFEFEFF0F0F0F0
          B5B5B4FFFFFFFFFFFFA1A1A1EFEFEFEFEFEFF0F0F0F1F1F1F2F2F2F0F0F0EBEB
          EBEDEDEDEFEFEFF1F1F1B5B5B6EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEB4B4B4FF
          FFFFFFFFFFA0A0A0EEEEEFEFEFEFF0F0F0F0F0F1F1F1F1F1F1F2F2F2F2EAEAEA
          EBEBECEDEDEEB4B4B5EDEDEDECECEDECECEDECECECECECEDBCBCBBFFFFFFFFFF
          FF9F9F9EEEEEEFEFEFF0F0F0F0F0F0F0F0F0F1F0F0F1F1F1F1F1F1F2E8E8E8EA
          EAEBC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9D
          EFEFF0EFEFF0F0F0F0F0F0F0EFEFF0F0F0F0F0F0F0EFEFF0F0F0F0E7E7E7C3C3
          C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BF1F1F1F0
          F0F0F0F0F0EFEFF0EFEFEFEEEEEFEEEEEFEEEEEFEEEEEFEFEFEFC3C3C3FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BF2F2F3F1F1F1EFEF
          F0EEEEEFEEEEEEEDEDEEEDEDEDEDEDEDEDEDEDEDEDEDC3C3C3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9C8E8E8E909090929291939393
          9595949696969898989A9A999B9B9B9C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphRight
      end
      object CbTipo: TComboBox
        Left = 71
        Top = 408
        Width = 80
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Style = csDropDownList
        ItemIndex = 1
        TabOrder = 10
        Text = 'Normal'
        Items.Strings = (
          'Inativo'
          'Normal')
      end
      object EdtCod: TEdit
        Left = 72
        Top = 27
        Width = 116
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        MaxLength = 15
        TabOrder = 0
        OnKeyDown = EdtCodKeyDown
      end
      object GroupBox4: TGroupBox
        Left = 15
        Top = 137
        Width = 539
        Height = 55
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Estoque:'
        TabOrder = 7
        object Label6: TLabel
          Left = 11
          Top = 22
          Width = 28
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Qntd.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label32: TLabel
          Left = 163
          Top = 22
          Width = 56
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Reservado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label35: TLabel
          Left = 311
          Top = 22
          Width = 20
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'M'#237'n.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label37: TLabel
          Left = 424
          Top = 22
          Width = 24
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'M'#225'x.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object SpeedButton6: TSpeedButton
          Left = 124
          Top = 19
          Width = 23
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          OnClick = BtnBuscaClienteClick
        end
        object EdtEstqQnt: TEdit
          Left = 46
          Top = 19
          Width = 70
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          MaxLength = 10
          TabOrder = 0
          OnKeyPress = EdtEstqQntKeyPress
        end
        object EdtEstqReserv: TDBEdit
          Left = 227
          Top = 19
          Width = 70
          Height = 21
          TabOrder = 1
        end
        object EdtEstqMin: TDBEdit
          Left = 338
          Top = 19
          Width = 70
          Height = 21
          TabOrder = 2
        end
        object EdtEstqMax: TDBEdit
          Left = 454
          Top = 19
          Width = 70
          Height = 21
          DataField = 'ESTOQUEMAX_PRODUTO'
          DataSource = dsProduto
          TabOrder = 3
        end
      end
      object CbUnd: TComboBox
        Left = 72
        Top = 112
        Width = 105
        Height = 21
        Style = csDropDownList
        TabOrder = 4
        OnEnter = CbUndEnter
        Items.Strings = (
          'Par (Pr)'
          'Caixa (Cx)'
          'Metro (Mt)'
          'Kilo (Kg)'
          'Resma (Re)'
          'Saco (Sc)'
          'Pacote (Pc)'
          'Conjunto (Cj)'
          'Pe'#231'a (Pc)'
          'Metro Cub. (M3)'
          'Metro Q. (M2)'
          'Frasco (Fr)'
          'Milheiro (Mi)'
          'Gal'#227'o (Gl)'
          'Lata (La)'
          'Balde (Bd)'
          'Folha (Fo)'
          'Cartela (Ca)'
          'Barril (Ba)'
          'Rol (Rl)'
          'Unidade (Un)'
          'D'#250'zia (Dz)'
          'Litro (Lt)'
          'Dose (Ds)'
          'Bisnaga (Bs)'
          'Ampola (Am)'
          'Envelope (En)'
          'Kil'#244'metro (Km)'
          'Blister (Bl)'
          'Flaconete (Fl)'
          'Dezena (De)'
          'Placa (Pl)'
          'Cento (Ce)'
          'Bloco (Bc)'
          'Barra (Br)'
          'Hora (Hr)'
          'Minuto (Mn)'
          'Segundo (Sg)'
          'Cent'#237'metro (Cn)'
          'Fardo (Fd)'
          'Garaf'#227'o (Ga)'
          'Lote (Lo)'
          'Tonelada (Tn)'
          'Jogo (Jg)'
          'Kit (Kt)'
          'Chapa (Ch)'
          'Gramas (Gr)'
          'C'#225'psula (Cp)'
          'Mililitro (ML)'
          'Tambor (TB)')
      end
      object GroupBox3: TGroupBox
        Left = 15
        Top = 200
        Width = 539
        Height = 81
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Pre'#231'os:'
        TabOrder = 8
        object Label23: TLabel
          Left = 10
          Top = 21
          Width = 70
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Pre'#231'o Custo:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label42: TLabel
          Left = 219
          Top = 21
          Width = 75
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = #218'ltimo Custo:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object SpeedButton4: TSpeedButton
          Left = 183
          Top = 45
          Width = 11
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
        end
        object Label24: TLabel
          Left = 8
          Top = 48
          Width = 72
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = '%Marg. Lucro:'
          Layout = tlCenter
        end
        object Label25: TLabel
          Left = 221
          Top = 48
          Width = 73
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Pre'#231'o Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object EdtPrCusto: TDBEdit
          Left = 87
          Top = 18
          Width = 95
          Height = 21
          DataField = 'PRCOMPRA_PRODUTO'
          DataSource = dsProduto
          TabOrder = 0
          OnExit = EdtMrgLucroExit
        end
        object EdtMrgLucro: TDBEdit
          Left = 87
          Top = 45
          Width = 95
          Height = 21
          DataField = 'LUCRO_PRODUTO'
          DataSource = dsProduto
          TabOrder = 2
          OnExit = EdtMrgLucroExit
        end
        object EdtPrUltCusto: TDBEdit
          Left = 302
          Top = 18
          Width = 95
          Height = 21
          Enabled = False
          TabOrder = 1
        end
        object EdtPrVenda: TDBEdit
          Left = 302
          Top = 45
          Width = 95
          Height = 21
          DataField = 'PRVENDA_PRODUTO'
          DataSource = dsProduto
          TabOrder = 3
          OnExit = EdtPrVendaExit
        end
        object cbLucroFixo: TCheckBox
          Left = 412
          Top = 18
          Width = 105
          Height = 17
          Align = alCustom
          Caption = 'Manter lucro Fixo'
          TabOrder = 4
        end
      end
      object GroupBox5: TGroupBox
        Left = 15
        Top = 306
        Width = 628
        Height = 91
        Caption = 'Imposto ICMS Venda:'
        TabOrder = 9
        object Label26: TLabel
          Left = 9
          Top = 57
          Width = 56
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = '%BC ICMS:'
          Layout = tlCenter
        end
        object Label27: TLabel
          Left = 140
          Top = 57
          Width = 53
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Al'#237'q. ICMS:'
          Layout = tlCenter
        end
        object Label43: TLabel
          Left = 265
          Top = 57
          Width = 71
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = '%BC ICMS ST:'
          Layout = tlCenter
        end
        object Label44: TLabel
          Left = 410
          Top = 57
          Width = 68
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Al'#237'q. ICMS ST:'
          Layout = tlCenter
        end
        object Label29: TLabel
          Left = 41
          Top = 29
          Width = 24
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'CST:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label28: TLabel
          Left = 318
          Top = 29
          Width = 68
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taRightJustify
          Caption = 'Origem CST:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object CbCST: TComboBox
          Left = 73
          Top = 26
          Width = 230
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style = csDropDownList
          TabOrder = 0
          OnEnter = CbCSTEnter
        end
        object CbOrigemCST: TComboBox
          Left = 393
          Top = 26
          Width = 220
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Text = '0 - Nacional'
          OnEnter = CbOrigemCSTEnter
          Items.Strings = (
            '0 - Nacional'
            '1 - Imp.  Direta'
            '2 - Mercado Interno'
            '3 - Nacional com Importa'#231#227'o > 40%'
            '4 -  Nacional'
            '5 - Nacional com Importa'#231#227'o <= 40%'
            '6 - Imp. Direta sem similar Nac.'
            '7 - Merc. Interno sem similar Nac.'
            '8 - Nacional com Importa'#231#227'o > 70% ')
        end
        object EdtBC_ICMS: TDBEdit
          Left = 72
          Top = 54
          Width = 50
          Height = 21
          DataField = 'BASECALCULO_PRODUTO'
          DataSource = dsProduto
          TabOrder = 2
        end
        object EdtAliq_ICMS: TDBEdit
          Left = 200
          Top = 54
          Width = 50
          Height = 21
          DataField = 'PERC_ICMS_ESTADO_PRODUTO'
          DataSource = dsProduto
          TabOrder = 3
        end
        object EdtBC_ST: TDBEdit
          Left = 343
          Top = 54
          Width = 50
          Height = 21
          TabOrder = 4
        end
        object EdtAliq_ST: TDBEdit
          Left = 485
          Top = 54
          Width = 54
          Height = 21
          DataField = 'PERCICMSST_PRODUTO'
          DataSource = dsProduto
          TabOrder = 5
        end
      end
      object EdtNome: TDBEdit
        Left = 72
        Top = 56
        Width = 571
        Height = 21
        DataField = 'NOME_PRODUTO'
        DataSource = dsProduto
        TabOrder = 1
      end
      object EdtGp: TDBEdit
        Left = 72
        Top = 84
        Width = 35
        Height = 21
        DataField = 'CODCLASSE_PRODUTO'
        DataSource = dsProduto
        TabOrder = 2
      end
      object EdtNomeGp: TDBEdit
        Left = 115
        Top = 84
        Width = 177
        Height = 21
        TabStop = False
        DataField = 'NOME_CLASSE'
        DataSource = dsProduto
        TabOrder = 11
      end
      object EdtSg: TDBEdit
        Left = 394
        Top = 84
        Width = 35
        Height = 21
        DataField = 'CODSUBCLASSE_PRODUTO'
        DataSource = dsProduto
        TabOrder = 3
      end
      object EdtNomeSg: TDBEdit
        Left = 437
        Top = 84
        Width = 175
        Height = 21
        TabStop = False
        DataField = 'NOME_SUBCLASSE'
        DataSource = dsProduto
        TabOrder = 12
      end
      object EdtCodBarra: TDBEdit
        Left = 284
        Top = 112
        Width = 125
        Height = 21
        DataField = 'CODBARRA_PRODUTO'
        DataSource = dsProduto
        TabOrder = 5
      end
      object EdtRef: TDBEdit
        Left = 489
        Top = 113
        Width = 154
        Height = 21
        TabOrder = 6
      end
    end
    object TabAdicional: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Adicional'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 653
        Height = 259
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label19: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 309
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          Caption = 'Adicione aqui informa'#231#245'es e observa'#231#245'es adicionais do produto: '
        end
        object MeLivre: TMemo
          AlignWithMargins = True
          Left = 4
          Top = 25
          Width = 541
          Height = 230
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          TabOrder = 0
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 259
        Width = 653
        Height = 85
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitTop = 241
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 541
          Height = 77
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          Caption = 'Peso e Dimens'#245'es'
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitHeight = 96
          object Label8: TLabel
            Left = 15
            Top = 21
            Width = 27
            Height = 13
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Peso:'
          end
          object Label13: TLabel
            Left = 108
            Top = 21
            Width = 33
            Height = 13
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Altura:'
          end
          object Label21: TLabel
            Left = 203
            Top = 21
            Width = 41
            Height = 13
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Largura:'
          end
          object Label22: TLabel
            Left = 296
            Top = 21
            Width = 35
            Height = 13
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Compr.'
          end
          object EdtPeso: TEdit
            Left = 15
            Top = 39
            Width = 78
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            TabOrder = 0
          end
          object EdtAlt: TEdit
            Left = 108
            Top = 39
            Width = 79
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            TabOrder = 1
          end
          object EdtLarg: TEdit
            Left = 203
            Top = 39
            Width = 78
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            TabOrder = 2
          end
          object EdtComp: TEdit
            Left = 296
            Top = 39
            Width = 77
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            TabOrder = 3
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 344
        Width = 653
        Height = 83
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel5'
        TabOrder = 2
        ExplicitTop = 326
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 541
          Height = 75
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          Caption = 'Comiss'#227'o e Desconto'
          TabOrder = 0
          ExplicitHeight = 69
          object Label31: TLabel
            Left = 15
            Top = 19
            Width = 60
            Height = 13
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = '%Comiss'#227'o:'
          end
          object SbDown: TSpeedButton
            Left = 76
            Top = 15
            Width = 12
            Height = 20
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
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
          end
          object Label4: TLabel
            Left = 109
            Top = 19
            Width = 60
            Height = 13
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = '%Desconto:'
          end
          object SpeedButton2: TSpeedButton
            Left = 170
            Top = 15
            Width = 12
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
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
          end
          object Label5: TLabel
            Left = 203
            Top = 19
            Width = 73
            Height = 13
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'In'#237'cio Desconto'
          end
          object Label14: TLabel
            Left = 297
            Top = 19
            Width = 64
            Height = 13
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Fim Desconto'
          end
          object Edit1: TEdit
            Left = 15
            Top = 37
            Width = 78
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 109
            Top = 37
            Width = 78
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            TabOrder = 1
          end
          object Edit3: TEdit
            Left = 203
            Top = 37
            Width = 78
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            TabOrder = 2
          end
          object Edit4: TEdit
            Left = 297
            Top = 37
            Width = 78
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            TabOrder = 3
          end
        end
      end
    end
    object TabImpostos: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Impostos'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 653
        Height = 401
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel6'
        TabOrder = 0
        object CkExcecaoICMS: TCheckBox
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 645
          Height = 18
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          Caption = 'Permitir criar exce'#231#227'o para opera'#231#245'es com outra UF'
          TabOrder = 0
          OnClick = CkExcecaoICMSClick
          ExplicitTop = 11
          ExplicitWidth = 263
        end
        object GbExcecaoICMS: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 30
          Width = 469
          Height = 367
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          Caption = 'Tabela exce'#231#227'o outra UF'
          Color = clBtnFace
          Enabled = False
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object Panel7: TPanel
            Left = 2
            Top = 15
            Width = 465
            Height = 154
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = 12
            ExplicitWidth = 641
            object Label40: TLabel
              Left = 283
              Top = 62
              Width = 51
              Height = 13
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = '%BC Calc:'
            end
            object Label41: TLabel
              Left = 377
              Top = 62
              Width = 35
              Height = 13
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = '%Calc:'
            end
            object SpeedButton5: TSpeedButton
              Left = 414
              Top = 58
              Width = 12
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
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
            end
            object Label16: TLabel
              Left = 253
              Top = 9
              Width = 24
              Height = 13
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'CST:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 162
              Top = 9
              Width = 36
              Height = 13
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = '%ICMS'
            end
            object Label18: TLabel
              Left = 70
              Top = 9
              Width = 52
              Height = 13
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = '%BC ICMS'
            end
            object Label15: TLabel
              Left = 7
              Top = 9
              Width = 17
              Height = 13
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'UF:'
            end
            object Label36: TLabel
              Left = 7
              Top = 62
              Width = 43
              Height = 13
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = '%BC ST:'
            end
            object Label38: TLabel
              Left = 99
              Top = 62
              Width = 27
              Height = 13
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = '%ST:'
            end
            object Label39: TLabel
              Left = 191
              Top = 62
              Width = 43
              Height = 13
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Calc. ST:'
            end
            object Shape1: TShape
              AlignWithMargins = True
              Left = 7
              Top = 110
              Width = 445
              Height = 1
              Margins.Top = 2
              Pen.Mode = pmMask
            end
            object Exc_CbCst: TComboBox
              Left = 253
              Top = 27
              Width = 199
              Height = 21
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Style = csDropDownList
              TabOrder = 0
              OnEnter = Exc_CbCstEnter
              Items.Strings = (
                ''
                'Masculino'
                'Femenino')
            end
            object Exc_CbUF: TComboBox
              Left = 7
              Top = 27
              Width = 49
              Height = 21
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Style = csDropDownList
              TabOrder = 1
              OnEnter = Exc_CbUFEnter
            end
            object Exc_CbCalcSt: TComboBox
              Left = 191
              Top = 80
              Width = 78
              Height = 21
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Style = csDropDownList
              TabOrder = 2
              OnEnter = Exc_CbCalcStEnter
            end
            object Exc_BtnGravar: TButton
              Left = 293
              Top = 119
              Width = 75
              Height = 25
              Margins.Right = 6
              Caption = 'Gravar'
              TabOrder = 3
            end
            object Exc_BtnDel: TButton
              Left = 377
              Top = 119
              Width = 75
              Height = 25
              Margins.Right = 6
              Caption = 'Deletar'
              TabOrder = 4
            end
            object Edit5: TEdit
              Left = 70
              Top = 27
              Width = 76
              Height = 21
              TabOrder = 5
              Text = 'Edit5'
            end
            object Edit6: TEdit
              Left = 162
              Top = 27
              Width = 76
              Height = 21
              TabOrder = 6
              Text = 'Edit5'
            end
            object Edit7: TEdit
              Left = 7
              Top = 80
              Width = 76
              Height = 21
              TabOrder = 7
              Text = 'Edit5'
            end
            object Edit8: TEdit
              Left = 99
              Top = 80
              Width = 76
              Height = 21
              TabOrder = 8
              Text = 'Edit5'
            end
            object Edit9: TEdit
              Left = 283
              Top = 80
              Width = 76
              Height = 21
              TabOrder = 9
              Text = 'Edit5'
            end
            object Edit10: TEdit
              Left = 376
              Top = 80
              Width = 76
              Height = 21
              TabOrder = 10
              Text = 'Edit5'
            end
          end
          object Exc_Dbg: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 167
            Width = 459
            Height = 195
            Align = alBottom
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Foto'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 95
        Width = 653
        Height = 349
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Image: TImage
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 382
          Height = 341
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          AutoSize = True
          Center = True
          Proportional = True
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitHeight = 339
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 653
        Height = 95
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label20: TLabel
          Left = 7
          Top = 15
          Width = 323
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 
            'Clique em procurar para adicionar uma foto no cadastro do produt' +
            'o'
        end
        object BtnProcurarImg: TButton
          Left = 86
          Top = 34
          Width = 74
          Height = 27
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Procurar'
          TabOrder = 1
          OnClick = BtnProcurarImgClick
        end
        object BtnLimparImg: TButton
          Left = 7
          Top = 34
          Width = 73
          Height = 27
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Limpar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BtnLimparImgClick
        end
        object EdtPathImg: TEdit
          Left = 8
          Top = 64
          Width = 379
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
  end
  object pnButtons: TPanel
    Left = 0
    Top = 513
    Width = 667
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnGravar: TBitBtn
      AlignWithMargins = True
      Left = 246
      Top = 3
      Width = 100
      Height = 27
      Align = alRight
      Caption = 'Gravar <Ins>'
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
    object btnLimpar: TBitBtn
      AlignWithMargins = True
      Left = 352
      Top = 3
      Width = 100
      Height = 27
      Align = alRight
      Caption = 'Limpar <Esc>'
      TabOrder = 1
      OnClick = btnLimparClick
    end
    object btnDeletar: TBitBtn
      AlignWithMargins = True
      Left = 458
      Top = 3
      Width = 100
      Height = 27
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
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnDeletarClick
    end
    object btnCancelar: TBitBtn
      AlignWithMargins = True
      Left = 564
      Top = 3
      Width = 100
      Height = 27
      Align = alRight
      Caption = 'Sair <Esc>'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 3
    end
  end
  object ImageList: TImageList
    ColorDepth = cd32Bit
    Left = 415
    Top = 27
    Bitmap = {
      494C010101000500040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000A0A0A76000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0001
      01F9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F990909095E0000
      0000000000000000000000000000000000000000000000000000000000000101
      01FE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000101010990809095A0000
      00000D0D0DAA000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF030303F5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0D0D9B0708085C0000
      00000C0D0DC30303033700000000000000000000000000000000000000000000
      00000000000000000000000000FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000101010990909095A0000
      00000D0E0EC20303033300000000000000000000000000000000000000000000
      00000000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F9A0808085B0000
      0000101010C2030303320000000010101094000000FC010101FB010101FB0000
      00F80000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0E0E9A0808085B0000
      00000C0C0CC30303033400000000000000000000000000000000000000110000
      00000000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111199090909590000
      00000F0F0FC20303033200000000000000000909098D080808EB050505EA0000
      00000000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0E0E9A0708085B0000
      00000F0F0FC20303033300000000000000000101011E01010120010101200101
      011E0000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F9A0808085B0000
      00000C0C0CC303030334000000000707076B0D0D0DD80A0B0BD90A0A0AD90E0E
      0ED50000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000101010990909095A0000
      0000101111C10303033200000000000000000000000000000000000000000303
      03330303033403030335000000FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0D0D9B0708085C0000
      00000D0D0DC30303033300000000000000000000000000000000000000FB0A0A
      0AC2090909C40C0C0CC6010101F9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001010109B101010880606
      064D0E0E0ED30303033300000000000000000000000000000000000000FB0000
      000000000000040404E400000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010A40D0D
      0DA8090909E90303033200000000000000000000000000000000020202FB0000
      0000050505E30000001300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0BC40B0C0C860A0A0A670A0A0A67090909690B0B0B67000000FD0708
      08DE000000140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FC000000FF000000FF000000FF000000FF000000FE0101
      0124000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object MnBtnDuplic: TPopupMenu
    Left = 600
    Top = 12
    object este11: TMenuItem
      Caption = 'Teste1'
    end
    object este21: TMenuItem
      Caption = 'Teste2'
    end
  end
  object OpenPicture: TOpenPictureDialog
    InitialDir = 'C:\Cadastro Clientes\Fotos\Produtos'
    Left = 460
    Top = 44
  end
  object QryProduto: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODUTOS'
      'SET '
      '    NOME_PRODUTO = :NOME_PRODUTO,'
      '    CODCLASSE_PRODUTO = :CODCLASSE_PRODUTO,'
      '    CODSUBCLASSE_PRODUTO = :CODSUBCLASSE_PRODUTO,'
      '    CODBARRA_PRODUTO = :CODBARRA_PRODUTO,'
      '    UNIDADE_PRODUTO = :UNIDADE_PRODUTO,'
      '    ESTOQUE_PRODUTO = :ESTOQUE_PRODUTO,'
      '    ESTOQUEMAX_PRODUTO = :ESTOQUEMAX_PRODUTO,'
      '    PRCOMPRA_PRODUTO = :PRCOMPRA_PRODUTO,'
      '    PRVENDA_PRODUTO = :PRVENDA_PRODUTO,'
      '    LUCRO_PRODUTO = :LUCRO_PRODUTO,'
      '    LUCROFIXO_PRODUTO = :LUCROFIXO_PRODUTO,'
      '    CST_PRODUTO = :CST_PRODUTO,'
      '    BASESTCOMPRA_PRODUTO = :BASESTCOMPRA_PRODUTO,'
      '    PERCICMSST_PRODUTO = :PERCICMSST_PRODUTO,'
      '    BASECALCULO_PRODUTO = :BASECALCULO_PRODUTO,'
      '    PERC_ICMS_ESTADO_PRODUTO = :PERC_ICMS_ESTADO_PRODUTO,'
      '    TIPO_PRODUTO = :TIPO_PRODUTO,'
      '    DTCADASTRO_PRODUTO = :DTCADASTRO_PRODUTO,'
      '    DTALTERACAO = :DTALTERACAO,'
      '    OBS_PRODUTO = :OBS_PRODUTO'
      'WHERE'
      '    COD_PRODUTO = :OLD_COD_PRODUTO'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PRODUTOS'
      'WHERE'
      '        COD_PRODUTO = :OLD_COD_PRODUTO'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PRODUTOS('
      '    COD_PRODUTO,'
      '    NOME_PRODUTO,'
      '    CODCLASSE_PRODUTO,'
      '    CODSUBCLASSE_PRODUTO,'
      '    CODBARRA_PRODUTO,'
      '    UNIDADE_PRODUTO,'
      '    ESTOQUE_PRODUTO,'
      '    ESTOQUEMAX_PRODUTO,'
      '    PRCOMPRA_PRODUTO,'
      '    PRVENDA_PRODUTO,'
      '    LUCRO_PRODUTO,'
      '    LUCROFIXO_PRODUTO,'
      '    CST_PRODUTO,'
      '    BASESTCOMPRA_PRODUTO,'
      '    PERCICMSST_PRODUTO,'
      '    BASECALCULO_PRODUTO,'
      '    PERC_ICMS_ESTADO_PRODUTO,'
      '    TIPO_PRODUTO,'
      '    DTCADASTRO_PRODUTO,'
      '    DTALTERACAO,'
      '    OBS_PRODUTO'
      ')'
      'VALUES('
      '    :COD_PRODUTO,'
      '    :NOME_PRODUTO,'
      '    :CODCLASSE_PRODUTO,'
      '    :CODSUBCLASSE_PRODUTO,'
      '    :CODBARRA_PRODUTO,'
      '    :UNIDADE_PRODUTO,'
      '    :ESTOQUE_PRODUTO,'
      '    :ESTOQUEMAX_PRODUTO,'
      '    :PRCOMPRA_PRODUTO,'
      '    :PRVENDA_PRODUTO,'
      '    :LUCRO_PRODUTO,'
      '    :LUCROFIXO_PRODUTO,'
      '    :CST_PRODUTO,'
      '    :BASESTCOMPRA_PRODUTO,'
      '    :PERCICMSST_PRODUTO,'
      '    :BASECALCULO_PRODUTO,'
      '    :PERC_ICMS_ESTADO_PRODUTO,'
      '    :TIPO_PRODUTO,'
      '    :DTCADASTRO_PRODUTO,'
      '    :DTALTERACAO,'
      '    :OBS_PRODUTO'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    P.COD_PRODUTO,'
      '    P.NOME_PRODUTO,'
      '    P.CODCLASSE_PRODUTO,'
      '    C.NOME_CLASSE,'
      '    P.CODSUBCLASSE_PRODUTO,'
      '    SC.NOME_SUBCLASSE,'
      '    P.CODBARRA_PRODUTO,'
      '    P.UNIDADE_PRODUTO,'
      '    U.NOME_UND,'
      '    U.SUPERAB_UND,'
      '    P.ESTOQUE_PRODUTO,'
      '    P.ESTOQUEMAX_PRODUTO,'
      '    P.PRCOMPRA_PRODUTO,'
      '    P.PRVENDA_PRODUTO,'
      '    P.LUCRO_PRODUTO,'
      '    P.LUCROFIXO_PRODUTO,'
      '    P.CST_PRODUTO,'
      '    P.CST,'
      '    P.BASESTCOMPRA_PRODUTO,'
      '    P.PERCICMSST_PRODUTO,'
      '    P.BASECALCULO_PRODUTO,'
      '    P.PERC_ICMS_ESTADO_PRODUTO,'
      '    P.TIPO_PRODUTO,'
      '    P.DTCADASTRO_PRODUTO,'
      '    P.DTALTERACAO,'
      '    P.OBS_PRODUTO'
      'FROM PRODUTOS P'
      '    LEFT JOIN UNIDADES U ON P.UNIDADE_PRODUTO = U.COD_UND'
      '    LEFT JOIN CLASSES C ON P.CODCLASSE_PRODUTO = C.COD_CLASSE'
      
        '    LEFT JOIN SUBCLASSE SC ON P.CODSUBCLASSE_PRODUTO = SC.COD_SU' +
        'BCLASSE'
      'WHERE(  P.COD_PRODUTO = :COD'
      '     ) and (     P.COD_PRODUTO = :OLD_COD_PRODUTO'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    P.COD_PRODUTO,'
      '    P.NOME_PRODUTO,'
      '    P.CODCLASSE_PRODUTO,'
      '    C.NOME_CLASSE,'
      '    P.CODSUBCLASSE_PRODUTO,'
      '    SC.NOME_SUBCLASSE,'
      '    P.CODBARRA_PRODUTO,'
      '    P.UNIDADE_PRODUTO,'
      '    U.NOME_UND,'
      '    U.SUPERAB_UND,'
      '    P.ESTOQUE_PRODUTO,'
      '    P.ESTOQUEMAX_PRODUTO,'
      '    P.PRCOMPRA_PRODUTO,'
      '    P.PRVENDA_PRODUTO,'
      '    P.LUCRO_PRODUTO,'
      '    P.LUCROFIXO_PRODUTO,'
      '    P.CST_PRODUTO,'
      '    P.CST,'
      '    P.BASESTCOMPRA_PRODUTO,'
      '    P.PERCICMSST_PRODUTO,'
      '    P.BASECALCULO_PRODUTO,'
      '    P.PERC_ICMS_ESTADO_PRODUTO,'
      '    P.TIPO_PRODUTO,'
      '    P.DTCADASTRO_PRODUTO,'
      '    P.DTALTERACAO,'
      '    P.OBS_PRODUTO'
      'FROM PRODUTOS P'
      '    LEFT JOIN UNIDADES U ON P.UNIDADE_PRODUTO = U.COD_UND'
      '    LEFT JOIN CLASSES C ON P.CODCLASSE_PRODUTO = C.COD_CLASSE'
      
        '    LEFT JOIN SUBCLASSE SC ON P.CODSUBCLASSE_PRODUTO = SC.COD_SU' +
        'BCLASSE'
      'WHERE P.COD_PRODUTO = :COD')
    Transaction = dm.Trans
    Database = dm.DB
    SQL.Strings = (
      'SELECT'
      '    P.COD_PRODUTO,'
      '    P.NOME_PRODUTO,'
      '    P.CODCLASSE_PRODUTO,'
      '    C.NOME_CLASSE,'
      '    P.CODSUBCLASSE_PRODUTO,'
      '    SC.NOME_SUBCLASSE,'
      '    P.CODBARRA_PRODUTO,'
      '    P.UNIDADE_PRODUTO,'
      '    U.NOME_UND,'
      '    U.SUPERAB_UND,'
      '    P.ESTOQUE_PRODUTO,'
      '    P.ESTOQUEMAX_PRODUTO,'
      '    P.PRCOMPRA_PRODUTO,'
      '    P.PRVENDA_PRODUTO,'
      '    P.LUCRO_PRODUTO,'
      '    P.LUCROFIXO_PRODUTO,'
      '    P.CST_PRODUTO,'
      '    P.CST,'
      '    P.BASESTCOMPRA_PRODUTO,'
      '    P.PERCICMSST_PRODUTO,'
      '    P.BASECALCULO_PRODUTO,'
      '    P.PERC_ICMS_ESTADO_PRODUTO,'
      '    P.TIPO_PRODUTO,'
      '    P.DTCADASTRO_PRODUTO,'
      '    P.DTALTERACAO,'
      '    P.OBS_PRODUTO'
      'FROM PRODUTOS P'
      '    LEFT JOIN UNIDADES U ON P.UNIDADE_PRODUTO = U.COD_UND'
      '    LEFT JOIN CLASSES C ON P.CODCLASSE_PRODUTO = C.COD_CLASSE'
      
        '    LEFT JOIN SUBCLASSE SC ON P.CODSUBCLASSE_PRODUTO = SC.COD_SU' +
        'BCLASSE'
      'WHERE P.COD_PRODUTO = :COD')
    Left = 496
    Top = 4
    object QryProdutoCOD_PRODUTO: TFIBIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object QryProdutoNOME_PRODUTO: TFIBStringField
      FieldName = 'NOME_PRODUTO'
      Size = 60
      EmptyStrToNull = True
    end
    object QryProdutoCODCLASSE_PRODUTO: TFIBSmallIntField
      FieldName = 'CODCLASSE_PRODUTO'
    end
    object QryProdutoNOME_CLASSE: TFIBStringField
      FieldName = 'NOME_CLASSE'
      Size = 60
      EmptyStrToNull = True
    end
    object QryProdutoCODSUBCLASSE_PRODUTO: TFIBSmallIntField
      FieldName = 'CODSUBCLASSE_PRODUTO'
    end
    object QryProdutoNOME_SUBCLASSE: TFIBStringField
      FieldName = 'NOME_SUBCLASSE'
      Size = 30
      EmptyStrToNull = True
    end
    object QryProdutoCODBARRA_PRODUTO: TFIBStringField
      FieldName = 'CODBARRA_PRODUTO'
      Size = 13
      EmptyStrToNull = True
    end
    object QryProdutoUNIDADE_PRODUTO: TFIBSmallIntField
      FieldName = 'UNIDADE_PRODUTO'
    end
    object QryProdutoNOME_UND: TFIBStringField
      FieldName = 'NOME_UND'
      Size = 30
      EmptyStrToNull = True
    end
    object QryProdutoESTOQUE_PRODUTO: TFIBBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Size = 3
    end
    object QryProdutoESTOQUEMAX_PRODUTO: TFIBBCDField
      FieldName = 'ESTOQUEMAX_PRODUTO'
      DisplayFormat = '#,##0.000'
      Size = 3
    end
    object QryProdutoPRCOMPRA_PRODUTO: TFIBBCDField
      FieldName = 'PRCOMPRA_PRODUTO'
      DisplayFormat = '#,##0.00'
      Size = 3
    end
    object QryProdutoPRVENDA_PRODUTO: TFIBBCDField
      FieldName = 'PRVENDA_PRODUTO'
      DisplayFormat = '#,##0.00'
      Size = 3
    end
    object QryProdutoCST_PRODUTO: TFIBStringField
      FieldName = 'CST_PRODUTO'
      Size = 4
      EmptyStrToNull = True
    end
    object QryProdutoCST: TFIBSmallIntField
      FieldName = 'CST'
    end
    object QryProdutoBASESTCOMPRA_PRODUTO: TFIBBCDField
      FieldName = 'BASESTCOMPRA_PRODUTO'
      DisplayFormat = '#,##0.00'
      Size = 2
    end
    object QryProdutoPERCICMSST_PRODUTO: TFIBFloatField
      FieldName = 'PERCICMSST_PRODUTO'
      DisplayFormat = '#,##0.00%'
    end
    object QryProdutoBASECALCULO_PRODUTO: TFIBFloatField
      FieldName = 'BASECALCULO_PRODUTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object QryProdutoPERC_ICMS_ESTADO_PRODUTO: TFIBFloatField
      FieldName = 'PERC_ICMS_ESTADO_PRODUTO'
      DisplayFormat = '#,##0.00%'
    end
    object QryProdutoTIPO_PRODUTO: TFIBSmallIntField
      FieldName = 'TIPO_PRODUTO'
    end
    object QryProdutoDTCADASTRO_PRODUTO: TFIBDateField
      FieldName = 'DTCADASTRO_PRODUTO'
    end
    object QryProdutoOBS_PRODUTO: TFIBStringField
      FieldName = 'OBS_PRODUTO'
      Size = 300
      EmptyStrToNull = True
    end
    object QryProdutoSUPERAB_UND: TFIBStringField
      FieldName = 'SUPERAB_UND'
      Size = 3
      EmptyStrToNull = True
    end
    object QryProdutoDTALTERACAO: TFIBDateField
      FieldName = 'DTALTERACAO'
    end
    object QryProdutoLUCRO_PRODUTO: TFIBBCDField
      FieldName = 'LUCRO_PRODUTO'
      DisplayFormat = '#,##0.00%'
      Size = 8
    end
    object QryProdutoLUCROFIXO_PRODUTO: TFIBBooleanField
      FieldName = 'LUCROFIXO_PRODUTO'
    end
  end
  object dsProduto: TDataSource
    DataSet = QryProduto
    Left = 544
    Top = 5
  end
end
