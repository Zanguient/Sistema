unit UntFuncoes;

interface

uses Vcl.Forms, Grids, DBGrids, Winapi.Messages, Winapi.Windows, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Dialogs, Vcl.Controls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, System.MaskUtils, Vcl.Mask,
  Data.DB, Vcl.Buttons, Vcl.Menus;

type
  TTipoMsg = (tMsgErroPK, tMsgDelBtn, tMsgCloseFrm, tMsgCancBtn, tMsgCampoBranco, tMsgCampObrig);

type MyMessages = record
  public
    function MsgErro1(Msg: String): Boolean;
end;

procedure AutoSizeDBGrid(const xDBGrid: TDBGrid);
procedure FocarComponente(pFrm: TForm);
procedure LimpaCampos(pFrm: TForm);
procedure MudaCorEditReadOnly(CorReadOnly: TColor; CorTxtReadOnly: TColor; EditArray: Array of TEdit);
procedure CriaArqvLog(texto: String);

function MsgCompleta(Msg, Title, MsgBtn1, MsgBtn2: String; tipoAction: TTaskDialogIcon; temBeep, repetir: Boolean): Boolean;
function MsgFixa(tipoMsg: TTipoMsg; msg : String = ''): Boolean;
function MsgConfirmacao(Msg, Title: String): Boolean;
function MsgErro(Msg: String): Boolean;
function MsgAviso(Msg: String): Boolean;
function MsgBoxLoop(msg, title: String): Boolean;

function Remove_Char_Especial(texto: string): string; stdcall;
function RemoveAcentos(Str: string): string;
function RemoverZeros(S: String): String;
Function RemovePonto(S: String): String;

function Verifica_Tipo_String(pTxtEdt: String): Integer;
Function CopiaAteEspaco(S: String): String;
function ValidaCPF(doc: String):String;
function ValidaCNPJ(doc: String):String;

Function FormatarBanco(Valor: String): String;
function FormataCNPJ_CPF(doc: String): String;
function FormataTelefone(fone: String): String;
function FormataCEP(cep: String): string;
function FormataPalavra(palavra: String): string;
function FormataData(data: String): String;

function Msg: MyMessages;


implementation

Uses
  ACBrValidador;

function Msg: MyMessages;
  var m: MyMessages;
begin
  result := m;
end;

procedure MudaCorEditReadOnly(CorReadOnly: TColor; CorTxtReadOnly: TColor; EditArray: Array of TEdit);
var
  I: Integer;
begin
  for I := 0 to Length(EditArray)-1 do begin
    EditArray[i].Color := CorReadOnly;
    EditArray[i].Font.Color := CorTxtReadOnly;
  end;
end;

procedure CriaArqvLog(texto: String);
var
  NomeArqv: String;
  TF: TextFile;
begin
  NomeArqv := ChangeFileExt(Application.ExeName, '.log');
  AssignFile(TF, NomeArqv);

  //Rewrite(TF);

  Append(TF);
  Writeln(TF, texto);
  CloseFile(TF);
end;

function FormataPalavra(palavra: String): string;
var
  i: Integer;
  aux: string;
begin
  if Length(palavra) <= 0 then begin
    Result := palavra;
    Exit;
  end;

  Result := LowerCase(Trim(palavra));

  aux := UpperCase(Result[1]);
  Delete(Result, 1, 1);
  Insert(aux, Result, 0);

  for i := 1 to Length(Result) do begin
    if (Result[i] = ' ') then begin
      aux := Result[i+1];
      Result := Result.Replace(' ' + aux, ' ' + UpperCase(aux));
    end;
  end;
end;

function FormataCNPJ_CPF(doc: String): String;
begin
  doc := Remove_Char_Especial(doc);
  if (Length(doc) = 11) then Result := FormatMaskText('000.000.000-00;0', doc)
  else if (Length(doc) = 14) then Result := FormatMaskText('00.000.000/0000-00;0', doc)
  else Result := doc;
end;

function FormataCEP(cep: String): string;
begin
  Result := cep;
  if Length(Trim(cep)) = 8 then Result := FormatMaskText('00000-000;0', cep);
end;

function FormataTelefone(fone: String): String;
begin
  if (Length(fone) = 8) then Result := FormatMaskText('0000-0000;0', fone)
  else if (Length(fone) = 10) then Result := FormatMaskText('(00) 0000-0000;0', fone)
  else if (Length(fone) = 11) then Result := FormatMaskText('(00) 0 0000-0000;0', fone)
  else Result := fone;
end;

function MsgBoxLoop(msg, title: String): Boolean;
begin
  repeat
    if Application.MessageBox(PWideChar(msg), PWideChar(title), MB_OKCANCEL) = IDOK then result := True
    else Result := False;
  until Result = True;
end;

procedure AutoSizeDBGrid(const xDBGrid: TDBGrid);
var
  I, TotalWidht, VarWidth, QtdTotalColuna: Integer;
  xColumn: TColumn;
begin
  // Largura total de todas as colunas antes de redimensionar
  TotalWidht := 0;
  // Como dividir todo o espaÁo extra na grade
  VarWidth := 0;
  // Quantas colunas devem ser auto-redimensionamento
  QtdTotalColuna := 0;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    TotalWidht := TotalWidht + xDBGrid.Columns[I].Width;
    if xDBGrid.Columns[I].Field.Tag <> 0 then
      Inc(QtdTotalColuna);
  end;

  // Adiciona 1px para a linha de separador de coluna
  if dgColLines in xDBGrid.Options then
    TotalWidht := TotalWidht + xDBGrid.Columns.Count;

  // Adiciona a largura da coluna indicadora
  if dgIndicator in xDBGrid.Options then
    TotalWidht := TotalWidht + IndicatorWidth;

  // width vale "Left"
  VarWidth := xDBGrid.ClientWidth - TotalWidht;

  // Da mesma forma distribuir VarWidth para todas as colunas auto-resizable
  if QtdTotalColuna > 0 then
    VarWidth := VarWidth div QtdTotalColuna;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    xColumn := xDBGrid.Columns[I];
    if xColumn.Field.Tag <> 0 then
    begin
      xColumn.Width := xColumn.Width + VarWidth;
      if xColumn.Width < xColumn.Field.Tag then
        xColumn.Width := xColumn.Field.Tag;
    end;
  end;
end;

function Remove_Char_Especial(texto: string): string; stdcall;
{ FunÁ„o que serve para nao aceitar caracteres especiais tipo !@#$%^&*() }
const
  _Remove = ':;~`!@#$%^&*()_-+=|\<>,.?/Ê';
var
  x: Integer;
begin
  result := '';
  for x := 1 to Length(texto) do
    if Pos(texto[x], _Remove) <> 0 then

    else
      result := result + texto[x];
end;

function RemoveAcentos(Str: string): string;
Const
  ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
  x : Integer;
Begin
  For x := 1 to Length(Str) do begin
    if Pos(Str[x], ComAcento) <> 0 Then begin
      Str[x] := SemAcento[Pos(Str[x],ComAcento)];
    end;
  end;
  Result := Str;
end;

Function RemovePonto(S: String): String;
begin
  Result := StringReplace(S, '.','',[rfReplaceAll, rfIgnoreCase]);
end;

// FunÁ„o - Copiar atÈ o 1∫ EspaÁo da String
Function CopiaAteEspaco(S: String): String;
var
  L: Integer;
begin
  L := Pos(' ', S);
  if L <= 0 then // Caso n„o haja espaÁo
    L := MaxInt; // Iguala a Variavel ao Maior Inteiro Definido Pelo Sistema
  result := Copy(S, 1, L - 1);
end;

function RemoverZeros(S: String): String;
begin
  Result := StringReplace(S, '.', '', [rfReplaceAll, rfIgnoreCase]);
end;

procedure FocarComponente(pFrm: TForm);
begin
  pFrm.Perform(WM_NEXTDLGCTL, 0, 0);
end;

function MsgCompleta(Msg, Title, MsgBtn1, MsgBtn2: String; tipoAction: TTaskDialogIcon; temBeep, repetir: Boolean): Boolean;
var
  td: TTaskDialog;
  tb: TTaskDialogBaseButtonItem;
begin
  td := TTaskDialog.Create(nil);
  try
    if temBeep then MessageBeep(0);
    td.Caption := title;
    td.Text := Msg;
    td.MainIcon := tipoAction;
    td.CommonButtons := [];

    tb := td.Buttons.Add;
    tb.Caption := MsgBtn1;
    tb.ModalResult := 100;

    if Length(Trim(MsgBtn2)) > 0 then begin
      tb := td.Buttons.Add;
      tb.Caption := MsgBtn2;
      tb.ModalResult := 101;
    end;

    td.Execute;

    if td.ModalResult = 100 then Result := True
    else if td.ModalResult = 101 then result := False;

    td.Free;
  Except
    On E: Exception do
    begin
      ShowMessage(E.ClassName + ' Error raised, with ' + E.Message);
      result := False;
    end;
  end;
end;

function MsgAviso(Msg: String): Boolean;
begin
  MsgCompleta(Msg, 'Aviso!', 'OK', '', 1, False, False);
end;

function MsgErro(Msg: String): Boolean;
begin
  MsgCompleta(Msg, 'Erro!', 'OK', '', 2, False, False);
end;

function MsgConfirmacao(Msg, Title: String): Boolean;
begin
  Result := UntFuncoes.MsgCompleta(Msg, Title, 'Sim', 'N„o', 1, False, False);
end;

function MsgFixa(tipoMsg: TTipoMsg; msg : String = ''): Boolean;
begin
  if tipoMsg = tMsgErroPK then Result := MsgErro('Esse Registro È Protegido e n„o pode ser ExcluÌdo!')
  else if tipoMsg = tMsgDelBtn then Result := MsgConfirmacao('Deseja Excluir o Registro?', 'Excluir Registro')
  else if tipoMsg = tMsgCloseFrm then Result := MsgConfirmacao('Deseja Fechar o formul·rio?', 'Fechar Formul·rio')
  else if tipoMsg = tMsgCancBtn then Result := MsgConfirmacao('Deseja Cancelar as alteraÁıes?', 'Cancelar AlteraÁıes')
  else if tipoMsg = tMsgCampoBranco then Result := MsgConfirmacao('O campo ' + msg + ' Est· em branco. ' + #13 +
                'Deseja continuar mesmo assim?', 'Campo em Branco')
  else if tipoMsg = tMsgCampObrig then Result := MsgAviso('… obrigatÛrio preencher o campo ' + msg)
end;

procedure LimpaCampos(pFrm: TForm);
var
  I, j, k: Integer;
begin
  for I := 0 to pFrm.ComponentCount - 1 do begin
    if (pFrm.Components[I] is TEdit) then (pFrm.Components[I] as TEdit).Text := ''
    else if (pFrm.Components[I] is TComboBox) then (pFrm.Components[I] as TComboBox).ItemIndex := -1
    else if (pFrm.Components[I] is TImage) then (pFrm.Components[I] as TImage).Picture := nil
    else if (pFrm.Components[I] is TMemo) then (pFrm.Components[I] as TMemo).Text := ''
    else if (pFrm.Components[I] is TStringGrid) then begin
      for j := 0 to (pFrm.Components[I] as TStringGrid).ColCount - 1 do begin
        for k := 0 to (pFrm.Components[I] as TStringGrid).RowCount - 1 do (pFrm.Components[I] as TStringGrid).Cells[j, k] := '';
        (pFrm.Components[I] as TStringGrid).RowCount := (pFrm.Components[I] as TStringGrid).RowCount - 1;
        (pFrm.Components[I] as TStringGrid).ColCount := (pFrm.Components[I] as TStringGrid).ColCount - 1;
      end;
    end;
  end;
end;

function Verifica_Tipo_String(pTxtEdt: String): Integer;
var
  I, codResult: Integer;
  isNum, isCodBarra: Boolean;
begin
  // Result = 0 -> CÛdigo;
  // Result = 1 -> Nome;
  // Result = 2 -> CÛd. Barras;
  // Result = -1 -> Em branco;

  if Length(Trim(pTxtEdt)) = 0 then
  begin
    result := -1;
    exit;
  end;

  if (Length(Trim(pTxtEdt)) >= 12) and (Length(Trim(pTxtEdt)) <= 14) then
  begin
    for I := 1 to Length(Trim(pTxtEdt)) do
      if not(pTxtEdt[I] in ['0' .. '9']) then
      begin
        isCodBarra := False;
        Break;
      end
      else
        isCodBarra := True;

    if isCodBarra then
      result := 0
    else
      result := 1;

    exit;
  end;

  if (Length(Trim(pTxtEdt)) > 6) then
  begin
    result := 1;
    exit;
  end;

  if Length(Trim(pTxtEdt)) > 0 then
  begin
    for I := 1 to Length(Trim(pTxtEdt)) do
      if not(pTxtEdt[I] in ['0' .. '9']) then
      begin
        isNum := False;
        Break;
      end
      else
        isNum := True;
  end;

  if isNum then
    result := 0
  else
    result := 1;
end;

function FormatarBanco(Valor: String): String;
begin
  Result := FormatFloat(',###.00', StrToFloatDef(Valor,0));
end;

function ValidaCPF(doc: String):String;
begin
  Result := ACBrValidador.ValidarCPF(doc);
end;

function ValidaCNPJ(doc: String):String;
begin
  Result := ACBrValidador.ValidarCNPJ(doc);
end;

function FormataData(data: String): String;
begin
  data := Trim(Remove_Char_Especial(data));
  if Length(data) = 0 then Result := ''
  else Result := FormatMaskText('00.00.0000;0', data);
end;

{ MyMessages }

function MyMessages.MsgErro1(Msg: String): Boolean;
begin
  MsgErro(Msg);
end;

end.
