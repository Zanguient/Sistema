unit UnitTrocaOperador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unt_DM, Unt_FrmPrincipal,
  Vcl.ExtCtrls, UnitConstants, UnitFuncoes;

type
  TFormTrocaOper = class(TForm)
    EdtUser: TEdit;
    EdtPass: TEdit;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    LbUser: TLabel;
    LbPass: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Label8: TLabel;
    Shape3: TShape;
    Label9: TLabel;
    Shape4: TShape;
    Label11: TLabel;
    Label12: TLabel;
    LbOperador: TLabel;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtUserKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPassKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure TrocarOperador;
    procedure LimparCampos;
    procedure EscPrecionado;
    function isCamposPreenchidos: Boolean;
  public
    { Public declarations }
  end;

var
  FormTrocaOper: TFormTrocaOper;

implementation

{$R *.dfm}

procedure TFormTrocaOper.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTrocaOper.BtnSalvarClick(Sender: TObject);
begin
  TrocarOperador;
end;

procedure TFormTrocaOper.EdtPassKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    TrocarOperador;
  end;
end;

procedure TFormTrocaOper.EdtUserKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    EdtPass.SetFocus;
  end;
end;

procedure TFormTrocaOper.EscPrecionado;
begin
  if isCamposPreenchidos then LimparCampos
  else Close;
end;

procedure TFormTrocaOper.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Unt_DM.dm.FdQuery.SQL.Clear;
//  Unt_DM.dm.FdQuery.Close;
end;

procedure TFormTrocaOper.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    EscPrecionado;
  end;
end;

procedure TFormTrocaOper.FormShow(Sender: TObject);
var
  auxOperador, auxNomeOperador: String;
begin
  EdtUser.SetFocus;
  LbOperador.Caption := Unt_FrmPrincipal.Frm_principal.LbCodOper.Caption +
  Unt_FrmPrincipal.Frm_principal.LbNomeOper.Caption;
end;

function TFormTrocaOper.isCamposPreenchidos: Boolean;
var
  i: Integer;
begin
  Result:= False;
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) then
    begin
      if (((Components[i] as TEdit).Text) <> '') then Result:= True;
    end
  end;
end;

procedure TFormTrocaOper.LimparCampos;
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
    end
  end;
  EdtUser.SetFocus;
end;

procedure TFormTrocaOper.TrocarOperador;
var
  isValid: Boolean;
begin
  if (UnitFuncoes.Remove_Char_Especial(Unt_FrmPrincipal.Frm_principal.LbCodOper.Caption) = EdtUser.Text) then
  begin
    ShowMessage('Esse operador já está logado');
    EdtUser.SelectAll;
    EdtUser.SetFocus;
    Exit;
  end;

  if EdtUser.Text = '0' then
    if EdtPass.Text = UnitConstants.SENHA_SUPORTE then
      isValid := True
    else
      isValid := False;

//  with Unt_DM.dm.FdQuery do
//  begin
//    Close;
//    SQL.Clear;
//
//    SQL.Add('SELECT count(*), nome_operador, senha_operador FROM operadores op '
//      + 'WHERE op.id_operador = :p1 group by op.nome_operador, ' +
//      'op.senha_operador');
//
//    ParamByName('p1').AsInteger := StrToInt(EdtUser.Text);
//
//    Open();
//
//    if FieldByName('count').AsInteger > 0 then
//      if EdtPass.Text = FieldByName('senha_operador').AsString then
//        isValid := True
//      else
//        isValid := False;
//
//    if isValid then
//    begin
//      ShowMessage('Operador trocado com sucesso!');
//
//      if FieldByName('count').AsInteger > 0 then
////        Unt_FrmPrincipal.FormPrincipal.AtualizaOperador(EdtUser.Text,
////          FieldByName('nome_operador').AsString)
//      else
////        Unt_FrmPrincipal.FormPrincipal.AtualizaOperador(EdtUser.Text, 'Suporte');
//
//      LimparCampos;
//      FormTrocaOper.Close;
//    end
//    else
//    begin
//      ShowMessage('Usuário ou senha incorreta. Verifique!');
//      EdtUser.SetFocus;
//      EdtUser.SelectAll;
//    end;
//
//    SQL.Clear;
//    Close;
//  end;
end;

end.
