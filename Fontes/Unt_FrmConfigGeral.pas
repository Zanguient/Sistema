unit Unt_FrmConfigGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Themes, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtDlgs, Data.DB, pFIBErrorHandler, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, JvExMask,
  JvToolEdit, JvExStdCtrls, JvGroupBox, System.StrUtils;

type
  TFrm_ConfigGeral = class(TForm)
    TreeView: TTreeView;
    Panel2: TPanel;
    BtnAplicar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnGravar: TBitBtn;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GbLocalizacao: TGroupBox;
    LbEndereco: TLabel;
    Label3: TLabel;
    LbNum: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    LbCid: TLabel;
    BtnBuscaCid: TSpeedButton;
    LbCEP: TLabel;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    GbEmpresa: TGroupBox;
    LbRazaoSoc: TLabel;
    LbIE: TLabel;
    LbNomeFantas: TLabel;
    LbCNPJ: TLabel;
    Panel5: TPanel;
    GbContabil: TGroupBox;
    Label1: TLabel;
    Label16: TLabel;
    GroupBox6: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    CbEnquadramento: TComboBox;
    EdtRazaoSoc: TDBEdit;
    EdtNomeFant: TDBEdit;
    EdtIE: TDBEdit;
    EdtCNPJ: TDBEdit;
    EdtFone1: TDBEdit;
    EdtCel: TDBEdit;
    EdtEmail: TDBEdit;
    EdtFone2: TDBEdit;
    EdtFax: TDBEdit;
    EdtSite: TDBEdit;
    EdtEnder: TDBEdit;
    EdtNum: TDBEdit;
    EdtBairro: TDBEdit;
    EdtLograd: TDBEdit;
    EdtCEP: TDBEdit;
    EdtCodCid: TDBEdit;
    EdtCidadeUF: TDBEdit;
    EdtAliqICMS_UF: TDBEdit;
    QryConfig: TpFIBDataSet;
    ErHandler: TpFibErrorHandler;
    Ds: TDataSource;
    OpenDlgPic: TOpenPictureDialog;
    QryConfigCOD_CONFIG: TFIBIntegerField;
    QryConfigRAZAOSOCIAL: TFIBStringField;
    QryConfigNOME: TFIBStringField;
    QryConfigINSCRICAO: TFIBStringField;
    QryConfigCNPJ: TFIBStringField;
    QryConfigFONE1: TFIBStringField;
    QryConfigFONE2: TFIBStringField;
    QryConfigEMAIL_CONFIG: TFIBStringField;
    QryConfigCODCIDADE: TFIBIntegerField;
    QryConfigCIDADE_UF: TFIBStringField;
    QryConfigENDER: TFIBStringField;
    QryConfigLOGRADOURO: TFIBStringField;
    QryConfigNUMEMPRESA: TFIBStringField;
    QryConfigBAIRRO: TFIBStringField;
    QryConfigLOGO: TFIBStringField;
    QryConfigTIPOENQUADRAMENTOEMPRESA: TFIBSmallIntField;
    QryConfigALIQ_ICMS_INTERNA: TFIBFloatField;
    QryConfigCEL: TFIBStringField;
    QryConfigCEP: TFIBStringField;
    QryConfigCEP_CONFIG: TFIBStringField;
    QryConfigPRINTLOGO_PRINCIPAL: TFIBBooleanField;
    GroupBox2: TGroupBox;
    CbHabDados: TCheckBox;
    cbHabLogo: TCheckBox;
    edtPathLogo: TJvFilenameEdit;
    Label2: TLabel;
    QryConfigPRINTDETALHES_PRINCIPAL: TFIBBooleanField;
    QryConfigUF_CIDADE: TFIBStringField;
    QryConfigNOME_CIDADE: TFIBStringField;
    QryConfigTIPOTEMA: TFIBSmallIntField;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    CmbTema: TComboBox;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnAplicarClick(Sender: TObject);
    procedure TreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure BtnBuscaCidClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QryConfigRAZAOSOCIALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QryConfigRAZAOSOCIALSetText(Sender: TField; const Text: string);
    procedure EdtCodCidExit(Sender: TObject);
    procedure EdtCodCidKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure PreencheEnquadramentoCmB(Cmb: TComboBox);
    procedure PreencheTemaCmB(Cmb: TComboBox);
    procedure SetEnquadramentoPeloIndx(Indx: Integer);
    procedure SetDadosPrincipal(empresa, cidade, uf, ender, num, fone: String);
    procedure SetLogoPrincipal(path: String);
    procedure setTemaPrincipal(tema: String);
    procedure EscondeAbas(pgControl: TPageControl);
    procedure findCod(cod: Integer);
    procedure AtualizaQry;
    function getIndxEnquadramentoPeloIndx(Indx: Integer): Integer;
    function TestaCampos: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ConfigGeral: TFrm_ConfigGeral;

implementation

uses
  UnitConstants, Unt_DM, Unt_FrmPrincipal, UnitFuncoes, Unt_FrmStrings, Unt_Dados;

{$R *.dfm}

procedure TFrm_ConfigGeral.AtualizaQry;
begin
  try
    QryConfig.Refresh;
    QryConfig.Edit;
  except
    on E: Exception do MsgErro('Ocorreu erro ao Atualizar a Qry.' + #13 + ' Erro: ' + E.Message);
  end;
end;

procedure TFrm_ConfigGeral.BtnAplicarClick(Sender: TObject);
begin
  if not TestaCampos then Exit;

  QryConfigTIPOENQUADRAMENTOEMPRESA.AsInteger := getIndxEnquadramentoPeloIndx(CbEnquadramento.ItemIndex);
  QryConfigCEP_CONFIG.AsString                := QryConfigCEP.AsString;
  QryConfigPRINTLOGO_PRINCIPAL.AsBoolean      := cbHabLogo.Checked;
  QryConfigPRINTDETALHES_PRINCIPAL.AsBoolean  := CbHabDados.Checked;
  QryConfigLOGO.AsString                      := edtPathLogo.Text;

  //--------

  if CmbTema.ItemIndex <> QryConfigTIPOTEMA.AsInteger then begin
    MsgAviso('É necessário fechar e abrir o Sistema novamente para que a mudança de tema tenha efeito');
    QryConfigTIPOTEMA.AsInteger := CmbTema.ItemIndex;
  end;

  //Preenche Dados da Empresa no Unt_Dados
  begin
    nomeEmpresa         := QryConfigNOME.AsString;
    nomeFantasiaEmpresa := QryConfigRAZAOSOCIAL.AsString;
    enderecoEmpresa     := QryConfigENDER.AsString;
    numEmpresa          := QryConfigNUMEMPRESA.AsString;
    bairroEmpresa       := QryConfigBAIRRO.AsString;
    cepEmpresa          := QryConfigCEP.AsString;
    cidadeEmpresa       := QryConfigNOME_CIDADE.AsString;
    ufEmpresa           := QryConfigUF_CIDADE.AsString;
    telefoneEmpresa     := QryConfigFONE1.AsString;
    telefone2Empresa    := QryConfigFONE1.AsString;
    caminhoLogo         := QryConfigLOGO.AsString;
    cnpjEmpresa         := QryConfigCNPJ.AsString;
    printDadosEmpresa   := CbHabDados.Checked;
    printLogoEmpresa    := cbHabLogo.Checked;
    tipoEnqmento        := QryConfigTIPOENQUADRAMENTOEMPRESA.AsInteger;
    tipoTemaEmpresa     := QryConfigTIPOENQUADRAMENTOEMPRESA.AsInteger;
  end;

  //Setar Logo e Dados FormPrincipal
  Frm_principal.MostraDadosEmpresa(cbHabLogo.Checked, CbHabDados.Checked);

  try
    QryConfig.Post;
    QryConfig.Transaction.Commit;
  except
    on E:Exception do begin
      if QryConfig.Transaction.InTransaction then QryConfig.Transaction.Rollback;
      QryConfig.Cancel;
      MsgErro('Ocorreu um Erro ao Gravar as Configurações.'+#13+E.Message);
    end;
  end;
  findCod(1);
end;

procedure TFrm_ConfigGeral.BtnBuscaCidClick(Sender: TObject);
var retorno: String;
begin
  retorno := Unt_FrmPrincipal.Frm_principal.AbreTelaBuscaCidade;
  if (retorno <> '') then begin
    QryConfigCODCIDADE.AsInteger := StrToIntDef(retorno, 0);
    AtualizaQry;
    EdtCodCid.SelectAll;
  end;
end;

procedure TFrm_ConfigGeral.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_ConfigGeral.BtnGravarClick(Sender: TObject);
begin
  if QryConfig.Modified then BtnAplicar.Click;
  Close;
end;

procedure TFrm_ConfigGeral.EdtCodCidExit(Sender: TObject);
begin
  if EdtCodCid.Modified then AtualizaQry;
end;

procedure TFrm_ConfigGeral.EdtCodCidKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then BtnBuscaCid.Click;
end;

procedure TFrm_ConfigGeral.EscondeAbas(pgControl: TPageControl);
var page: Integer;
begin
  for page := 0 to pgControl.PageCount - 1 do pgControl.Pages[page].TabVisible := false;
end;

procedure TFrm_ConfigGeral.findCod(cod: Integer);
var i: Integer;
begin
  with QryConfig do begin
    Close;

    ParamByName('COD').AsInteger := Cod;
    Open;

    if IsEmpty then begin  //Cadastrar Novo
      Append;
      QryConfigCOD_CONFIG.AsInteger := 1;
      CbHabDados.Checked := False;
      cbHabLogo.Checked := False;
      edtPathLogo.Clear;
    end else begin // Editar Cadastrado
      Edit;
      SetEnquadramentoPeloIndx(QryConfigTIPOENQUADRAMENTOEMPRESA.AsInteger);
      CmbTema.ItemIndex := QryConfigTIPOTEMA.AsInteger;
      CbHabDados.Checked := QryConfigPRINTDETALHES_PRINCIPAL.AsBoolean;
      cbHabLogo.Checked := QryConfigPRINTLOGO_PRINCIPAL.AsBoolean;
      edtPathLogo.Text := QryConfigLOGO.AsString;
    end;
  end;
end;

procedure TFrm_ConfigGeral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LiberarTrans(QryConfig.Transaction.Name);
end;

procedure TFrm_ConfigGeral.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (QryConfig.State = dsEdit) and (QryConfig.Modified) then begin
    if QryConfig.Modified and MsgFixa(UnitFuncoes.tMsgCancBtn) then Exit
    else CanClose := False;
  end;
end;

procedure TFrm_ConfigGeral.FormCreate(Sender: TObject);
begin
  QryConfig.Transaction := getNewTrans;

  EscondeAbas(PageControl1);

  Frm_principal.ImgListIcons.GetBitmap(0, BtnBuscaCid.Glyph);
  PageControl1.ActivePageIndex := 0;

  PreencheEnquadramentoCmB(CbEnquadramento);
  PreencheTemaCmB(CmbTema);

  findCod(1);
end;

procedure TFrm_ConfigGeral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close
  else if Key = VK_RETURN then Perform(WM_NEXTDLGCTL, 0, 0);
end;

function TFrm_ConfigGeral.getIndxEnquadramentoPeloIndx(Indx: Integer): Integer;
begin
  case Indx of
    0: Result := 1;
    1: Result := 2;
    2: Result := 3;
  end;
end;

procedure TFrm_ConfigGeral.PreencheEnquadramentoCmB(Cmb: TComboBox);
begin
  Cmb.Clear;
  Cmb.Items.Add('Simples Nacional');
  cmb.Items.Add('Lucro Presumido');
  Cmb.Items.Add('Lucro Real');
  Cmb.ItemIndex := -1;
end;

procedure TFrm_ConfigGeral.PreencheTemaCmB(Cmb: TComboBox);
var
  s: String;
  i: Integer;
begin
  CmbTema.Clear;
  i := 0;

  repeat
    s := dm.getNomeTemaPeloIndx(i);
    if s <> '' then begin
      CmbTema.Items.Add(s);
      Inc(i);
    end;
  until (s = '');

  CmbTema.ItemIndex := 0;
end;

procedure TFrm_ConfigGeral.QryConfigRAZAOSOCIALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := FormataPalavra(Sender.AsString);
end;

procedure TFrm_ConfigGeral.QryConfigRAZAOSOCIALSetText(Sender: TField; const Text: string);
begin
  Sender.AsString := FormataPalavra(Text);
end;

procedure TFrm_ConfigGeral.SetEnquadramentoPeloIndx(Indx: Integer);
begin
  case Indx of
    1: CbEnquadramento.ItemIndex := 0;
    2: CbEnquadramento.ItemIndex := 1;
    3: CbEnquadramento.ItemIndex := 2;
  end;
end;

procedure TFrm_ConfigGeral.SetLogoPrincipal(path: String);
begin
  if (Length(Trim(path)) > 0) then Frm_principal.ImgLogo.Picture.LoadFromFile(path)
  else Frm_principal.ImgLogo.Picture := nil;
end;

procedure TFrm_ConfigGeral.setTemaPrincipal(tema: String);
begin
  if (TStyleManager.ActiveStyle.Name.Equals(tema)) then exit
  else if Assigned(TStyleManager.ActiveStyle) then begin
    try
      TStyleManager.TrySetStyle(tema);
    except
      on E: exception do MsgErro('Tema não encontrado.' + #13 + 'Erro: ' + e.Message);
    end;
  end;
end;

procedure TFrm_ConfigGeral.SetDadosPrincipal(empresa, cidade, uf, ender, num, fone: String);
begin
  Frm_principal.LbNomeEmpresa.Caption := UpperCase(empresa);
  Frm_principal.LbEnderecoEmpresa.Caption := ender + ', ' + num + #13 + cidade + '-' + uf + #13 + FormataTelefone(fone);
end;

function TFrm_ConfigGeral.TestaCampos: Boolean;
var
  msg: String;
  i: Integer;
begin
  Result := False;

  i := PageControl1.ActivePageIndex;
  PageControl1.ActivePageIndex := 0;

  if EdtRazaoSoc.Text = '' then begin
    EdtRazaoSoc.SetFocus;
    msg := 'Razão Social';
  end else if EdtNomeFant.Text = '' then begin
    EdtNomeFant.SetFocus;
    msg := 'Nome Fantasia';
  end else if EdtIE.Text = '' then begin
    EdtIE.SetFocus;
    msg := 'Inscrição Estadual';
  end else if EdtCNPJ.Text = '' then begin
    EdtCNPJ.SetFocus;
    msg := 'CNPJ';
  end else if (EdtCodCid.Text = '') or (EdtCidadeUF.Text = '') then begin
    EdtCodCid.SetFocus;
    msg := 'Cidade';
  end else if EdtCEP.Text = '' then begin
    EdtCEP.SetFocus;
    msg := 'CEP';
  end else if EdtEnder.Text = '' then begin
    EdtEnder.SetFocus;
    msg := 'Endereço';
  end else if EdtNum.Text = '' then begin
    EdtNum.SetFocus;
    msg := 'Número';
  end else if EdtBairro.Text = '' then begin
    EdtBairro.SetFocus;
    msg := 'Bairro';
  end else if EdtAliqICMS_UF.Text = '' then begin
    EdtAliqICMS_UF.SetFocus;
    msg := 'Alíquota ICMS';
  end else Result := True;

  PageControl1.ActivePageIndex := i;
  if not Result then MsgAviso('É obrigatório preencher o campo ' + msg);
end;

procedure TFrm_ConfigGeral.TreeViewChange(Sender: TObject; Node: TTreeNode);
begin
  PageControl1.ActivePageIndex := Node.Index;
end;

end.
