unit Unt_FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons, Vcl.Themes, Vcl.ExtCtrls, VCLTee.TeCanvas,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.ToolWin, Vcl.ComCtrls, ACBrBase,
  ACBrValidador, Vcl.Imaging.GIFImg, ShellAPI, Clipbrd, System.Actions,
  Vcl.ActnList, IB_Services, Unt_FrmCadGrupo;

type
  TFrm_principal = class(TForm)
    pnDownMsg:         TPanel;
    pnTop:             TPanel;
    pnLeft:            TPanel;
    pnDownInfo:        TPanel;
    pnSecond:          TPanel;
    pnFirst:           TPanel;
    pnThird:           TPanel;
    TbLeft:            TToolBar;
    tbTop:             TToolBar;
    btnPdv:            TToolButton;
    btnCompra:         TToolButton;
    btnListaProd:      TToolButton;
    btnSair:           TToolButton;
    separator1:        TToolButton;
    separator2:        TToolButton;
    separator3:        TToolButton;
    btnCliente:        TToolButton;
    btnProduto:        TToolButton;
    btnListaCli:       TToolButton;
    ImgListIcons:      TImageList;
    ImgLogo:           TImage;
    LbNomeOper:        TLabel;
    Label6:            TLabel;
    LbCodOper:         TLabel;
    LbTraco:           TLabel;
    ActList48x48:      TActionList;
    ActCadCliente:     TAction;
    ActCadProduto:     TAction;
    ActListClientes:   TAction;
    ActNFe:            TAction;
    pnRight:           TPanel;
    ToolBar1:          TToolBar;
    ToolButton3:       TToolButton;
    Separator4:        TToolButton;
    btnBackup:         TMenuItem;
    PnlClient:         TPanel;
    PnContato:         TPanel;
    lbEmail:           TLabel;
    LbContato:         TLabel;
    lbSite:            TLabel;
    PnlEmpresa:        TPanel;
    LbNomeEmpresa:     TLabel;
    LbEnderecoEmpresa: TLabel;
    MnBarra:           TMainMenu;
    btnGrupo:          TMenuItem;
    btnSubGrupo:       TMenuItem;
    teste11:           TMenuItem;
    teste21:           TMenuItem;
    teste31:           TMenuItem;
    teste111:          TMenuItem;
    teste121:          TMenuItem;
    teste211:          TMenuItem;
    teste221:          TMenuItem;
    teste311:          TMenuItem;
    teste321:          TMenuItem;
    Opes1:             TMenuItem;
    ConfiguraoGeral1:  TMenuItem;
    Sair1:             TMenuItem;
    Operador1:         TMenuItem;
    rocarOperador1:    TMenuItem;

    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ListagemdeClientes1Click(Sender: TObject);
    procedure ActListClientesExecute(Sender: TObject);
    procedure ConfiguraoGeral1Click(Sender: TObject);
    procedure ActCadProdutoExecute(Sender: TObject);
    procedure ActCadClienteExecute(Sender: TObject);
    procedure lbSiteMouseEnter(Sender: TObject);
    procedure lbSiteMouseLeave(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
    procedure Operador1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure teste121Click(Sender: TObject);
    procedure btnGrupoClick(Sender: TObject);
    procedure teste111Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure lbSiteClick(Sender: TObject);
    procedure SbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSubGrupoClick(Sender: TObject);
    procedure btnPdvClick(Sender: TObject);

  private
    { Private declarations }

    ImgListBtnTop: TImageList;
    ImgListBtnSides: TImageList;

    procedure AddButtonToToolbar(var bar: TToolBar; caption: string);
    procedure AbreTelaListaClientes;
    procedure ConfigStyle;
    procedure FillOperPDV;

  public
    { Public declarations }
    procedure PreencheEnquadramentoCmB(Cmb: TComboBox; frm: TForm);
    procedure MostraDadosEmpresa(MostraLogo, MostraDados: Boolean);
    procedure AbreTelaCliente(Cod: Integer);
    procedure AbreTelaProduto(Cod: Integer);
    procedure AbreTelaCidade(Cod: Integer);
    procedure PreencheOperador;

    function AbreTelaBuscaCidade: String;
    function AbreTelaBuscaCliente: String;
    function AbreTelaBuscaProduto: String;

  end;

  procedure AbreTelaGrupo(tipoCad: TCadastro; cod: Integer);

var
  Frm_principal: TFrm_principal;

implementation

uses Unt_FrmListaClientes, UnitListCidades, Unt_FrmCadCidade, Unt_FrmConfigGeral, UnitConstants,
  Unt_DM, UnitTrocaOperador, UnitLogin, Unt_FrmCadProduto, UnitCadOper, UnitPDV, UnitFuncoes,
  Unt_FrmCadCliente, Unt_FrmBuscaCidade,Unt_FrmBuscaCliente, Unt_FrmBuscaProduto, Unt_FrmBck,
  Unt_Dados, Unt_FrmStrings, Unt_PDV;

{$R *.dfm}

function TFrm_principal.AbreTelaBuscaCidade: String;
begin
  Result := '';
  try
    with Unt_FrmBuscaCidade.Frm_BuscaCidade do begin
      if (Frm_BuscaCidade = nil) then Application.CreateForm(TFrm_BuscaCidade, Frm_BuscaCidade);
      ShowModal();
      if (Frm_BuscaCidade.ModalResult = mrOk) then Result := Unt_FrmBuscaCidade.retorno.ToString;
    end;
  finally
    FreeAndNil(Frm_BuscaCidade);
  end;
end;

function TFrm_principal.AbreTelaBuscaCliente: String;
begin
  Result := '';
  try
    with Unt_FrmBuscaCliente.FormBuscador do begin
      if (FormBuscador = nil) then Application.CreateForm(TFormBuscador, FormBuscador);
      ShowModal();
      if FormBuscador.ModalResult = mrOk then Result := Unt_FrmBuscaCliente.retorno.ToString;
    end;
  finally
    FreeAndNil(FormBuscador);
  end;
end;

function TFrm_principal.AbreTelaBuscaProduto: String;
begin
  Result := '';
  try
    with Unt_FrmBuscaProduto.Frm_BuscaProduto do begin
      if (Frm_BuscaProduto = nil) then Application.CreateForm(TFrm_BuscaProduto, Frm_BuscaProduto);
      ShowModal();
      if Frm_BuscaProduto.ModalResult = mrOk then Result := Unt_FrmBuscaProduto.retorno.ToString;
    end;
  finally
    FreeAndNil(Frm_BuscaProduto);
  end;
end;

procedure TFrm_principal.AbreTelaCidade(Cod: Integer);
begin
  try
    with Unt_FrmCadCidade.FormCadCidade do begin
      if (FormCadCidade = nil) then Application.CreateForm(TFormCadCidade, FormCadCidade);
      CodCid := Cod;
      ShowModal();
    end;
  finally
    FreeAndNil(FormCadCidade);
  end;
end;

procedure TFrm_principal.AbreTelaCliente(Cod: Integer);
begin
  try
    with Unt_FrmCadCliente.FormCadastroCliente do begin
      if (FormCadastroCliente = nil) then Application.CreateForm(TFormCadastroCliente, FormCadastroCliente);
      CodCli := Cod;
      ShowModal();
    end;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure AbreTelaGrupo(tipoCad: TCadastro; cod: Integer);
begin
  try
    with Frm_CadGrupo do begin
      if (Frm_CadGrupo = nil) then Application.CreateForm(TFrm_CadGrupo, Frm_CadGrupo);
      Frm_CadGrupo.cadastro := tipoCad;
      Frm_CadGrupo.cod := cod;
      ShowModal();
    end;
  finally
    FreeAndNil(Frm_CadGrupo);
  end;
end;

procedure TFrm_principal.AbreTelaListaClientes;
begin
  try
    if (FormListClientes = nil) then Application.CreateForm(TFormListClientes, FormListClientes);
    FormListClientes.ShowModal;
  finally
    FreeAndNil(FormListClientes);
  end;

  exit;

  try
    with Unt_FrmListaClientes.FormListClientes do begin
      if (FormListClientes = nil) then Application.CreateForm(TFormListClientes, FormListClientes);
      ShowModal();
    end;
  finally
    FreeAndNil(FormListClientes);
  end;
end;

procedure TFrm_principal.AbreTelaProduto(Cod: Integer);
begin
  try
    with Unt_FrmCadProduto.FormCadProduto do begin
      if (FormCadProduto = nil) then Application.CreateForm(TFormCadProduto, FormCadProduto);
       codProd := Cod;
      ShowModal();
    end;
  finally
    FreeAndNil(FormCadProduto);
  end;
end;

procedure TFrm_principal.ActCadClienteExecute(Sender: TObject);
begin
  AbreTelaCliente(0);
end;

procedure TFrm_principal.ActCadProdutoExecute(Sender: TObject);
begin
  AbreTelaProduto(1);
end;

procedure TFrm_principal.ActListClientesExecute(Sender: TObject);
begin
  AbreTelaListaClientes;
end;

procedure TFrm_principal.AddButtonToToolbar(var bar: TToolBar; caption: string);
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
end;

procedure TFrm_principal.PreencheOperador;
begin
  LbCodOper.caption := dm.getIdOperadorLogado;
  LbNomeOper.caption := dm.getNomeOperadorLogado;
end;

procedure TFrm_principal.Cidades1Click(Sender: TObject);
begin
  UnitListCidades.FormListCidades.ShowModal;
end;

procedure TFrm_principal.ConfigStyle;
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

procedure TFrm_principal.ConfiguraoGeral1Click(Sender: TObject);
begin
  try
    with Unt_FrmConfigGeral.Frm_ConfigGeral do begin
      if (Frm_ConfigGeral = nil) then Application.CreateForm(TFrm_ConfigGeral, Frm_ConfigGeral);
      ShowModal();
    end;
  finally
    FreeAndNil(Frm_ConfigGeral);
  end;
end;

procedure TFrm_principal.Copiar1Click(Sender: TObject);
begin
  Clipboard.AsText := lbEmail.caption;
end;

procedure TFrm_principal.FillOperPDV;
begin
  FormPDV.EdtCodOperador.Text := Remove_Char_Especial(LbCodOper.caption);
  FormPDV.EdtNomeOperador.Text := LbNomeOper.caption;
end;

procedure TFrm_principal.FormCreate(Sender: TObject);
begin
  MostraDadosEmpresa(printLogoEmpresa,printDadosEmpresa);
  PreencheOperador();
end;

procedure TFrm_principal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    btnSair.Click;
  end;
end;

procedure TFrm_principal.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if Frm_principal.Showing then
    if Msg.CharCode = Ord('O') then
      if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_MENU) < 0) then
        UnitTrocaOperador.FormTrocaOper.ShowModal;
end;

procedure TFrm_principal.lbSiteClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'www.google.com.br', nil, nil, SW_SHOWNORMAL);
end;

procedure TFrm_principal.lbSiteMouseEnter(Sender: TObject);
begin
  lbSite.Font.Style := [fsBold, fsUnderline];
end;

procedure TFrm_principal.lbSiteMouseLeave(Sender: TObject);
begin
  lbSite.Font.Style := [fsBold];
end;

procedure TFrm_principal.ListagemdeClientes1Click(Sender: TObject);
begin
  Unt_FrmListaClientes.FormListClientes.ShowModal;
end;

procedure TFrm_principal.Operador1Click(Sender: TObject);
begin
  FormCadOper.ShowModal;
end;

procedure TFrm_principal.SbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_principal.teste111Click(Sender: TObject);
begin
  AbreTelaCliente(0);
end;

procedure TFrm_principal.teste121Click(Sender: TObject);
begin
  AbreTelaCidade(0);
end;

procedure TFrm_principal.btnBackupClick(Sender: TObject);
begin
  try
    with Unt_FrmBck.Frm_Bck do begin
      if (Frm_Bck = nil) then Application.CreateForm(TFrm_Bck, Frm_Bck);
      ShowModal();
    end;
  finally
    FreeAndNil(Frm_Bck);
  end
end;

procedure TFrm_principal.btnGrupoClick(Sender: TObject);
begin
  AbreTelaGrupo(TCadastro.tpGrupo, 0);
end;

procedure TFrm_principal.btnPdvClick(Sender: TObject);
var Frm_PDV: TFrm_PDV;
begin
  with Frm_PDV do begin
    try
      Application.CreateForm(TFrm_PDV,  Frm_PDV);
      ShowModal;
    finally
      FreeAndNil(Frm_PDV);
    end;
  end;
end;

procedure TFrm_principal.btnSairClick(Sender: TObject);
begin
  if MsgFixa(UnitFuncoes.tMsgCloseFrm) then Close;
end;

procedure TFrm_principal.btnSubGrupoClick(Sender: TObject);
begin
  AbreTelaGrupo(TCadastro.tpSubgrupo, 0);
end;

procedure TFrm_principal.PreencheEnquadramentoCmB(Cmb: TComboBox; frm: TForm);
begin
  Cmb.Clear;
  Cmb.Items.Add('Simples Nacional');
  cmb.Items.Add('Lucro Presumido');
  Cmb.Items.Add('Lucro Real');
  Cmb.ItemIndex := -1;
end;

procedure TFrm_principal.MostraDadosEmpresa(MostraLogo, MostraDados: Boolean);
begin
  ImgLogo.Align := alNone;
  PnlEmpresa.Align := alNone;

  if MostraDados then begin
    PnlEmpresa.Visible := True;

    LbNomeEmpresa.Caption := UpperCase(Unt_Dados.nomeEmpresa);
    LbEnderecoEmpresa.Caption := enderecoEmpresa + ', ' + numEmpresa + #13 + cidadeEmpresa + '-' + ufEmpresa + #13 + FormataTelefone(telefoneEmpresa);

    //Centralizar Textos Nome e Endereco Empresa
    if LbNomeEmpresa.Width > LbEnderecoEmpresa.Width then LbEnderecoEmpresa.Width := LbNomeEmpresa.Width
    else LbNomeEmpresa.Width := LbEnderecoEmpresa.Width;

    LbNomeEmpresa.Left := (Screen.Width - LbNomeEmpresa.Width - pnLeft.Width - pnRight.Width) div 2;
    LbEnderecoEmpresa.Left := (Screen.Width - LbEnderecoEmpresa.Width - pnLeft.Width - pnRight.Width) div 2;

    if MostraLogo then begin
      PnlEmpresa.Align := alBottom;
      LbNomeEmpresa.Top := (PnlEmpresa.Height - LbNomeEmpresa.Height - LbEnderecoEmpresa.Height) div 2;
      LbEnderecoEmpresa.Top := (PnlEmpresa.Height - LbEnderecoEmpresa.Height + LbNomeEmpresa.Height) div 2;
    end else begin
      PnlEmpresa.Align := alClient;
      LbNomeEmpresa.Top := (Screen.Height - LbNomeEmpresa.Height - LbEnderecoEmpresa.Height - pnTop.Height - pnDownMsg.Height - PnContato.Height - pnDownInfo.Height) div 2;
      LbEnderecoEmpresa.Top := (Screen.Height - LbEnderecoEmpresa.Height + LbNomeEmpresa.Height - pnTop.Height - pnDownMsg.Height - PnContato.Height - pnDownInfo.Height) div 2;
    end;
  end else PnlEmpresa.Visible := False;

  if MostraLogo then begin
    try
      ImgLogo.Picture.LoadFromFile(caminhoLogo);
      ImgLogo.Visible := True;
      ImgLogo.Align := alClient;
    except
      on E: exception do begin

      end;
    end;
  end else ImgLogo.Picture.Assign(nil);
end;

end.
