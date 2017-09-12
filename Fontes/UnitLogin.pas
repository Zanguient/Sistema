unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormLogin = class(TForm)
    BtnEntrar: TButton;
    BtnCancelar: TButton;
    PnBottom: TPanel;
    LbLogo1: TLabel;
    LbLogo2: TLabel;
    Shape3: TShape;
    Label1: TLabel;
    lbIncorreto: TLabel;
    Shape4: TShape;
    Panel2: TPanel;
    LbCod: TLabel;
    EdtUser: TEdit;
    Panel1: TPanel;
    LbSenha: TLabel;
    EdtPass: TEdit;

    procedure FormPaint;
    procedure BtnEntrarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtUserKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPassKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Logar(codOperador: Integer);
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses
  Unt_DM, UnitConstants, UnitCarregar, Unt_FrmPrincipal, Unt_Dados;

{$R *.dfm}
{ TFormLogin }

procedure TFormLogin.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormLogin.BtnEntrarClick(Sender: TObject);
begin
  case (Unt_DM.dm.VerificaOperador(EdtUser.Text, EdtPass.Text)) of
    0: Logar(0);
    1: begin
      lbIncorreto.Caption := 'Usuário ou Senha Inválido(s)';
      EdtUser.SetFocus;
      EdtUser.SelectAll;
    end;
    2: begin
      ShowMessage('Operador Inativo');
      EdtUser.SetFocus;
      EdtUser.SelectAll;
    end;
  end;
end;

procedure TFormLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    EdtPass.SetFocus;
  end;

  if not(Key in [#8, '0' .. '9']) then
  begin
    Key := #0;
  end;
end;

procedure TFormLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    BtnEntrarClick(Self);
  end;
end;

procedure TFormLogin.EdtPassKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    //Verificar se essa é a forma certa de chamar o código executado pelo BtnEntrarClick
    BtnEntrarClick(Self);
  end;
end;

procedure TFormLogin.EdtUserKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    EdtPass.SetFocus;
  end;

  if not(Key in [#8, '0' .. '9']) then
  begin
    Key := #0;
  end;
end;

procedure TFormLogin.FormCreate(Sender: TObject);
begin
  lbIncorreto.Caption := '';
end;

procedure TFormLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    FormLogin.ModalResult := mrCancel;
end;

procedure TFormLogin.FormPaint;
begin
  Canvas.Pen.Style := psSolid;
  Canvas.Pen.Color := clBlue;
  Canvas.Pen.Width := 1;
  Canvas.MoveTo(BtnEntrar.Left + BtnEntrar.Width,
    BtnEntrar.Top + BtnEntrar.Height);
  Canvas.LineTo(BtnCancelar.Left, BtnCancelar.Top);
end;

procedure TFormLogin.Logar(codOperador: Integer);
begin
  FormLogin.ModalResult := mrOk;
end;

end.
