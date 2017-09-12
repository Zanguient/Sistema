object FormTrocaOper: TFormTrocaOper
  Left = 0
  Top = 0
  Caption = 'Trocar Operador'
  ClientHeight = 261
  ClientWidth = 267
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 267
    Height = 261
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 16
      Width = 227
      Height = 28
      Margins.Top = 15
      Align = alTop
      Alignment = taCenter
      Caption = 'LINASSI SISTEMAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label8: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 47
      Width = 136
      Height = 18
      Margins.Top = 0
      Align = alTop
      Alignment = taCenter
      Caption = 'Troca de operador'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Shape3: TShape
      Left = 32
      Top = 71
      Width = 200
      Height = 1
      Brush.Style = bsHorizontal
      Pen.Mode = pmMask
    end
    object Label9: TLabel
      Left = 45
      Top = 78
      Width = 103
      Height = 13
      Caption = 'Operador Logado: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape4: TShape
      Left = 8
      Top = 104
      Width = 250
      Height = 117
      Brush.Style = bsHorizontal
      Pen.Mode = pmMask
    end
    object Label11: TLabel
      Left = 19
      Top = 112
      Width = 53
      Height = 16
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 19
      Top = 166
      Width = 45
      Height = 16
      Caption = 'Senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbPass: TLabel
      Left = 70
      Top = 168
      Width = 4
      Height = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Visible = False
    end
    object LbUser: TLabel
      Left = 78
      Top = 114
      Width = 4
      Height = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Visible = False
    end
    object LbOperador: TLabel
      Left = 148
      Top = 78
      Width = 66
      Height = 13
      Caption = 'Administrador'
    end
    object EdtUser: TEdit
      Left = 18
      Top = 134
      Width = 230
      Height = 21
      TabOrder = 0
      OnKeyPress = EdtUserKeyPress
    end
    object EdtPass: TEdit
      Left = 18
      Top = 188
      Width = 231
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      OnKeyPress = EdtPassKeyPress
    end
    object BtnCancelar: TButton
      Left = 139
      Top = 227
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object BtnSalvar: TButton
      Left = 59
      Top = 227
      Width = 74
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = BtnSalvarClick
    end
  end
end
