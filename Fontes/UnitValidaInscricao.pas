unit UnitValidaInscricao;

interface

function calcularIE(IE, UF: string): boolean;
function imprimeIE(IE: string): string;
function retiraMascaraIE(IE: string): string;

implementation

uses Winapi.Windows, System.SysUtils;

Type
  TConsisteInscricaoEstadual = function(const Insc, UF: string)
    : Integer; stdcall;
  TVersaoDLL = function: Integer; stdcall;

var
  LibHandle: THandle;
  ConsisteInscricaoEstadual: TConsisteInscricaoEstadual;

function calcularIE(IE, UF: String): boolean;
var
  IRet, IOk, IErro, IPar: Integer;
  LibHandle: THandle;
  ConsisteInscricaoEstadual: TConsisteInscricaoEstadual;
begin
  try
    LibHandle := LoadLibrary(PChar(Trim('DllInscE32.Dll')));

    if (LibHandle <= HINSTANCE_ERROR) then
      raise Exception.Create('Dll não carregada');

    @ConsisteInscricaoEstadual := GetProcAddress(LibHandle,
      'ConsisteInscricaoEstadual');

    if @ConsisteInscricaoEstadual = nil then
      raise Exception.Create('Entrypoint Download não encontrado na Dll');

    IRet := ConsisteInscricaoEstadual(IE, UF);
    if IRet = 0 then
      calcularIE := True
    else if IRet = 1 then
      calcularIE := False;
  finally
    FreeLibrary(LibHandle);
  end;
end;

function imprimeIE(IE: string): string;
begin

end;

function retiraMascaraIE(IE: string): string;
begin

end;

end.
