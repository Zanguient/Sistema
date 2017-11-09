unit Unt_FrmCadOperador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Unt_DM, UnitBuscarOp, UnitBuscarCid,
  Unt_FrmCadCidade, UnitConstants, ComboBoxKey, Vcl.ExtCtrls, Data.DB, FIBDataSet, pFIBDataSet,
  Unt_FrmBuscaOperador;

type
  TFrmCadOperador = class(TForm)
    LbOperacao: TLabel;
    PnDown: TPanel;
    BtnCancelar: TButton;
    BtnDeletar: TButton;
    BtnSalvar: TButton;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label3: TLabel;
    btnBuscaOper: TSpeedButton;
    Label2: TLabel;
    EdtNome: TEdit;
    EdtCod: TEdit;
    GroupBox1: TGroupBox;
    btnBuscaCid: TSpeedButton;
    EdtNomeCid: TEdit;
    EdtCodCid: TEdit;
    EdtSenha: TEdit;
    cmbStatus: TComboBoxKey;
    Label1: TLabel;
    QryOperador: TpFIBDataSet;
    DsOperador: TDataSource;
    QryOperadorCOD_VENDEDOR: TFIBIntegerField;
    QryOperadorNOME_VENDEDOR: TFIBStringField;
    QryOperadorCOD_CIDADE: TFIBIntegerField;
    QryOperadorNOME_CIDADE: TFIBStringField;
    QryOperadorUF_CIDADE: TFIBStringField;
    QryOperadorSTATUS_VENDEDOR: TFIBStringField;
    procedure EdtCodExit(Sender: TObject);
    procedure EdtCodKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarDB;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure EdtCodCidExit(Sender: TObject);
    procedure EdtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnBuscaOperClick(Sender: TObject);
    procedure EdtCodCidKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnBuscaCidClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure EscPresionado;
    function HasCamposPreenchidos: Boolean;
    procedure LimparCampos;
    function VerifUpdate: Boolean;
    function VerifCamposObgt: Boolean;

  public
    { Public declarations }
    procedure BuscarCidade;
    procedure ConfigIni(pIndx: Integer);
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

procedure TFrmCadOperador.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadOperador.BtnDeletarClick(Sender: TObject);
begin
  if EdtCod.Text = '0' then exit;
end;

procedure TFrmCadOperador.BtnSalvarClick(Sender: TObject);
begin
  if EdtCod.Text = '0' then
    if MsgFixa(tMsgErroPK) then Exit;
end;

procedure TFrmCadOperador.BuscarCidade;
begin
  if ((Trim(EdtCodCid.Text) = '') and (Trim(EdtNomeCid.Text) <> '')) then

  if ((Length(Trim(EdtCodCid.Text)) = 0) and (Length(Trim(EdtNomeCid.Text)) = 0))
  then
  begin
    Exit;
  end;

  if ((Length(EdtCodCid.Text) > 0) and (Length(EdtNomeCid.Text) = 0)) then
  begin
    EdtCodCid.SetFocus;
    EdtCodCid.SelectAll;
  end;
end;

procedure TFrmCadOperador.BuscarDB;
var
  count: Integer;
  iterate: Boolean;
begin
  if EdtCod.Text = UnitConstants.EDT_AUTOMATICO then exit;
end;

procedure TFrmCadOperador.EdtCodCidExit(Sender: TObject);
begin
  BuscarCidade;
end;

procedure TFrmCadOperador.EdtCodCidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then btnBuscaCid.Click;
end;

procedure TFrmCadOperador.EdtCodExit(Sender: TObject);
begin
  ConfigIni(1);
  BuscarDB;
end;

procedure TFrmCadOperador.EdtCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then btnBuscaOper.Click;
end;

procedure TFrmCadOperador.EdtCodKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#8, '0' .. '9']) then
  begin
    Key := #0;
  end;
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

    if IsEmpty then begin  //Cadastrar Novo
      Append; // Muda o estado da Qry para Add novo registro;

      //Limpar Campos
      EdtCod.Clear;
      EdtNome.Clear;
      EdtSenha.Clear;
      EdtCodCid.Clear;
      cmbStatus.Clear;
      LbOperacao.Caption := 'Cadastrando Operador';
      EdtCod.Text := 'Automático';

    end else begin // Editar Cadastrado
      Edit; // Muda o estado da Qry para Editar registro;
      LbOperacao.Caption := 'Editando Operador ' + QryOperadorCOD_VENDEDOR.AsString;
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

procedure TFrmCadOperador.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    EscPresionado;
  end;
end;

procedure TFrmCadOperador.FormShow(Sender: TObject);
begin
  ConfigIni(iIndxTipo);
end;

procedure TFrmCadOperador.ConfigIni(pIndx: Integer);
begin
  // pIndx = 0 -> Config. Ini. Abrir CadOP;
  // pIndx = 1 -> Config. ao Sair do EdtCod;
  if pIndx = 0 then
  begin
    //CbIsInativo.Checked := False;
    EdtCod.Enabled := True;
    EdtCod.Text := 'Automático';
    EdtCod.SetFocus;
    EdtCod.SelectAll;
  end
  else if pIndx = 1 then
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
    findCod(Frm_BuscaOperador.Retorno.Cod);
  end;
end;

procedure TFrmCadOperador.btnBuscaCidClick(Sender: TObject);
var retorno: String;
begin
  retorno := Unt_FrmPrincipal.Frm_principal.AbreTelaBuscaCidade;
  if (retorno <> '') then begin
    EdtCodCid.Text := retorno;
    EdtNomeCid.Text := getCampoSelect('SELECT C.NOME_CIDADE FROM CIDADES C WHERE C.COD_CIDADE = ' + EdtCodCid.Text);
  end;
end;

procedure TFrmCadOperador.ShowModal;
begin
  iIndxTipo := 0;
  inherited ShowModal;
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
