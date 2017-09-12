unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Themes,
  Vcl.ExtCtrls, VCLTee.TeCanvas, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.ToolWin, Vcl.ComCtrls, ACBrBase, ACBrValidador,
  Vcl.Imaging.GIFImg, UnitCadOper, UnitPDV, UnitFuncoes;

type
  TFormPrincipal = class(TForm)
    pnDownMsg: TPanel;
    pnTop: TPanel;
    MnBarra: TMainMenu;
    teste11: TMenuItem;
    teste21: TMenuItem;
    teste31: TMenuItem;
    teste111: TMenuItem;
    teste121: TMenuItem;
    teste211: TMenuItem;
    teste221: TMenuItem;
    teste311: TMenuItem;
    teste321: TMenuItem;
    Opes1: TMenuItem;
    ConfiguraoGeral1: TMenuItem;
    Sair1: TMenuItem;
    tbTop: TToolBar;
    btnPdv: TToolButton;
    btnCompra: TToolButton;
    btnListaProd: TToolButton;
    btnSair: TToolButton;
    ImgList70x70: TImageList;
    separator1: TToolButton;
    separator2: TToolButton;
    separator3: TToolButton;
    pnLeft: TPanel;
    TbLeft: TToolBar;
    btnCliente: TToolButton;
    btnProduto: TToolButton;
    btnListaCli: TToolButton;
    ImgList48x48: TImageList;
    pnRight: TPanel;
    tbRight: TToolBar;
    btnNfe: TToolButton;
    pnDownInfo: TPanel;
    pnSecond: TPanel;
    pnFirst: TPanel;
    pnThird: TPanel;
    Operador1: TMenuItem;
    rocarOperador1: TMenuItem;
    LbNomeOper: TLabel;
    Label6: TLabel;
    LbCodOper: TLabel;
    PnContato: TPanel;
    lbEmail: TLabel;
    LbContato: TLabel;
    lbSite: TLabel;
    LbTraco: TLabel;
    LbCapaNome: TLabel;
    LbCapaEndereco: TLabel;
    procedure SbSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SbClienteClick(Sender: TObject);
    procedure SbListagensClick(Sender: TObject);
    procedure ListagemdeClientes1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure teste111Click(Sender: TObject);
    procedure teste121Click(Sender: TObject);
    procedure teste211Click(Sender: TObject);
    procedure teste221Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnListaCliClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure lbSiteMouseEnter(Sender: TObject);
    procedure lbSiteMouseLeave(Sender: TObject);
    procedure lbSiteClick(Sender: TObject);
    procedure ConfiguraoGeral1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Operador1Click(Sender: TObject);
    procedure rocarOperador1Click(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnPdvClick(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure AddButtonToToolbar(var bar: TToolBar; caption: string);
    procedure ConfigStyle;
    procedure FillOperPDV;
//    procedure AbreTelaCliente();

    function PromptUser(Msg: string): Boolean;

  public
    { Public declarations }
    procedure AtualizaOperador;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses UnitListClientes, UnitListCidades, Unt_FrmCadCidade, ShellAPI,
  Clipbrd, UnitConfigGeral, UnitConstants, Unt_DM, UnitTrocaOperador, UnitLogin,
  Unt_FrmCadProduto;

{$R *.dfm}

procedure TFormPrincipal.AddButtonToToolbar(var bar: TToolBar; caption: string);
var
  newbtn: TToolButton;
  lastbtnidx: integer;
begin
  newbtn := TToolButton.Create(bar);
  newbtn.caption := caption;
  lastbtnidx := bar.ButtonCount - 1;
  if lastbtnidx > -1 then
    newbtn.Left := bar.Buttons[lastbtnidx].Left + bar.ButtonWidth
  else
    newbtn.Left := 0;
  // newbtn.Parent := bar;
end;

procedure TFormPrincipal.AtualizaOperador;
var
  vCod, vNome: String;
begin
  LbCodOper.caption := Unt_DM.codOperador;
  LbNomeOper.caption := Unt_DM.nomeOperador;
end;

procedure TFormPrincipal.Cidades1Click(Sender: TObject);
begin
  UnitListCidades.FormListCidades.ShowModal;
end;

procedure TFormPrincipal.ConfigStyle;
begin
  //with Unt_DM.dm.FdQuery do
  //begin
//    Close;
//    SQL.Clear;
    {SQL.Add('SELECT ' + UnitConstants.NOME_TEMA + ', ' + UnitConstants.TIPO_TEMA
      + ' FROM ' + UnitConstants.TABLE_CONFIG);
    Open();

    if ((FieldByName(UnitConstants.TIPO_TEMA).AsInteger) = 0) then
      TStyleManager.TrySetStyle(UnitConstants.DEFAULT_STYLE)
    else
      TStyleManager.TrySetStyle(FieldByName(UnitConstants.NOME_TEMA).AsString);
     }
//    SQL.Clear;
  //end;
end;

procedure TFormPrincipal.ConfiguraoGeral1Click(Sender: TObject);
begin
  UnitConfigGeral.FormConfigGeral.ShowModal;
end;

procedure TFormPrincipal.Copiar1Click(Sender: TObject);
begin
  Clipboard.AsText := lbEmail.caption;
end;

procedure TFormPrincipal.FillOperPDV;
begin
  UnitPDV.FormPDV.EdtOperador.Text := UnitFuncoes.Remove_Char_Especial
    (LbCodOper.caption);
  UnitPDV.FormPDV.EdtOpExib.Text := LbNomeOper.caption;
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if PromptUser('Você realmente deseja sair do sistema?') then
  begin
    Self.Free;
    Application.Free;
    ExitProcess(0);
  end
  else
  begin
    Action := caNone;
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  ConfigStyle;
end;

procedure TFormPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F6 then
  begin
    //UnitCadCliente.FormCadastroCliente.ShowModal;
  end
  else if Key = VK_F3 then
  begin
    Unt_FrmCadProduto.FormCadProduto.ShowModal;
  end;
end;

procedure TFormPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TFormPrincipal.FormPaint(Sender: TObject);
begin
  PnContato.Left := pnLeft.Width + 15;
  PnContato.Width := FormPrincipal.Width - pnRight.Width - pnLeft.Width - 20;
  PnContato.Top := FormPrincipal.Height - pnDownMsg.Height - pnDownInfo.Height - pnTop.Height + 15;

  LbContato.Width := 250;
  lbEmail.Width := 250;
  lbSite.Width := 250;

  LbCapaNome.Top := (Height - LbCapaNome.Height - LbCapaEndereco.Height) DIV 2;
  LbCapaNome.Left := (Width - LbCapaNome.Width) DIV 2;

  LbCapaEndereco.Top := (Height + LbCapaNome.Height - LbCapaEndereco.Height) DIV 2;
  LbCapaEndereco.Left := (Width - LbCapaEndereco.Width) DIV 2;
end;

procedure TFormPrincipal.FormResize(Sender: TObject);
begin

  if not(IsZoomed(FormPrincipal.Handle)) then
  begin
    FormPrincipal.Top := (Screen.DesktopHeight - FormPrincipal.Height) DIV 2;
    FormPrincipal.Left := (Screen.DesktopWidth - FormPrincipal.Width) DIV 2;
  end;

  //lbEmail.Top := FormPrincipal.Height - pnDownMsg.Height + pnDownInfo.Height -
    //pnUp.Height - GetSystemMetrics(SM_CYMENU) - 12;

  lbEmail.Left := pnLeft.Width + 5;

  // ----------

  //LbContato.Top := FormPrincipal.Height - pnDownMsg.Height + pnDownInfo.Height -
    //pnUp.Height - GetSystemMetrics(SM_CYMENU) - 12;

  // LbContato.Left := FormPrincipal.Width - pnRight.Width - pnLeft.Width - 25;

  LbContato.Left := pnLeft.Width + lbEmail.Width + 50;

  // ----------

  //lbSite.Top := FormPrincipal.Height - pnDownMsg.Height + pnDownInfo.Height -
    //pnUp.Height - GetSystemMetrics(SM_CYMENU) - 12;

  lbSite.Left := pnLeft.Width + lbEmail.Width + LbContato.Width + 100;

end;

procedure TFormPrincipal.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if FormPrincipal.Showing then
    if Msg.CharCode = Ord('O') then
      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_MENU) < 0) then
        UnitTrocaOperador.FormTrocaOper.ShowModal;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  AtualizaOperador();
end;

procedure TFormPrincipal.lbSiteClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'www.google.com.br', nil, nil, SW_SHOWNORMAL);
end;

procedure TFormPrincipal.lbSiteMouseEnter(Sender: TObject);
begin
  lbSite.Font.Style := [fsBold, fsUnderline];
end;

procedure TFormPrincipal.lbSiteMouseLeave(Sender: TObject);
begin
  lbSite.Font.Style := [fsBold];
end;

procedure TFormPrincipal.ListagemdeClientes1Click(Sender: TObject);
begin
  UnitListClientes.FormListClientes.ShowModal;
end;

procedure TFormPrincipal.Operador1Click(Sender: TObject);
begin
  FormCadOper.ShowModal;
end;

function TFormPrincipal.PromptUser(Msg: string): Boolean;
var
  td: TTaskDialog;
  tb: TTaskDialogBaseButtonItem;
begin
  td := TTaskDialog.Create(nil);
  try
    SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);
    // TIRAR O BEEP
    // SystemParametersInfo(SPI_SETBEEP, 1, nil, SPIF_SENDWININICHANGE); VOLTAR O BEET

    td.caption := 'Aviso';
    td.Text := Msg;
    td.MainIcon := tdiWarning;
    td.CommonButtons := [];

    tb := td.Buttons.Add;
    tb.caption := 'Sim';
    tb.ModalResult := 100;

    tb := td.Buttons.Add;
    tb.caption := 'Não';
    tb.ModalResult := 101;

    td.Execute;

    if td.ModalResult = 100 then
    begin
      Result := True;
    end
    else if td.ModalResult = 101 then
    begin
      Result := False;
    end
    else
    begin
      Result := False;
    end;

    td.Free;
  Except
    On E: Exception do
    begin
      ShowMessage(E.ClassName + ' Error raised, with ' + E.Message);
      Result := False;
    end;
  end;
end;

procedure TFormPrincipal.rocarOperador1Click(Sender: TObject);
begin
  UnitTrocaOperador.FormTrocaOper.ShowModal;
end;

procedure TFormPrincipal.SbClienteClick(Sender: TObject);
begin
  //UnitCadCliente.FormCadastroCliente.ShowModal;
end;

procedure TFormPrincipal.SbListagensClick(Sender: TObject);
begin
  UnitListClientes.FormListClientes.ShowModal;
end;

procedure TFormPrincipal.SbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.teste111Click(Sender: TObject);
begin
  //UnitCadCliente.FormCadastroCliente.ShowModal;
end;

procedure TFormPrincipal.teste121Click(Sender: TObject);
begin
  Unt_FrmCadCidade.indxAddEdit := 0;
  Unt_FrmCadCidade.FormCadCidade.LimparCampos(0);
  FormCadCidade.ShowModal;
end;

procedure TFormPrincipal.teste211Click(Sender: TObject);
begin
  UnitListClientes.FormListClientes.ShowModal;
end;

procedure TFormPrincipal.teste221Click(Sender: TObject);
begin
  UnitListCidades.FormListCidades.ShowModal;
end;

procedure TFormPrincipal.btnPdvClick(Sender: TObject);
begin
  FillOperPDV;
  UnitPDV.FormPDV.ShowModal;
end;

procedure TFormPrincipal.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.btnClienteClick(Sender: TObject);
begin
  //UnitCadCliente.FormCadastroCliente.ShowModal;
end;

procedure TFormPrincipal.btnListaCliClick(Sender: TObject);
begin
  UnitListClientes.FormListClientes.ShowModal;
end;

procedure TFormPrincipal.btnProdutoClick(Sender: TObject);
begin
 Unt_FrmCadProduto.FormCadProduto.ShowModal;
end;

end.
