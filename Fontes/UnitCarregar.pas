unit UnitCarregar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.GIFImg;

type
  TFormCarregar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCarregar: TFormCarregar;
  GIF: TGIFImage;

implementation

{$R *.dfm}

{ TFormCarregar }

end.
