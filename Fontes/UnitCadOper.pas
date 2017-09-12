unit UnitCadOper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Unt_DM, UnitBuscarOp, UnitBuscarCid,
  Unt_FrmCadCidade, UnitConstants;

type
  TFormCadOper = class(TForm)
    Label7: TLabel;
    Label3: TLabel;
    SbBuscar: TSpeedButton;
    EdtNome: TEdit;
    BtnSalvar: TButton;
    BtnDeletar: TButton;
    EdtCod: TEdit;
    BtnCancelar: TButton;
    Label4: TLabel;
    Label5: TLabel;
    EdtEmail: TEdit;
    GroupBox1: TGroupBox;
    sbProcurar: TSpeedButton;
    EdtNomeCid: TEdit;
    EdtCodCid: TEdit;
    Label2: TLabel;
    EdtPass: TEdit;
    CbIsInativo: TCheckBox;
    procedure EdtCodExit(Sender: TObject);
    procedure EdtCodKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodCidKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarDB;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure EdtCodCidExit(Sender: TObject);
    procedure EdtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SbBuscarClick(Sender: TObject);
    procedure EdtCodCidKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbProcurarClick(Sender: TObject);
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
  end;

var
  FormCadOper: TFormCadOper;
  iIndxTipo: Integer;

implementation

{$R *.dfm}

Uses UnitFuncoes;

procedure TFormCadOper.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadOper.BtnDeletarClick(Sender: TObject);
begin
  if EdtCod.Text = '0' then exit;
end;

procedure TFormCadOper.BtnSalvarClick(Sender: TObject);
begin
  if EdtCod.Text = '0' then
    if MsgFixa(UnitFuncoes.tMsgErroPK) then Exit;
end;

procedure TFormCadOper.BuscarCidade;
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

procedure TFormCadOper.BuscarDB;
var
  count: Integer;
  iterate: Boolean;
begin
  if EdtCod.Text = UnitConstants.EDT_AUTOMATICO then exit;
end;

procedure TFormCadOper.EdtCodCidExit(Sender: TObject);
begin
  BuscarCidade;
end;

procedure TFormCadOper.EdtCodCidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then
  begin
    UnitBuscarCid.IndxCidade := 4;
    FormBuscarCid.ShowModal;
  end
  else if (Key = VK_ADD) then FormCadCidade.ShowModal;
end;

procedure TFormCadOper.EdtCodCidKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadOper.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadOper.EdtCodExit(Sender: TObject);
begin
  ConfigIni(1);
  BuscarDB;
end;

procedure TFormCadOper.EdtCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then
  begin
    FormBuscarOp.ShowModal(self);
  end;
end;

procedure TFormCadOper.EdtCodKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadOper.Perform(WM_NEXTDLGCTL, 0, 0);
  end;

  if not(Key in [#8, '0' .. '9']) then
  begin
    Key := #0;
  end;
end;

procedure TFormCadOper.EscPresionado;
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

procedure TFormCadOper.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LimparCampos;
end;

procedure TFormCadOper.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    EscPresionado;
  end;
end;

procedure TFormCadOper.FormShow(Sender: TObject);
begin
  ConfigIni(iIndxTipo);
end;

procedure TFormCadOper.ConfigIni(pIndx: Integer);
begin
  // pIndx = 0 -> Config. Ini. Abrir CadOP;
  // pIndx = 1 -> Config. ao Sair do EdtCod;
  if pIndx = 0 then
  begin
    CbIsInativo.Checked := False;
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

procedure TFormCadOper.SbBuscarClick(Sender: TObject);
begin
  FormBuscarOp.ShowModal(Self);
end;

procedure TFormCadOper.sbProcurarClick(Sender: TObject);
begin
  UnitBuscarCid.IndxCidade := 4;
  FormBuscarCid.ShowModal;
end;

procedure TFormCadOper.ShowModal;
begin
  iIndxTipo := 0;
  inherited ShowModal;
end;

procedure TFormCadOper.ShowModal(pCod: String);
begin
  EdtCod.Text := pCod;
  iIndxTipo := 1;
  BuscarDB;
  inherited ShowModal;
end;

function TFormCadOper.VerifCamposObgt: Boolean;
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
  else if (Length(Trim(EdtPass.Text)) = 0) then
  begin
    EdtPass.SetFocus;
    EdtPass.SelectAll;
    ShowMessage('É obrigatório informar a senha do operador');
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;

function TFormCadOper.VerifUpdate: Boolean;
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

function TFormCadOper.HasCamposPreenchidos: Boolean;
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

procedure TFormCadOper.LimparCampos;
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
