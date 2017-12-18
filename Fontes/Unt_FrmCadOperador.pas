unit Unt_FrmCadOperador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Unt_DM, UnitBuscarOp, UnitBuscarCid,
  Unt_FrmCadCidade, UnitConstants, Vcl.ExtCtrls, Data.DB, FIBDataSet, pFIBDataSet,
  Unt_FrmBuscaOperador, Vcl.Mask, Vcl.DBCtrls, ComboBoxKey;

type
  TFrmCadOperador = class(TForm)
    LbOperacao: TLabel;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label3: TLabel;
    btnBuscaOper: TSpeedButton;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    btnBuscaCid: TSpeedButton;
    Label1: TLabel;
    QryOperador: TpFIBDataSet;
    DsOperador: TDataSource;
    QryOperadorCOD_VENDEDOR: TFIBIntegerField;
    QryOperadorNOME_VENDEDOR: TFIBStringField;
    QryOperadorNOME_CIDADE: TFIBStringField;
    QryOperadorUF_CIDADE: TFIBStringField;
    QryOperadorSTATUS_VENDEDOR: TFIBStringField;
    EdtSenha: TDBEdit;
    EdtNome: TDBEdit;
    EdtNomeCid: TDBEdit;
    EdtCodCid: TDBEdit;
    QryOperadorSENHA_VENDEDOR: TFIBStringField;
    QryOperadorSEXO_VENDEDOR: TFIBBooleanField;
    QryOperadorCPF_VENDEDOR: TFIBStringField;
    pnButtons: TPanel;
    btnGravar: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EdtCod: TEdit;
    CmbStatus: TComboBox;
    QryOperadorCODCIDADE_VENDEDOR: TFIBIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnBuscaOperClick(Sender: TObject);
    procedure btnBuscaCidClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EdtCodCidKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure EdtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtCodKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodExit(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure EdtCodCidExit(Sender: TObject);
  private
    { Private declarations }
    procedure EscPresionado;
    procedure TestaCampos;
    procedure LimparCampos;
    procedure ConfigIni(pIndx: Integer);
    procedure BuscarDB;

    function HasCamposPreenchidos: Boolean;
    function VerifUpdate: Boolean;
    function VerifCamposObgt: Boolean;

  public
    { Public declarations }
    procedure ShowModal(pCod: String); Overload;
    procedure ShowModal; Overload;
    procedure findCod(Cod: Integer);
  end;

var
  FrmCadOperador: TFrmCadOperador;
  iIndxTipo: Integer;
  CodOper: Integer;

implementation

{$R *.dfm}

Uses UntFuncoes, Unt_FrmPrincipal;

procedure TFrmCadOperador.BuscarDB;
var
  count: Integer;
  iterate: Boolean;
begin
  if EdtCod.Text = UnitConstants.EDT_AUTOMATICO then exit;
end;

procedure TFrmCadOperador.EdtCodCidExit(Sender: TObject);
var
  codAux: integer;
  nomeAux: String;
begin
  codAux := StrToIntDef(EdtCodCid.Text,0);
  nomeAux := getCampoSelect('SELECT C.NOME_CIDADE FROM CIDADES C WHERE C.COD_CIDADE = ' +  IntToStr(codAux));

  if (nomeAux <> '') then begin
    QryOperadorNOME_CIDADE.AsString := nomeAux;
    QryOperadorCODCIDADE_VENDEDOR.AsInteger := codAux;
  end else begin
    QryOperadorCODCIDADE_VENDEDOR.Clear;
    QryOperadorNOME_CIDADE.Clear;
  end;

end;

procedure TFrmCadOperador.EdtCodCidKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then btnBuscaCid.Click;
end;

procedure TFrmCadOperador.EdtCodExit(Sender: TObject);
begin
  (Sender as TEdit).Enabled := False;
end;

procedure TFrmCadOperador.EdtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then btnBuscaOper.Click;
end;

procedure TFrmCadOperador.EdtCodKeyPress(Sender: TObject; var Key: Char);
begin
//  if not(Key in [#8, #13, #27, '0' .. '9']) then Key := #0;
end;

procedure TFrmCadOperador.EdtNomeExit(Sender: TObject);
begin
  (Sender as TDBEdit).Text := FormataPalavra((Sender as TDBEdit).Text);
end;

procedure TFrmCadOperador.EscPresionado;
begin
  if EdtCod.Text = 'Automático' then
  begin
    if HasCamposPreenchidos then if MsgFixa(tMsgCancBtn) then LimparCampos
    else if EdtCod.Focused then Close
    else LimparCampos;
  end else begin
    if EdtCod.Text = '0' then
    begin
      LimparCampos;
      exit;
    end else if VerifUpdate then if (MsgFixa(tMsgCancBtn)) then LimparCampos
    else LimparCampos;
  end;
end;

procedure TFrmCadOperador.findCod(Cod: Integer);
var i: Integer;
begin
  with QryOperador do begin
    Close;
    ParamByName('COD').AsInteger := Cod;
    Open;

    if IsEmpty then begin // Cadastrar
      Append; // Muda o estado da Qry para Add novo registro;

      //Enable Campos
      if not (EdtCodCid.Enabled) then EdtCodCid.Enabled :=True;
      if not (EdtCod.Enabled) then EdtCod.Enabled :=True;

      //Limpar Campos
      EdtCod.Clear;
      EdtNome.Clear;
      EdtSenha.Clear;
      EdtCodCid.Clear;
      cmbStatus.ItemIndex := 0;

      //Setar Campos Default
      LbOperacao.Caption := 'Cadastrando Operador';
      EdtCod.Text := 'Automático';

    end else begin // Editar
      Edit; // Muda o estado da Qry para Editar registro;
      LbOperacao.Caption := 'Editando Operador ' + Self.QryOperadorCOD_VENDEDOR.AsString;
      EdtCod.Text := Self.QryOperadorCOD_VENDEDOR.AsString;

      if (Self.QryOperadorSTATUS_VENDEDOR.AsString = 'A') then CmbStatus.ItemIndex := 0
      else if (Self.QryOperadorSTATUS_VENDEDOR.AsString = 'I') then CmbStatus.ItemIndex := 1
      else CmbStatus.ItemIndex := -1;

    end;

    EdtCod.Enabled := True;
    EdtCod.SelectAll;
    EdtCod.SetFocus;
  end;
 end;

procedure TFrmCadOperador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LimparCampos;
end;

procedure TFrmCadOperador.FormCreate(Sender: TObject);
begin
 QryOperador.UpdateTransaction := getNewTrans;
end;

procedure TFrmCadOperador.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key:= #0;
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
  end else if (Key = #27) then begin
    if QryOperador.State = dsEdit then findCod(0)
    else Close;
  end;
end;

procedure TFrmCadOperador.FormShow(Sender: TObject);
begin
  findCod(CodOper);
end;

procedure TFrmCadOperador.ConfigIni(pIndx: Integer);
begin
  // pIndx = 0 -> Config. Ini. Abrir CadOP;
  // pIndx = 1 -> Config. ao Sair do EdtCod;
  if (pIndx = 0) then
  begin
    EdtCod.Enabled := True;
    EdtCod.Text := 'Automático';
    EdtCod.SetFocus;
    EdtCod.SelectAll;
  end
  else if (pIndx = 1) then
  begin
    if Length(Trim(EdtCod.Text)) = 0 then
    begin
      EdtCod.Text := UnitConstants.EDT_AUTOMATICO;
    end;
    EdtCod.Enabled := False;
  end;
end;

procedure TFrmCadOperador.btnBuscaOperClick(Sender: TObject);
var retorno: String;
begin
  retorno := Unt_FrmPrincipal.Frm_principal.AbreTelaBuscaOPerador;
  if (retorno <> '') then begin
    EdtCod.Text := retorno;
    EdtCod.SelectAll;
    findCod(StrToInt(retorno));
  end;
end;

procedure TFrmCadOperador.btnGravarClick(Sender: TObject);
var
  I: Integer;
begin
  //Testar Campos

  try
    TestaCampos
  Except
    on E: Exception do begin
      ShowMessage('Erro: ' + e.Message);
      Exit;
    end;
  end;

  if (QryOperador.State = dsInsert) then begin
    QryOperadorCOD_VENDEDOR.AsInteger := StrToInt(getCampoSelect('SELECT GEN_ID(ID_VENDEDORES, 1) FROM RDB$DATABASE'));
  end;

  if (CmbStatus.ItemIndex = 0) then Self.QryOperadorSTATUS_VENDEDOR.AsString := 'A'
  else if (CmbStatus.ItemIndex = 1) then Self.QryOperadorSTATUS_VENDEDOR.AsString := 'I'
  else Self.QryOperadorSTATUS_VENDEDOR.Clear;

  QryOperador.Post;
  QryOperador.UpdateTransaction.Commit;

  findCod(0);
end;

procedure TFrmCadOperador.btnBuscaCidClick(Sender: TObject);
var retorno: String;
begin
  retorno := Unt_FrmPrincipal.Frm_principal.AbreTelaBuscaCidade;
  if (retorno <> '') then begin
    QryOperadorCODCIDADE_VENDEDOR.AsString := retorno;
    QryOperadorNOME_CIDADE.AsString :=
      getCampoSelect('SELECT C.NOME_CIDADE FROM CIDADES C WHERE C.COD_CIDADE = ' + EdtCodCid.Text);
  end;
end;

procedure TFrmCadOperador.ShowModal;
begin
  iIndxTipo := 0;
  inherited ShowModal;
end;

procedure TFrmCadOperador.TestaCampos;
begin
  if (EdtCod.Text = '') then begin
    EdtCod.SetFocus;
    raise Exception.Create('Digite um valor válido para o campo Código do Vendedor.')
  end else if (QryOperadorNOME_VENDEDOR.AsString.IsEmpty) then begin
    EdtNome.SetFocus;
    raise Exception.Create('Digite um valor válido para o campo Nome do Vendedor.')
  end else if (QryOperadorCODCIDADE_VENDEDOR.AsString.IsEmpty) then begin
    EdtCodCid.SetFocus;
    raise Exception.Create('Digite um valor válido para o campo Código da Cidade.')
  end else if (QryOperadorNOME_CIDADE.AsString.IsEmpty) then begin
    EdtCodCid.Text;
    raise Exception.Create('Digite um valor válido para o campo Nome da Cidade.')
  end else if (QryOperadorSENHA_VENDEDOR.AsString.IsEmpty) then begin
    EdtNomeCid.SetFocus;
    raise Exception.Create('Digite um valor válido para o campo Senha.')
  end else if (CmbStatus.ItemIndex = -1) then begin
    CmbStatus.SetFocus;
    raise Exception.Create('Escolha uma opção válida para o campo Status.');
  end;
end;

procedure TFrmCadOperador.ShowModal(pCod: String);
begin
  EdtCod.Text := pCod;
  iIndxTipo := 1;
  BuscarDB;
  inherited ShowModal;
end;

function TFrmCadOperador.VerifCamposObgt: Boolean;
begin
  if (Length(Trim(EdtNome.Text)) = 0) then
  begin
    EdtNome.SetFocus;
    EdtNome.SelectAll;
    ShowMessage('É obrigatório informar o nome do operador');
    Result := False;
  end
  else if (Length(Trim(EdtCod.Text)) = 0) then
  begin
    EdtCod.SetFocus;
    EdtCod.SelectAll;
    ShowMessage('É obrigatório informar o código do operador');
    Result := False;
  end
  else if (Length(Trim(EdtCodCid.Text)) = 0) then
  begin
    EdtCodCid.SetFocus;
    EdtCodCid.SelectAll;
    ShowMessage('É obrigatório informar a cidade do operador');
    Result := False;
  end
  else if (Length(Trim(EdtSenha.Text)) = 0) then
  begin
    EdtSenha.SetFocus;
    EdtSenha.SelectAll;
    ShowMessage('É obrigatório informar a senha do operador');
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;

function TFrmCadOperador.VerifUpdate: Boolean;
var
  status: Integer;
begin
//  with Unt_DM.dm.FdQuery do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Add('SELECT count(*) FROM operadores op WHERE op.id_operador = :p1');
//    ParamByName('p1').AsInteger := StrToInt(Trim(EdtCod.Text));
//
//    Open();
//
//    if (FieldByName('count').AsInteger > 0) then
//    begin
//      Close;
//      SQL.Clear;
//
//      SQL.Add('SELECT nome_operador, senha_operador, ' +
//        'id_cidade_operador, nome_cidade || ' + QuotedStr('-') + ' || uf, ' +
//        'email_operador, status_operador FROM operadores op inner join cidade ci on ' +
//        'op.id_cidade_operador = ci.id_cidade join estado es on ' +
//        'ci.id_estado = es.id_estado WHERE op.id_operador = :p1');
//
//      ParamByName('p1').AsInteger := StrToInt(EdtCod.Text);
//      Open();
//
//      if CbIsInativo.Checked then status := 1
//      else status := 0;
//
//      if (EdtNome.Text <> FieldByName('nome_operador').AsString) or
//        (EdtPass.Text <> FieldByName('senha_operador').AsString) or
//        (EdtCodCid.Text <> FieldByName('id_cidade_operador').AsString) or
//        (EdtNomeCid.Text <> FieldByName('concatenation').AsString) or
//        (EdtEmail.Text <> FieldByName('email_operador').AsString) or
//        (status <> FieldByName('status_operador').AsInteger) then
//        begin
//          Result := True
//        end else
//        begin
//          Result := False;
//        end;
//
//      Close;
//    end;
//  end;
end;

function TFrmCadOperador.HasCamposPreenchidos: Boolean;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) then
    begin
      try
        if ((Components[i] as TEdit).Name = EdtCod.Name) then
          Exit;

        if ((Components[i] as TEdit).Text <> '') then
          Result := True;
      Except
        ShowMessage('Error Cleaning up the TEdit');
      end;
    end;
  end;
end;

procedure TFrmCadOperador.LimparCampos;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) then
    begin
      try
        (Components[i] as TEdit).Text := '';
      Except
        ShowMessage('Error Cleaning up the TEdit');
      end;
    end;
  end;
  ConfigIni(0);
end;

end.
