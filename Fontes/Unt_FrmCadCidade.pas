unit Unt_FrmCadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.XPMan, Vcl.Mask,
  Vcl.Buttons, Data.DB, Vcl.DBCtrls, FIBDataSet, FIBDatabase, pFIBDatabase,
  pFIBDataSet, Vcl.ExtCtrls;

type
  TFormCadCidade = class(TForm)
    Label3: TLabel;
    SbBuscar: TSpeedButton;
    QryCidade: TpFIBDataSet;
    QryCidadeCOD_CIDADE: TFIBIntegerField;
    QryCidadeNOME_CIDADE: TFIBStringField;
    QryCidadeUF_CIDADE: TFIBStringField;
    QryCidadeCEP_CIDADE: TFIBStringField;
    QryCidadeCODCONTABIL_CIDADE: TFIBStringField;
    QryCidadeCODIBGE_CIDADE: TFIBStringField;
    QryCidadeNOME_PAIS: TFIBStringField;
    DsCidade: TDataSource;
    GroupBox2: TGroupBox;
    EdtNomeCidade: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtCep: TDBEdit;
    lbTxtCodIbge: TLabel;
    edtCodIbge: TDBEdit;
    Label5: TLabel;
    edtCodContabil: TDBEdit;
    Label1: TLabel;
    CbPais: TComboBox;
    Label2: TLabel;
    CbUf: TComboBox;
    LbOperacao: TLabel;
    lbTxtCod: TLabel;
    edtCod: TEdit;
    btnBuscaCidade: TSpeedButton;
    Panel1: TPanel;
    BtnCancelar: TButton;
    BtnLimpar: TButton;
    BtnGravar: TButton;
    BtnDeletar: TButton;
    QryCidadeCODPAIS_CIDADE: TFIBSmallIntField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure btnBuscaCidadeClick(Sender: TObject);
    procedure edtCodExit(Sender: TObject);
    procedure edtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    procedure findCod(Cod: Integer);
    procedure AbreTelaBuscaCidade;
    function TestaCampos: Boolean;
  public
    { Public declarations }
  end;

var
  FormCadCidade: TFormCadCidade;
  codCid: Integer;

implementation
{$R *.dfm}

Uses
  Unt_DM, Unt_FrmCadCliente, Unt_FrmBuscaCliente, Unt_FrmBuscaCidade,
  UnitConstants, Unt_FrmPrincipal, UnitFuncoes;

procedure TFormCadCidade.AbreTelaBuscaCidade;
begin
  try
    with Unt_FrmBuscaCidade.Frm_BuscaCidade do begin
      if (Frm_BuscaCidade = nil) then Application.CreateForm(TFrm_BuscaCidade, Frm_BuscaCidade); //Verificar se essa e a  forma correta de criar
      ShowModal();

      if ModalResult = mrOk then begin
        if not EdtCod.Enabled then EdtCod.Enabled := True;
        EdtCod.Text := retorno.ToString;
        EdtCod.SelectAll;
        findCod(retorno);
      end;
    end;
  finally
    FreeAndNil(Frm_BuscaCidade);
  end;
end;

procedure TFormCadCidade.btnBuscaCidadeClick(Sender: TObject);
var retorno: String;
begin
  retorno := Unt_FrmPrincipal.Frm_principal.AbreTelaBuscaCidade;
  if (retorno <> '') then begin
    if edtCod.Enabled = False then edtCod.Enabled := True;
    EdtCod.Text := retorno;
    EdtCod.SelectAll;
    findCod(StrToInt(retorno));
  end;
end;

procedure TFormCadCidade.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadCidade.BtnDeletarClick(Sender: TObject);
begin
  if QryCidade.State = dsEdit then begin
    if not MsgFixa(UnitFuncoes.tMsgCancBtn) then Exit;

    QryCidade.Delete;
    QryCidade.Transaction.Commit;

    findCod(0);
  end;
end;

procedure TFormCadCidade.BtnGravarClick(Sender: TObject);
begin
  //Testar Campos
  if not TestaCampos then exit;

  if (QryCidade.State = dsInsert) then QryCidadeCOD_CIDADE.AsInteger :=
    StrToInt(getCampoSelect('SELECT GEN_ID(ID_CIDADES, 1) FROM RDB$DATABASE'));

  QryCidadeUF_CIDADE.AsString := CbUf.Items[CbUf.ItemIndex];
  QryCidadeCODPAIS_CIDADE.AsInteger := 1058;

  QryCidade.Post;
  QryCidade.Transaction.Commit;

  findCod(0);
end;

procedure TFormCadCidade.BtnLimparClick(Sender: TObject);
begin
  findCod(0);
end;

procedure TFormCadCidade.edtCodExit(Sender: TObject);
begin
  edtCod.Enabled := False;
end;

procedure TFormCadCidade.edtCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then btnBuscaCidade.Click;
end;

procedure TFormCadCidade.findCod(Cod: Integer);
var i: Integer;
begin
  with QryCidade do begin
    Close;

    ParamByName('COD').AsInteger := Cod;
    Open;

    if IsEmpty then begin  //Cadastrar Novo
      Append; // Muda o estado da Qry para Add novo registro;

      //Limpar Campos
      LbOperacao.Caption := 'Cadastrando Cidade';
      EdtCod.Text := 'Automático';
      CbUf.ItemIndex := -1;

    end else begin // Editar Cadastrado
      Edit; // Muda o estado da Qry para Editar registro;
      LbOperacao.Caption := 'Editando Cidade ' + QryCidadeCOD_CIDADE.AsString;
      EdtCod.Text := QryCidadeCOD_CIDADE.AsString;
      CbUf.ItemIndex := CbUf.Items.IndexOf(QryCidadeUF_CIDADE.AsString);
    end;
    EdtCod.Enabled := True;
    EdtCod.SelectAll;
    EdtCod.SetFocus;
  end;
end;

procedure TFormCadCidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LiberarTrans(QryCidade.Transaction.Name);
end;

procedure TFormCadCidade.FormCreate(Sender: TObject);
begin
  QryCidade.Transaction := getNewTrans;
end;

procedure TFormCadCidade.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key:= #0;
    FormCadCidade.Perform(WM_NEXTDLGCTL, 0, 0);
  end else if (Key = #27) then begin
    if QryCidade.State = dsEdit then findCod(0)
    else Close;
  end;
end;

procedure TFormCadCidade.FormShow(Sender: TObject);
begin
  findCod(codCid);
  Unt_FrmPrincipal.Frm_principal.ImgListIcons.GetBitmap(0, btnBuscaCidade.Glyph);
end;

function TFormCadCidade.TestaCampos: Boolean;
var msg: String;
begin
  Result := True;
  msg := '';

  if Length(Trim(EdtNomeCidade.Text)) = 0 then begin
    msg := 'Cidade';
    EdtNomeCidade.SetFocus;
    Result := False;
  end else if Length(Trim(EdtCod.Text)) = 0 then begin
    msg := 'Código';
    EdtCod.SetFocus;
    Result := False;
  end else if (Length(Trim(edtCep.Text)) = 0) then begin
    msg := 'CEP';
    edtCep.SetFocus;
    Result := False;
  end else if (CbUf.ItemIndex = -1) then begin
    msg := 'UF';
    CbUf.SetFocus;
    Result := False;
  end else begin
    if (Length(Trim(edtCodIbge.Text)) = 0) then begin
      if not MsgFixa(tMsgCampoBranco, 'Código IBGE') then
        edtCodIbge.SetFocus;
        Result := False;
        exit;
      end;
    end;

    if (Length(Trim(edtCodContabil.Text)) = 0) then begin
      if not MsgFixa(tMsgCampoBranco, 'Código Contábil') then begin
        edtCodContabil.SetFocus;
        Result := False;
        exit;
      end;
    end;
    Exit;
  if MsgFixa(tMsgCampoBranco, 'Código Contábil') then Exit;
end;

end.
