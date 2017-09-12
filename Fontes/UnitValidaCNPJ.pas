unit UnitValidaCNPJ;

interface

function imprimeCNPJ(CNPJ: string): string;
function retiraMascaraCNPJ(CNPJ: string): string;

implementation

uses SysUtils;

function imprimeCNPJ(CNPJ: string): string;
begin
  imprimeCNPJ := copy(CNPJ, 1, 2) + '.' + copy(CNPJ, 3, 3) + '.' +
    copy(CNPJ, 6, 3) + '.' + copy(CNPJ, 9, 4) + '-' + copy(CNPJ, 13, 2);
end;

function retiraMascaraCNPJ(CNPJ: string): string;
var
  strAux: string;
begin
  strAux := StringReplace(CNPJ, '.', '', [rfReplaceAll, rfIgnoreCase]);
  strAux := StringReplace(CNPJ, '-', '', [rfReplaceAll, rfIgnoreCase]);
  retiraMascaraCNPJ := strAux;
end;

end.
