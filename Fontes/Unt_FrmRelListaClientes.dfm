object Frm_RelListaClientes: TFrm_RelListaClientes
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 507
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object QrepRelListaClientes: TQuickRep
    Left = -1
    Top = 0
    Width = 858
    Height = 513
    ShowingPreview = False
    BeforePrint = QrepRelListaClientesBeforePrint
    DataSet = CdsAux
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'Relat'#243'rio de Clientes por UF'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object qrBandCabecalho: TQRBand
      Left = 38
      Top = 38
      Width = 782
      Height = 59
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        156.104166666666700000
        2069.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object lbNomeEmpresa: TQRLabel
        Left = 2
        Top = 2
        Width = 777
        Height = 28
        Size.Values = (
          74.083333333333330000
          5.291666666666667000
          5.291666666666667000
          2055.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        Caption = 'Padaria do Tio Diogo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 18
      end
      object lbEnderecoEmpresa: TQRLabel
        Left = 2
        Top = 36
        Width = 777
        Height = 17
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          95.250000000000000000
          2055.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Rua Presidente Kennedy, 741, Centro. Frederico Westphalen-RS'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object qrBandTitulo: TQRBand
      Left = 38
      Top = 97
      Width = 782
      Height = 32
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        2069.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object qrSysData: TQRSysData
        Left = 667
        Top = 4
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          1764.770833333333000000
          10.583333333333330000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 4
        Top = 4
        Width = 159
        Height = 20
        Size.Values = (
          52.916666666666670000
          10.583333333333330000
          10.583333333333330000
          420.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Relat'#243'rio de Clientes'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRShape2: TQRShape
        Left = 2
        Top = 21
        Width = 714
        Height = 8
        Frame.DrawBottom = True
        Size.Values = (
          21.166666666666670000
          5.291666666666667000
          55.562500000000000000
          1889.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRSysData2: TQRSysData
        Left = 592
        Top = 4
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          10.583333333333330000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
    end
    object qrBandColunas: TQRBand
      Left = 38
      Top = 129
      Width = 782
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        2069.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object qrLbCod: TQRLabel
        Left = 22
        Top = 5
        Width = 65
        Height = 20
        Size.Values = (
          52.916666666666660000
          58.208333333333340000
          13.229166666666670000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QrLbNome: TQRLabel
        Left = 111
        Top = 5
        Width = 194
        Height = 20
        Size.Values = (
          52.916666666666660000
          293.687500000000000000
          13.229166666666670000
          513.291666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Raz'#227'o Social'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 314
        Top = 5
        Width = 158
        Height = 20
        Size.Values = (
          52.916666666666660000
          830.791666666666800000
          13.229166666666670000
          418.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Telefone'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 481
        Top = 5
        Width = 219
        Height = 20
        Size.Values = (
          52.916666666666660000
          1272.645833333333000000
          13.229166666666670000
          579.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Endere'#231'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object qrBandDados: TQRBand
      Left = 38
      Top = 249
      Width = 782
      Height = 35
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        92.604166666666670000
        2069.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object qrDbCod: TQRDBText
        Left = 22
        Top = 6
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          58.208333333333340000
          15.875000000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = CdsAux
        DataField = 'COD_CLIENTE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object qrDbNome: TQRDBText
        Left = 114
        Top = 6
        Width = 194
        Height = 17
        Size.Values = (
          44.979166666666670000
          301.625000000000000000
          15.875000000000000000
          513.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = CdsAux
        DataField = 'NOME_CLIENTE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 314
        Top = 6
        Width = 158
        Height = 17
        Size.Values = (
          44.979166666666670000
          830.791666666666800000
          15.875000000000000000
          418.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = CdsAux
        DataField = 'FONER_CLIENTE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 481
        Top = 6
        Width = 219
        Height = 17
        Size.Values = (
          44.979166666666670000
          1272.645833333333000000
          15.875000000000000000
          579.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = CdsAux
        DataField = 'ENDER_CLIENTE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object qrBandRodape: TQRBand
      Left = 38
      Top = 284
      Width = 782
      Height = 27
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        2069.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel2: TQRLabel
        Left = 0
        Top = 6
        Width = 142
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          15.875000000000000000
          375.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Desenvolvido por Linassi'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 730
        Top = 6
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          1931.458333333333000000
          15.875000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsPageNumber
        Text = ''
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
    end
    object qrGrupUfCidade: TQRGroup
      Left = 38
      Top = 169
      Width = 782
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        2069.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'CdsAux.UF_CIDADE'
      Master = QrepRelListaClientes
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 4
        Top = 6
        Width = 120
        Height = 17
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          15.875000000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = CdsAux
        DataField = 'UF_CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object qrGrupCidadeUf: TQRGroup
      Left = 38
      Top = 209
      Width = 782
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        2069.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'CdsAux.NOME_CIDADE'
      Master = QrepRelListaClientes
      ReprintOnNewPage = False
      object QRDBText4: TQRDBText
        Left = 22
        Top = 6
        Width = 275
        Height = 17
        Size.Values = (
          44.979166666666670000
          58.208333333333340000
          15.875000000000000000
          727.604166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = CdsAux
        DataField = 'NOME_CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object CdsAux: TpFIBClientDataSet
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
        Name = 'IDX_UF_CLI'
        Fields = 'UF_CIDADE;COD_CLIENTE'
      end>
    Params = <>
    ProviderName = 'DspAux'
    StoreDefs = True
    Left = 376
    Top = 400
    object CdsAuxCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object CdsAuxNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object CdsAuxENDER_CLIENTE: TStringField
      FieldName = 'ENDER_CLIENTE'
      Size = 92
    end
    object CdsAuxBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      Size = 30
    end
    object CdsAuxSEXO_CLIENTE: TSmallintField
      FieldName = 'SEXO_CLIENTE'
    end
    object CdsAuxDTNASC_CLIENTE: TDateField
      FieldName = 'DTNASC_CLIENTE'
    end
    object CdsAuxFONER_CLIENTE: TStringField
      FieldName = 'FONER_CLIENTE'
      Size = 15
    end
    object CdsAuxCELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 15
    end
    object CdsAuxCPF_CLIENTE: TStringField
      FieldName = 'CPF_CLIENTE'
      Size = 11
    end
    object CdsAuxCGC_CLIENTE: TStringField
      FieldName = 'CGC_CLIENTE'
      Size = 14
    end
    object CdsAuxRG_CLIENTE: TStringField
      FieldName = 'RG_CLIENTE'
      Size = 13
    end
    object CdsAuxCODCIDADE_CLIENTE: TIntegerField
      FieldName = 'CODCIDADE_CLIENTE'
    end
    object CdsAuxNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 60
    end
    object CdsAuxCEP_CIDADE: TStringField
      FieldName = 'CEP_CIDADE'
      Size = 8
    end
    object CdsAuxDEPENDENTES_CLIENTE: TStringField
      FieldName = 'DEPENDENTES_CLIENTE'
      Size = 100
    end
    object CdsAuxDTCADASTRO_CLIENTE: TDateField
      FieldName = 'DTCADASTRO_CLIENTE'
    end
    object CdsAuxCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 8
    end
    object CdsAuxESTADOCIVIL_CLIENTE: TSmallintField
      FieldName = 'ESTADOCIVIL_CLIENTE'
    end
    object CdsAuxEMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 100
    end
    object CdsAuxCLASSIFICACAO_CLIENTE: TSmallintField
      FieldName = 'CLASSIFICACAO_CLIENTE'
    end
    object CdsAuxINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
      Size = 15
    end
    object CdsAuxAPELIDO_CLIENTE: TStringField
      FieldName = 'APELIDO_CLIENTE'
      Size = 60
    end
    object CdsAuxNOMEMAE_CLIENTE: TStringField
      FieldName = 'NOMEMAE_CLIENTE'
      Size = 60
    end
    object CdsAuxNOMEPAI_CLIENTE: TStringField
      FieldName = 'NOMEPAI_CLIENTE'
      Size = 60
    end
    object CdsAuxDTADMISSAO_CLIENTE: TDateField
      FieldName = 'DTADMISSAO_CLIENTE'
    end
    object CdsAuxDTALTERACAO_CLIENTE: TDateTimeField
      FieldName = 'DTALTERACAO_CLIENTE'
    end
    object CdsAuxTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
    end
    object CdsAuxENQUADRAMENTO_CLIENTE: TSmallintField
      FieldName = 'ENQUADRAMENTO_CLIENTE'
    end
    object CdsAuxCIDADE_UF: TStringField
      FieldName = 'CIDADE_UF'
      Size = 63
    end
    object CdsAuxUF_CIDADE: TStringField
      FieldName = 'UF_CIDADE'
      Size = 2
    end
  end
  object DspAux: TpFIBDataSetProvider
    DataSet = FormListClientes.QryListaClientes
    Left = 424
    Top = 392
  end
end
