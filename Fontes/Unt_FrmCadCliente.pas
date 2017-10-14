unit Unt_FrmCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.Menus, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ExtDlgs,
  ACBrBase, ACBrValidador, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, System.Actions, Vcl.ActnList, TypInfo;

type
  TFormCadastroCliente = class(TForm)
    BtnSalvar: TButton;
    BtnLimpar: TButton;
    BtnCancelar: TButton;
    BtnDeletar: TButton;

    OpenPicture: TOpenPictureDialog;

    PopupMenu1: TPopupMenu;
    teste11: TMenuItem;
    PnDown: TPanel;
    LbOperacao: TLabel;

    ACBrValidador: TACBrValidador;

    QryCliente: TpFIBDataSet;
    QryClienteCOD_CLIENTE: TFIBIntegerField;
    QryClienteNOME_CLIENTE: TFIBStringField;
    QryClienteENDER_CLIENTE: TFIBStringField;
    QryClienteBAIRRO_CLIENTE: TFIBStringField;
    QryClienteSEXO_CLIENTE: TFIBSmallIntField;
    QryClienteDTNASC_CLIENTE: TFIBDateField;
    QryClienteFONER_CLIENTE: TFIBStringField;
    QryClienteCPF_CLIENTE: TFIBStringField;
    QryClienteRG_CLIENTE: TFIBStringField;
    QryClienteCODCIDADE_CLIENTE: TFIBIntegerField;
    QryClienteDEPENDENTES_CLIENTE: TFIBStringField;
    QryClienteDTCADASTRO_CLIENTE: TFIBDateField;
    QryClienteCEP_CLIENTE: TFIBStringField;
    QryClienteESTADOCIVIL_CLIENTE: TFIBSmallIntField;
    QryClienteEMAIL_CLIENTE: TFIBStringField;
    QryClienteCLASSIFICACAO_CLIENTE: TFIBSmallIntField;
    QryClienteINSCRICAO_CLIENTE: TFIBStringField;
    QryClienteAPELIDO_CLIENTE: TFIBStringField;
    QryClienteNOMEMAE_CLIENTE: TFIBStringField;
    QryClienteNOMEPAI_CLIENTE: TFIBStringField;
    QryClienteDTADMISSAO_CLIENTE: TFIBDateField;
    QryClienteDTALTERACAO_CLIENTE: TFIBDateTimeField;
    QryClienteTIPO_PESSOA: TFIBStringField;
    QryClienteENQUADRAMENTO_CLIENTE: TFIBSmallIntField;
    DSCliente: TDataSource;
    QryClienteNOME_CIDADE: TFIBStringField;
    QryClienteCEP_CIDADE: TFIBStringField;
    ActionList: TActionList;
    ActGravar: TAction;
    ActLimpar: TAction;
    ActDeletar: TAction;
    ActCancelar: TAction;
    QryClienteCGC_CLIENTE: TFIBStringField;
    QryClienteNUM_CLIENTE: TFIBStringField;
    QryClienteCELULAR_CLIENTE: TFIBStringField;
    PageControl: TPageControl;
    TSheetPrincipal: TTabSheet;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    btnBuscarCliente: TSpeedButton;
    LbTxtCpfCnpj: TLabel;
    LbRgIe: TLabel;
    SbDown: TSpeedButton;
    CbIdade: TComboBox;
    GroupBox1: TGroupBox;
    btnBuscarCidade: TSpeedButton;
    btnCadCidade: TSpeedButton;
    EdtNomeCidade: TEdit;
    EdtCodCidade: TEdit;
    EdtCod: TEdit;
    GbTipoCad: TGroupBox;
    rbPf: TRadioButton;
    rbPj: TRadioButton;
    CbAtivo: TCheckBox;
    edtNome: TDBEdit;
    EdtTelefone: TDBEdit;
    EdtEndereco: TDBEdit;
    EdtNum: TDBEdit;
    EdtBairro: TDBEdit;
    EdtLogradouro: TDBEdit;
    edtCep: TDBEdit;
    edtCpfCnpj: TMaskEdit;
    edtIeRg: TMaskEdit;
    CbSexo: TComboBox;
    TSheetAdicional: TTabSheet;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label15: TLabel;
    Label3: TLabel;
    EdtTime: TEdit;
    EdtRenda: TEdit;
    EdtApelido: TEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EdtRendMae: TEdit;
    EdtRendPai: TEdit;
    EdtNomeMae: TEdit;
    EdtNomePai: TEdit;
    TabSheet3: TTabSheet;
    Label19: TLabel;
    MeLivre: TMemo;
    TabSheet1: TTabSheet;
    Label20: TLabel;
    BtnProcurarImg: TButton;
    BtnLimparImg: TButton;
    EdtResultImg: TEdit;
    Image: TImage;

    procedure ProxCampoEnter(Sender: TEdit; Key: Word);
    procedure CbIdadeEnter(Sender: TObject);
    procedure rbPfEnter(Sender: TObject);
    procedure CbSexo2Enter(Sender: TObject);
    procedure EdtNomeTyping(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure SbListClientesClick(Sender: TObject);
    procedure btnBuscarCidadeClick(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure SbDownClick(Sender: TObject);
    procedure teste11Click(Sender: TObject);
    procedure FormPrincipal1Click(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnProcurarImgClick(Sender: TObject);
    procedure BtnLimparImgClick(Sender: TObject);
    procedure edtNome1KeyPress(Sender: TObject; var Key: Char);
    procedure edtCep1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtBairro1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure btnBuscarClienteClick(Sender: TObject);
    procedure EdtApelidoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtRendaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtRendMaeKeyPress(Sender: TObject; var Key: Char);

    procedure QryClienteSEXO_CLIENTEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure EdtRendaExit(Sender: TObject);
    procedure EdtRendPaiExit(Sender: TObject);
    procedure EdtRendMaeExit(Sender: TObject);
    procedure edtCpfCnpj2Exit(Sender: TObject);
    procedure edtIeRg2Exit(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure EdtCodExit(Sender: TObject);
    procedure rbPfClick(Sender: TObject);
    procedure rbPjClick(Sender: TObject);
    procedure EdtCodCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCadCidadeClick(Sender: TObject);
    procedure EdtCodCidadeExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }

    procedure ControlarEdtCod(bol: Boolean);
    procedure FormataCampo(numCampo: Integer; strCampo: string);
    procedure buscarFotoUser(indx: Integer);
    procedure MascaraDinheiro;
    procedure findCod(Cod: Integer);

    function CodManual: Boolean;
    function CamposEmBranco: Boolean;
    function EditarRgIe: Boolean;
    function ValidarCpfCnpj: Boolean;
    function ValidarIE: Boolean;
    function TiraMascara(S: String): String;
    function VerificarCampos(codOperacao: Integer): Boolean;
    function TestaCampos: Boolean;
  public
    { Public declarations }
    procedure PrepararConsultaCli();
    procedure ShowModal(pCod: String); Overload;
  end;

var
  FormCadastroCliente: TFormCadastroCliente;
  CodCli: Integer;

implementation

Uses
  Unt_DM, UnitBuscarCid, Unt_FrmPrincipal, UnitValidaCPF, UnitValidaCNPJ, UnitValidaInscricao,
  Unt_FrmCadProduto, Unt_FrmCadCidade, Unt_FrmListaClientes, UnitListCidades, Unt_FrmBuscaCliente, UnitFuncoes,
  Unt_FrmBuscaCidade;

{$R *.dfm}

var
  iconIndex, indxTipoCad, sairIndex, indxSheet, indxAbrirCad: Integer;
  cpfCnpj, rgIe, RendaMae, RendaPai, Renda: string;

procedure TFormCadastroCliente.MascaraDinheiro;
begin
  if Length(Trim(EdtRenda.Text)) > 0 then
  begin
    Renda := EdtRenda.Text;
    EdtRenda.Text := FormatFloat('#,##0.00', StrToFloat(EdtRenda.Text));
  end;

  if Length(Trim(EdtRendPai.Text)) > 0 then
  begin
    RendaPai := EdtRendPai.Text;
    EdtRendPai.Text := FormatFloat('#,##0.00', StrToFloat(EdtRendPai.Text));
  end;

  if Length(Trim(EdtRendMae.Text)) > 0 then
  begin
    RendaMae := EdtRendMae.Text;
    EdtRendMae.Text := FormatFloat('#,##0.00', StrToFloat(EdtRendMae.Text));
  end;
end;

procedure TFormCadastroCliente.edtCep1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.edtCpfCnpj2Exit(Sender: TObject);
begin
  ValidarCpfCnpj;
end;

procedure TFormCadastroCliente.edtNome1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    // FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
    CbSexo.SetFocus;
  end;
end;

procedure TFormCadastroCliente.edtIeRg2Exit(Sender: TObject);
begin
  ValidarIE;
end;

function TFormCadastroCliente.EditarRgIe: Boolean;
begin
  if Length(Trim(edtIeRg.Text)) = 9 then
  begin
    // So para Rg
    rgIe := '';
    Result := False;
  end
  else if Length(Trim(edtIeRg.Text)) = 0 then
  begin
    // So para IE
    rgIe := '';
    Result := False;
  end
  else
  begin
    rgIe := edtIeRg.Text;
    // rgIe := StringReplace(MaskEdtRgIe.Text, '.', '',
    // [rfReplaceAll, rfIgnoreCase]);
    // rgIe := StringReplace(rgIe, '-', '', [rfReplaceAll, rfIgnoreCase]);
    Result := True;
  end;
  ValidarIE;
end;

procedure TFormCadastroCliente.EdtApelidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtBairro1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtCodCidadeExit(Sender: TObject);
var retorno: String;
begin
  if (Length(Trim(EdtCodCidade.Text)) >  0) then begin
    retorno := getCampoSelect('SELECT C.NOME_CIDADE FROM CIDADES C WHERE C.COD_CIDADE = ' + EdtCodCidade.Text);

    if (retorno <> '') then EdtNomeCidade.Text := retorno
    else begin
      EdtNomeCidade.Clear;
      EdtCodCidade.Clear
    end;
  end;
end;

procedure TFormCadastroCliente.EdtCodCidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then btnBuscarCidade.Click
  else if (Key = VK_ADD) then btnCadCidade.Click;
end;

procedure TFormCadastroCliente.EdtCodCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in [#8, '0' .. '9']) then
  begin
    Key := #0;
  end;
end;

procedure TFormCadastroCliente.EdtCodExit(Sender: TObject);
begin
  EdtCod.Enabled := False;
end;

procedure TFormCadastroCliente.EdtCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then btnBuscarCliente.Click;
end;

procedure TFormCadastroCliente.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroCliente.BtnDeletarClick(Sender: TObject);
begin
  if QryCliente.State = dsEdit then begin
    if not MsgFixa(UnitFuncoes.tMsgDelBtn) then Exit;

    QryCliente.UpdateTransaction.StartTransaction;
    QryCliente.Delete;
    QryCliente.UpdateTransaction.Commit;

    findCod(0);
  end;
end;

procedure TFormCadastroCliente.BtnLimparClick(Sender: TObject);
var i: integer;
begin
  findCod(0);
end;

procedure TFormCadastroCliente.BtnLimparImgClick(Sender: TObject);
begin
  EdtResultImg.Text := '';
  Image.Picture := nil;
end;

procedure TFormCadastroCliente.BtnProcurarImgClick(Sender: TObject);
begin
  buscarFotoUser(0);
end;

procedure TFormCadastroCliente.BtnSalvarClick(Sender: TObject);
var
  ResultVerif, upt, jaExiste: Boolean;
begin
  //Testar Campos
  if not TestaCampos then exit;

  if (QryCliente.State = dsInsert) then begin
    QryClienteCOD_CLIENTE.AsInteger := StrToInt(getCampoSelect('SELECT GEN_ID(ID_CLIENTES, 1) FROM RDB$DATABASE'));
    QryClienteDTCADASTRO_CLIENTE.AsDateTime := Now;
  end else begin
    if ((QryClienteTIPO_PESSOA.AsString = 'F') and not (rbPf.Checked)) or
    ((QryClienteTIPO_PESSOA.AsString = 'J') and not (rbPj.Checked)) then begin
      QryClienteCPF_CLIENTE.Clear;
      QryClienteCGC_CLIENTE.Clear;
      QryClienteRG_CLIENTE.Clear;
      QryClienteINSCRICAO_CLIENTE.Clear;
    end;
  end;

  QryClienteCODCIDADE_CLIENTE.AsInteger := StrToInt(EdtCodCidade.Text);
  QryClienteSEXO_CLIENTE.AsInteger := CbSexo.ItemIndex;
  QryClienteDTALTERACAO_CLIENTE.AsDateTime :=  Now;

  if (CbAtivo.Checked = True) then QryClienteCLASSIFICACAO_CLIENTE.AsInteger := 3
  else QryClienteCLASSIFICACAO_CLIENTE.AsInteger := 1;

  if rbPf.Checked then begin
    QryClienteCPF_CLIENTE.AsString := edtCpfCnpj.Text;
    QryClienteRG_CLIENTE.AsString := edtIeRg.Text;
  end else begin
    QryClienteCGC_CLIENTE.AsString := edtCpfCnpj.Text;
    QryClienteINSCRICAO_CLIENTE.AsString := edtIeRg.Text;
  end;

  QryCliente.UpdateTransaction.StartTransaction;
  QryCliente.Post;
  QryCliente.UpdateTransaction.Commit;

  findCod(0);
end;

procedure TFormCadastroCliente.SbDownClick(Sender: TObject);
var
  pnt: TPoint;
begin
  if GetCursorPos(pnt) then
    PopupMenu1.Popup(pnt.X, pnt.Y);
end;

procedure TFormCadastroCliente.SbListClientesClick(Sender: TObject);
begin
  FormListClientes.ShowModal;
end;

procedure TFormCadastroCliente.ShowModal(pCod: String);
begin
  EdtCod.Text := pCod;
  indxAbrirCad := 1;
  inherited ShowModal;
end;

procedure TFormCadastroCliente.btnBuscarClienteClick(Sender: TObject);
var retorno: String;
begin
  retorno := Unt_FrmPrincipal.Frm_principal.AbreTelaBuscaCliente;
  if retorno <> '' then begin
    EdtCod.Text := retorno;
    EdtCod.SelectAll;
    findCod(FormBuscador.Retorno.Cod);
  end;
end;

procedure TFormCadastroCliente.btnCadCidadeClick(Sender: TObject);
begin
  if Length(Trim(EdtCodCidade.Text)) > 0 then Frm_principal.AbreTelaCidade(StrToInt(EdtCodCidade.Text))
  else Frm_principal.AbreTelaCidade(0);
end;

function TFormCadastroCliente.TestaCampos: Boolean;
var msg: String;
begin
  Result := True;
  msg := '';

  if Length(Trim(edtNome.Text)) = 0 then begin
    msg := 'Nome';
    edtNome.SetFocus;
    Result := False;
  end else if Length(Trim(EdtCod.Text)) = 0 then begin
    msg := 'Código';
    EdtCod.SetFocus;
    Result := False;
  end else if CbSexo.ItemIndex = -1 then begin
    msg := 'Sexo';
    CbSexo.SetFocus;
    Result := False;
  end else if (Length(Trim(EdtCodCidade.Text)) = 0) or (Length(Trim(EdtNomeCidade.Text)) = 0) then begin
    msg := 'Cidade';
    EdtCodCidade.SetFocus;
    Result := False;
  end else begin

    if (Length(Trim(edtCpfCnpj.Text)) = 0) then begin
      if not UnitFuncoes.MsgFixa(tMsgCampoBranco, 'CPF/CNPJ') then begin
        edtCpfCnpj.SetFocus;
        Result := False;
        exit;
      end;
    end;

    if (Length(Trim(EdtEndereco.Text)) = 0) then begin
      if not UnitFuncoes.MsgFixa(tMsgCampoBranco, 'Endereço') then begin
        EdtEndereco.SetFocus;
        Result := False;
        exit;
      end;
    end;
    exit;
  end;
  if UnitFuncoes.MsgFixa(tMsgCampObrig, msg) then Exit
end;

procedure TFormCadastroCliente.teste11Click(Sender: TObject);
begin
  edtIeRg.Text := 'ISENTO';
  edtIeRg.SetFocus;
  edtIeRg.SelectAll;
end;

function TFormCadastroCliente.TiraMascara(S: String): String;
const
  acentos: array[0..7] of String = (',','.',';','/','\','-','(',')');
var
  i: Integer;
begin
  for i := 0 to 7 do begin
    S := S.Replace(acentos[i], '');
  end;
  Result := S;
end;

procedure TFormCadastroCliente.btnBuscarCidadeClick(Sender: TObject);
var retorno: String;
begin
  retorno := Unt_FrmPrincipal.Frm_principal.AbreTelaBuscaCidade;
  if (retorno <> '') then begin
    EdtCodCidade.Text := retorno;
    EdtNomeCidade.Text := getCampoSelect('SELECT C.NOME_CIDADE FROM CIDADES C WHERE C.COD_CIDADE = ' + EdtCodCidade.Text);
  end;
end;

procedure TFormCadastroCliente.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 0 then
  begin
    indxSheet := 0;
  end
  else if PageControl.ActivePageIndex = 1 then
  begin
    EdtApelido.SetFocus;
  end
  else if PageControl.ActivePageIndex = 2 then
  begin
    MeLivre.SetFocus;
  end;
end;

procedure TFormCadastroCliente.PrepararConsultaCli();
begin
  if EdtCod.Text = '' then
  begin
    EdtCod.Text := 'Automático';
  end;

  EdtCod.Enabled := False;
//  BuscarDados;

  if indxTipoCad = 0 then
  begin
    rbPf.Checked := True;
    rbPf.SetFocus;
  end
  else if indxTipoCad = 1 then
  begin
    rbPj.Checked := True;
    rbPj.SetFocus;
  end;
end;

procedure TFormCadastroCliente.ProxCampoEnter(Sender: TEdit; Key: Word);
begin
  if (Ord(Key) = 13) then
  begin
    Sender.SetFocus;
  end;
end;

procedure TFormCadastroCliente.QryClienteSEXO_CLIENTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    0: Text := 'Masculino';
    1: Text := 'Femenino';
    2: Text := 'Nenhum';
  end;
end;

procedure TFormCadastroCliente.rbPfClick(Sender: TObject);
begin
  edtCpfCnpj.Clear;
  edtIeRg.Clear;
  edtCpfCnpj.EditMask := '000.000.000-00;0';
  LbTxtCpfCnpj.Caption := 'CPF:';
  LbRgIe.Caption := 'RG:';
end;

procedure TFormCadastroCliente.rbPfEnter(Sender: TObject);
begin
  rbPf.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadastroCliente.rbPjClick(Sender: TObject);
begin
  edtCpfCnpj.Clear;
  edtIeRg.Clear;
  edtCpfCnpj.EditMask := '00.000.000/0000-00;0';
  LbTxtCpfCnpj.Caption := 'CNPJ:';
  LbRgIe.Caption := 'Inscrição Estadual:';
end;

procedure TFormCadastroCliente.buscarFotoUser(indx: Integer);
var
  caminho, Target, ButtonSelected: String;
  i, position: Integer;
  DoPrompt: Boolean;
begin
  if (indx = 0) then
  begin
    DoPrompt := True;
    try
      OpenPicture.Execute();
      caminho := OpenPicture.Files.GetText;

      Image.Picture.LoadFromFile(Trim(caminho));
    Except
      On E: Exception do
      begin
        Exit;
      end;
    end;

    if Length(Trim(EdtResultImg.Text)) > 0 then
    begin
      if (AnsiCompareStr(Trim(caminho), Trim(EdtResultImg.Text)) = 0) then
      begin
        OpenPicture.Files.Clear;
        DoPrompt := False;
      end;
    end;

    EdtResultImg.Text := ' ' + caminho;

    if (DoPrompt) then
    begin
//      if PromptUser('Deseja copiar essa imagem para a pasta do sistema?') then
//      begin
//        position := LastDelimiter('\', Trim(caminho));
//        Target := Copy(Trim(caminho), position + 1, Length(Trim(caminho)));
//
//        if not FileExists('C:\Cadastro Clientes\Fotos\Clientes\' + Target) then
//        begin
//          CopyFile(PChar(Trim(caminho)),
//            PChar('C:\Cadastro Clientes\Fotos\Clientes\' + Target), False);
//          EdtResultImg.Text := 'C:\Cadastro Clientes\Fotos\Clientes\' + Target;
//        end
//        else
//        begin
//          if PromptUser('A imagem já existe no diretório do sistema.' + #13 +
//            'Deseja substituir?') then
//          begin
//            CopyFile(PChar(Trim(caminho)),
//              PChar('C:\Cadastro Clientes\Fotos\Clientes\' + Target), False);
//            EdtResultImg.Text := 'C:\Cadastro Clientes\Fotos\Clientes\'
//              + Target;
//          end
//          else
//          begin
//            EdtResultImg.Text := Trim(caminho);
//          end;
//        end;
//      end;
    end;
  end
  else if (indx = 1) then
  begin
    try
      Image.Picture.LoadFromFile(Trim(EdtResultImg.Text));
    Except
      On E: Exception do
      begin
        // Do nothing...
      end;
    end;
  end;
end;

function TFormCadastroCliente.ValidarCpfCnpj: Boolean;
begin
  if rbPf.Checked then
  begin
    ACBrValidador.TipoDocto := docCPF;
    ACBrValidador.Documento := edtCpfCnpj.Text;

    if not ACBrValidador.Validar then
    begin
//      LbResultCpfCnpj.Caption := 'CPF Inválido';
//      LbResultCpfCnpj.Visible := True;
//      Result := False;
    end
    else
    begin
//      LbResultCpfCnpj.Caption := '';
//      LbResultCpfCnpj.Visible := False;
//      Result := True;
    end;
  end
  else
  begin
    ACBrValidador.TipoDocto := docCNPJ;
    ACBrValidador.Documento := edtCpfCnpj.Text;

    if not ACBrValidador.Validar then
    begin
//      LbResultCpfCnpj.Caption := 'CNPJ Inválido';
//      LbResultCpfCnpj.Visible := False;
//      Result := False;
    end
    else
    begin
//      LbResultCpfCnpj.Caption := '';
//      LbResultCpfCnpj.Visible := False;
//      Result := True;
    end;
  end;
end;

function TFormCadastroCliente.ValidarIE: Boolean;
begin
  if rbPj.Checked then
  begin
    if (AnsiCompareText('ISENTO', edtIeRg.Text) = 0) then
    begin
//      LbResultRgIe.Caption := '';
//      LbResultRgIe.Visible := False;
//      Result := True;
//      Exit;
    end;

    ACBrValidador.TipoDocto := docInscEst;
    ACBrValidador.Documento := edtIeRg.Text;

    if not ACBrValidador.Validar then
    begin
//      LbResultRgIe.Caption := 'IE Inválida';
//      LbResultRgIe.Visible := True;
//      Result := False;
    end
    else
    begin
//      LbResultRgIe.Caption := '';
//      LbResultRgIe.Visible := False;
//      Result := True;
    end;
  end;

  //
  // if (RbPFisic.Checked) then
  // begin
  // if ((Length(Trim(MaskEdtRgIe.Text)) <> 14) and
  // (Length(Trim(MaskEdtRgIe.Text)) <> 9)) then
  // begin
  // LbResultRgIe.Caption := 'RG Inválido';
  // LbResultRgIe.Visible := True;
  // Result := False;
  // end
  // else
  // begin
  // LbResultRgIe.Caption := '';
  // Result := True;
  // end;
  // end
  // else if (RbPJurid.Checked) then
  // begin
  // if ((Length(Trim(MaskEdtRgIe.Text)) <> 10) and
  // (Length(Trim(MaskEdtRgIe.Text)) <> 0) and
  // (LowerCase(Trim(MaskEdtRgIe.Text)) <> LowerCase('isento'))) then
  // begin
  // LbResultRgIe.Caption := 'IE Inválida';
  // LbResultRgIe.Visible := True;
  // Result := False;
  // end
  // else
  // begin
  // LbResultRgIe.Caption := '';
  // Result := True;
  // end;
  // end;
end;

function TFormCadastroCliente.VerificarCampos(codOperacao: Integer): Boolean;
var
  counter, indx: Integer;
  bol, indxStopFunc: Boolean;
  msg: String;
begin
  counter := 0;
  bol := False;
  indxStopFunc := False;

  if (Length(EdtCod.Text) = 0) then
  begin
    counter := 1;
    bol := True;
    msg := 'É obrigatório preencher o campo Código';
  end;

  if (Length(edtNome.Text) = 0) then
  begin
    counter := 2;
    bol := True;
    msg := 'É obrigatório preencher o campo Nome';
  end
  else if Length(EdtCodCidade.Text) = 0 then
  begin
    counter := 3;
    bol := True;
    msg := 'É obrigatório preencher o campo Cidade';
  end
  else if (Length(edtCep.Text) = 0) then
  begin
    counter := 5;
    bol := True;
    msg := 'É obrigatório preencher o campo CEP';
  end;

  if (bol = True) then
  begin
    ShowMessage(msg);
  end;

  // Somente para codOperacao = 1
  if (codOperacao = 1) then
  begin
    if (counter = 1) then
    begin
      PageControl.ActivePageIndex := 0;
      EdtCod.Enabled := True;
      EdtCod.SetFocus;
      Result := False;
      Exit;
    end
    else if (counter = 2) then
    begin
      PageControl.ActivePageIndex := 0;
      edtNome.SetFocus;
      Result := False;
      Exit;
    end
    else if (counter = 3) then
    begin
      PageControl.ActivePageIndex := 0;
      EdtCodCidade.SetFocus;
      Result := False;
      Exit;
    end
    else if (counter = 5) then
    begin
      PageControl.ActivePageIndex := 0;
      edtCep.SetFocus;
      Result := False;
      Exit;
    end
    else
    begin
      Result := True;
    end;
  end;

  if (rbPf.Checked) then
  begin
    if (edtCpfCnpj.Text = '') then
    begin
//      if not PromptUser('O CPF está em branco. ' + #13 +
//        'Deseja continuar mesmo assim?') then
//      begin
//        PageControl.ActivePageIndex := 0;
//        edtCpfCnpj.SetFocus;
//        Result := False;
//      end;
    end
    else if not(ValidarCpfCnpj) then
    begin
//      if not PromptUser('O CPF está inválido. ' + #13 +
//        'Deseja continuar mesmo assim?') then
//      begin
//        PageControl.ActivePageIndex := 0;
//        edtCpfCnpj.SetFocus;
//        Result := False;
//      end;
    end;
  end
  else if (rbPj.Checked) then
  begin
    if (edtCpfCnpj.Text = '') then
    begin
//      if not PromptUser('O CNPJ está em branco. ' + #13 +
//        'Deseja continuar mesmo assim?') then
//      begin
//        PageControl.ActivePageIndex := 0;
//        edtCpfCnpj.SetFocus;
//        Result := False;
//      end;
    end
    else if ((not(ValidarCpfCnpj)) and (not(ValidarIE))) then
    begin
//      if not PromptUser('O CNPJ e a IE estão inválidos. ' + #13 +
//        'Deseja continuar mesmo assim?') then
//      begin
//        PageControl.ActivePageIndex := 0;
//        edtCpfCnpj.SetFocus;
//        Result := False;
//      end;
    end
    else if not(ValidarCpfCnpj) then
    begin
//      if not PromptUser('O CNPJ está inválido. ' + #13 +
//        'Deseja continuar mesmo assim?') then
//      begin
//        PageControl.ActivePageIndex := 0;
//        edtCpfCnpj.SetFocus;
//        Result := False;
//      end;
    end
    else if not(ValidarIE) then
    begin
//      if not PromptUser('A Inscrição Estadual (IE) está inválido. ' + #13 +
//        'Deseja continuar mesmo assim?') then
//      begin
//        PageControl.ActivePageIndex := 0;
//        edtIeRg.SetFocus;
//        Result := False;
//      end;
    end;
  end;
end;

function TFormCadastroCliente.CamposEmBranco: Boolean;
var
  i: Integer;
begin
  Result := True;
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) then
    begin
      if ((Components[i] as TEdit).Text = 'Automático') then
      begin
        Result := True;
      end
      else if not((Components[i] as TEdit).Text = '') then
      begin
        Result := False;
        Exit;
      end;
    end
    else if (Components[i] is TMaskEdit) then
    begin
      if ((Length(Trim((Components[i] as TMaskEdit).Text)) = 1) or
        (Length(Trim((Components[i] as TMaskEdit).Text)) = 9) or
        ((Length(Trim((Components[i] as TMaskEdit).Text)) = 14) and
        (rbPj.Checked)) or (Length(Trim((Components[i] as TMaskEdit).Text))
        = 0)) then
      begin
        Result := True;
      end
      else if not((Components[i] as TMaskEdit).Text = '') then
      begin
        Result := False;
        Exit;
      end;
    end
    else if (Components[i] is TComboBox) then
    begin
      if not(Length(Trim((Components[i] as TComboBox).Text)) = 0) then
      begin
        Result := False;
        Exit;
      end;
    end
    else if (Components[i] is TMemo) then
    begin
      if not(Length(Trim((Components[i] as TMemo).Lines.Text)) = 0) then
      begin
        Result := False;
        Exit;
      end;
    end
    else if (Components[i] is TImage) then
    begin
      if Assigned(Image.Picture.Graphic) then
      begin
        Result := False;
        Exit;
      end;
    end;
  end;
end;

procedure TFormCadastroCliente.CbIdadeEnter(Sender: TObject);
begin
  CbIdade.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadastroCliente.CbSexo2Enter(Sender: TObject);
begin
  CbSexo.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
  if CbSexo.ItemIndex = -1 then
  begin
    CbSexo.SetFocus;
  end;
end;

procedure TFormCadastroCliente.Cidades1Click(Sender: TObject);
begin
  FormListCidades.ShowModal;
end;

function TFormCadastroCliente.CodManual: Boolean;
begin
  if AnsiCompareStr(EdtCod.Text, 'Automático') = 0 then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;

procedure TFormCadastroCliente.ControlarEdtCod(bol: Boolean);
begin
  if (bol = True) then
  begin
    EdtCod.Enabled := True;
  end
  else
  begin

  end;

end;

procedure TFormCadastroCliente.EdtNomeTyping(Sender: TObject);
begin
  FormataCampo(2, edtNome.Text);
end;

procedure TFormCadastroCliente.EdtRendaExit(Sender: TObject);
begin
  if (Length(Trim(EdtRenda.Text)) > 0) then
  begin
    if (Pos('.', EdtRenda.Text) = 0) or (Pos(',', EdtRenda.Text) = 0) then
    begin
      Renda := EdtRenda.Text;
      EdtRenda.Text := FormatFloat('#,##0.00', StrToFloat(EdtRenda.Text));
    end;
  end
  else
  begin
    Renda := EdtRenda.Text;
  end;
end;

procedure TFormCadastroCliente.EdtRendaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtRendMaeExit(Sender: TObject);
begin
  if Length(Trim(EdtRendMae.Text)) > 0 then
  begin
    if (Pos('.', EdtRendMae.Text) = 0) or (Pos(',', EdtRendMae.Text) = 0) then
    begin
      RendaMae := EdtRendMae.Text;
      EdtRendMae.Text := FormatFloat('#,##0.00', StrToFloat(EdtRendMae.Text));
    end;
  end
  else
  begin
    RendaMae := EdtRendMae.Text;
  end;
end;

procedure TFormCadastroCliente.EdtRendMaeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    BtnSalvar.SetFocus;
  end;
end;

procedure TFormCadastroCliente.EdtRendPaiExit(Sender: TObject);
begin
  if Length(Trim(EdtRendPai.Text)) > 0 then
  begin
    if (Pos('.', EdtRendPai.Text) = 0) or (Pos(',', EdtRendPai.Text) = 0) then
    begin
      RendaPai := EdtRendPai.Text;
      EdtRendPai.Text := FormatFloat('#,##0.00', StrToFloat(EdtRendPai.Text));
    end;
  end
  else
  begin
    RendaPai := EdtRendPai.Text;
  end;
end;

procedure TFormCadastroCliente.findCod(Cod: Integer); //Somente para o controle de Editar e Cadastrar
var i: Integer;
begin
  with QryCliente do begin
    Close;
    ParamByName('COD').AsInteger := Cod;
    Open;

    if IsEmpty then begin  //Cadastrar Novo
      Append; // Muda o estado da Qry para Add novo registro;

      //Limpar Campos
      EdtCod.Clear;
      edtCpfCnpj.Clear;
      edtIeRg.Clear;
      EdtCodCidade.Enabled := True;
      EdtCodCidade.Clear;
      EdtNomeCidade.Clear;
      MeLivre.Lines.Clear;

      LbOperacao.Caption := 'Cadastrando Cliente';
      EdtCod.Text := 'Automático';

      PageControl.ActivePageIndex := 0;
      CbAtivo.Checked := True;
      CbSexo.ItemIndex := -1;
      rbPf.Checked := True;

    end else begin // Editar Cadastrado
      Edit; // Muda o estado da Qry para Editar registro;
      LbOperacao.Caption := 'Editando Cliente ' + QryClienteCOD_CLIENTE.AsString;

      EdtCod.Text := QryClienteCOD_CLIENTE.AsString;
      EdtCodCidade.Text := QryClienteCODCIDADE_CLIENTE.AsString;
      EdtNomeCidade.Text := QryClienteNOME_CIDADE.AsString;

      CbAtivo.Checked := QryClienteCLASSIFICACAO_CLIENTE.AsInteger = 3;
      CbSexo.ItemIndex := QryClienteSEXO_CLIENTE.AsInteger;

      if QryClienteTIPO_PESSOA.AsString = 'F' then begin
        rbPf.Checked := True;
        edtIeRg.Text := QryClienteRG_CLIENTE.AsString;
        edtCpfCnpj.Text := QryClienteCPF_CLIENTE.AsString
      end else if QryClienteTIPO_PESSOA.AsString = 'J' then begin
        rbPj.Checked := True;
        edtIeRg.Text := QryClienteINSCRICAO_CLIENTE.AsString;
        edtCpfCnpj.Text := QryClienteCGC_CLIENTE.AsString
      end;
    end;

    EdtCod.Enabled := True;
    EdtCod.SelectAll;
    EdtCod.SetFocus;

  end;
 end;

procedure TFormCadastroCliente.FormataCampo(numCampo: Integer;
  strCampo: string);
var
  i: Integer;
begin

  // 1 FOR CEP VALIDATION AND FORMATING
  if numCampo = 1 then
  begin
    if Length(strCampo) = 5 then
    begin
      edtCep.Text := Copy(strCampo, 1, 5) + '-';
      // EdtCEP.SetFocus;
      edtCep.SelStart := 6;
    end;
  end
  else if numCampo = 2 then
  begin

  end;
end;

procedure TFormCadastroCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryCliente.Close;
  LiberarTrans(QryCliente.UpdateTransaction.Name);
end;

procedure TFormCadastroCliente.FormCreate(Sender: TObject);
begin
  QryCliente.UpdateTransaction := getNewTrans;
end;

procedure TFormCadastroCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then begin
    Key := #0;

    if QryCliente.State = dsEdit then findCod(0)
    else begin
      Close;
    end;

  end else if (Key = #13) then begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.FormPrincipal1Click(Sender: TObject);
begin
  Unt_FrmPrincipal.Frm_principal.ShowModal;
end;

procedure TFormCadastroCliente.FormShow(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  findCod(CodCli);

  with Unt_FrmPrincipal.Frm_principal.ImgListIcons do begin
    GetBitmap(0, btnBuscarCidade.Glyph);
    GetBitmap(0, btnBuscarCliente.Glyph);
    GetBitmap(1, btnCadCidade.Glyph);
  end;

end;

end.
