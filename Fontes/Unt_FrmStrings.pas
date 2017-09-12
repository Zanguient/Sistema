unit Unt_FrmStrings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;


type
  TFrm_Strings = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//  procedure SetLogoEmpresa(posicao: TAlign; visivel: Boolean);
//  procedure SetDadosEmpresa(posicao: TAlign; visivel: Boolean);
//  procedure PreencheEnquadramentoCmB(Cmb: TComboBox; frm: TForm);

var
  Frm_Strings: TFrm_Strings;

implementation

uses
  Unt_dados, Unt_DM, Unt_FrmPrincipal, UnitFuncoes, UnitPDV;

{$R *.dfm}

{procedure PreencheEnquadramentoCmB(Cmb: TComboBox; frm: TForm);
begin
  Cmb.Clear;
  Cmb.Items.Add('Simples Nacional');
  cmb.Items.Add('Lucro Presumido');
  Cmb.Items.Add('Lucro Real');
  Cmb.ItemIndex := -1;
end;

//Setar o Logo da Empresa
procedure SetLogoEmpresa(posicao: TAlign; visivel: Boolean);
begin
  with FormPrincipal do begin
    if (logoEmpresa <> '') then begin
      try
        ImgLogo.Picture.LoadFromFile(logoEmpresa);
        ImgLogo.Align := posicao;
        ImgLogo.Visible := visivel;
      except
        on E: exception do begin
//          MsgErro('Arquivo de Logo não encontrado. Erro: ' + #13 + e.Message);
        end;
      end;
    end;
  end;
end;

procedure SetDadosEmpresa(posicao: TAlign; visivel: Boolean);
begin
  with FormPrincipal do begin
    LbNomeEmpresa.Caption     := UpperCase(nomeEmpresa);
    LbDadosEmpresa.Caption := enderecoEmpresa + ', ' + numEmpresa + #13 + cidadeEmpresa + '-' +
                              ufEmpresa + #13 + FormataTelefone(telefoneEmpresa);
    PnlNomeEmpresa.Align   := posicao;
    PnlNomeEmpresa.Visible := visivel;
  end;
end;}

end.
