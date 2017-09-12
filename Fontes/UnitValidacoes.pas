unit UnitValidacoes;

interface

function imprimeDOC(docDig: string): string;
function imprimeCNPJ(CNPJ: string): string;
function retiraMascaraCNPJ(CNPJ: string): string;
function imprimeCPF(CPF: string): string;
function retiraMascaraCPF(CPF: string): string;

implementation

uses SysUtils;

function imprimeDOC(docDig: string): string;
begin
  if Length(docDig) < 11 then
  begin
    Result:= '';
    Exit;
  end
  else if Length(docDig) = 11 then
  begin
    Result := imprimeCPF(docDig);
  end
  else if Length(docDig) = 14 then
  begin
    Result := imprimeCNPJ(docDig);
  end;

end;

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
  strAux := StringReplace(CNPJ, '/', '', [rfReplaceAll, rfIgnoreCase]);
  retiraMascaraCNPJ := strAux;
end;

function imprimeCPF(CPF: string): string;
begin
  imprimeCPF := copy(CPF, 1, 3) + '.' + copy(CPF, 4, 3) + '.' +
    copy(CPF, 7, 3) + '-' + copy(CPF, 10, 2);
end;

function retiraMascaraCPF(CPF: string): string;
var
  strAux: string;
begin
  strAux := StringReplace(CPF, '.', '', [rfReplaceAll, rfIgnoreCase]);
  strAux := StringReplace(CPF, '-', '', [rfReplaceAll, rfIgnoreCase]);
  retiraMascaraCPF := strAux;
end;

end.
