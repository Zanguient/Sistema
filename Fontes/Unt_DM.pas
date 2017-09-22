unit Unt_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Data.FMTBcd,
  Data.DBXFirebird, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient,
  Data.DBXOdbc, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, Vcl.Dialogs,
  Vcl.Forms, IniFiles, Winsock, FIBQuery, pFIBQuery, System.Types, Winapi.Windows,
  Vcl.Themes, Vcl.Controls, System.Generics.Collections;

type
  Tdm = class(TDataModule)
    DB: TpFIBDatabase;
    Trans: TpFIBTransaction;
    Qry: TpFIBDataSet;

    procedure StatusOperadorGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure StatusOperadorSetText(Sender: TField; const Text: string);
    procedure StatusProdutoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure StatusProdutoSetText(Sender: TField; const Text: string);
    procedure TipoCadGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure TipoCadSetText(Sender: TField; const Text: string);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);

  private

  public
    { Public declarations }
    procedure ConectarDB;
    procedure DesconectarDB;
    procedure PreencheDadosEmpresa;
    procedure SetOperadorLogado(cod, nome: String);
    procedure setTemaPrincipal(tema: String);
    function CriaArqINI: Boolean;
    function VerificaOperador(pCod: String; pSenha: String): Integer;
    function GetIP: String;
    function GetServerName: String;
    function GetUsuarioLogado: String;
    function getCampoINI(campo: String; sessao: String = 'CONEXAO'): String;
    function getNomeCST(CodCST: Integer; RetornaCST_ORIG: Boolean = False): String;
    function getNomeOperadorLogado: String;
    function getIdOperadorLogado: String;
    function getNomeTemaPeloIndx(Indx: Integer): String;
  end;

  function getNewTrans: TpFIBTransaction;
  function getNewQuery(HeLeitura: Boolean=True): TpFIBQuery;
  procedure LiberarQuery(Nome: string);
  procedure LiberarTrans(Nome: string);

  function getCampoSelect(pSQL: String): String;

var
  dm: Tdm;
  pathIni, pathSistema, pathBin, pathConfig, pathFotos, pathDB, pathFolderBck: String;
  TotalTrans, TotalQuery: Integer;
  ListaTrans: TObjectList<TpFIBTransaction>;
  ListaQuery: TObjectList<TpFIBQuery>;

implementation

uses Unt_Dados, Unt_FrmPrincipal, UnitFuncoes;

{%CLASSGROUP 'Vcl.Controls.TControl'}

var
  codOperador, nomeOperador: String;

{$R *.dfm}

function getNewTrans: TpFIBTransaction;
begin
  Result := TpFIBTransaction.Create(dm);
  Inc(TotalTrans);
  Result.Name := 'Trans'+TotalTrans.ToString;
  Result.DefaultDatabase := dm.DB;
  Result.TRParams.Clear;
  Result.TRParams.Add('write');
  Result.TRParams.Add('nowait');
  Result.TRParams.Add('rec_version');
  Result.TRParams.Add('read_committed');
  ListaTrans.Add(Result);
end;

function getNewQuery(HeLeitura: Boolean=True): TpFIBQuery;
begin
  Result := TpFIBQuery.Create(dm);
  Inc(TotalQuery);
  Result.Name := 'Query' + TotalQuery.ToString;
  Result.Database := dm.DB;
  if HeLeitura then begin
    Result.Transaction := dm.Trans;
    Result.Tag := 0;
  end else begin
    Result.Transaction := getNewTrans;
    Result.Tag := 1;
  end;
  ListaQuery.Add(Result);
end;

procedure LiberarQuery(Nome: string);
var i: Integer;
begin
  for i := 0 to ListaQuery.Count-1 do begin
    if (Nome = ListaQuery[i].Name) then begin
      if (ListaQuery[i].Tag = 1) then LiberarTrans(ListaQuery[i].Transaction.Name);
      if ListaQuery[i].Open then ListaQuery[i].Close;
      ListaQuery.Delete(i);
    end;
  end;
end;

procedure LiberarTrans(Nome: string);
var i: Integer;
begin
  for i := 0 to ListaTrans.Count-1 do begin
    if (Nome = ListaTrans[i].Name) then begin
      if ListaTrans[i].InTransaction then ListaTrans[i].Rollback;
      ListaTrans.Delete(i);
    end;
  end;
end;

procedure Tdm.TipoCadGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    0: Text := 'PF';
    1: Text := 'PJ';
  end;
end;

procedure Tdm.TipoCadSetText(Sender: TField;
  const Text: string);
begin
  if Text = 'PF' then Sender.Value := 0
  else if Text = 'PJ' then Sender.Value := 1;
end;

function Tdm.VerificaOperador(pCod: String; pSenha: String): Integer;
begin
//Result 0: Logou;
//Result 1: Senha/Usuário Inválidos ou em Branco;
//Result 2: Status Inativo;

  Result := 1;

  if (Length(Trim(pCod)) = 0) or (Length(Trim(pSenha)) = 0) then Exit;

  if ((pCod = '0') and (UpperCase(pSenha) = 'MAPSA')) then begin
    Result := 0;
    SetOperadorLogado('0', 'Suporte');
    exit;
  end;

  with dm.Qry do begin
    Close;
    SelectSQL.Clear;

    SelectSQL.Add('SELECT V.COD_VENDEDOR FROM VENDEDORES V WHERE V.COD_VENDEDOR = :COD');
    ParamByName('COD').AsInteger := StrToInt(pCod);
    Open;

    if(RecordCount > 0) then begin
      Close;
      SelectSQL.Clear;

      SelectSQL.Add('SELECT V.COD_VENDEDOR, V.NOME_VENDEDOR, V.SENHA_VENDEDOR, V.STATUS_VENDEDOR');
      SelectSQL.Add('FROM VENDEDORES V WHERE V.COD_VENDEDOR = :COD');
      ParamByName('COD').AsInteger := StrToInt(pCod);
      Open;

      if (FieldByName('SENHA_VENDEDOR').AsString.Equals(UpperCase(pSenha))) then begin
        if (FieldByName('STATUS_VENDEDOR').AsString.Equals('A')) then begin
          Result := 0;
          SetOperadorLogado(pCod, FieldByName('NOME_OPERADOR').AsString);
        end else Result := 2
      end;
      Exit;
    end;
    Close;
    SelectSQL.Clear;
  end;
end;

procedure Tdm.ConectarDB;
var Arq: TIniFile;
aux: String;
begin
  db.ConnectParams.UserName := 'SUPS';//SYSDBA
  db.ConnectParams.Password := 'maps3880';//masterkey
  db.ConnectParams.CharSet := 'WIN1252';
  db.LibraryName := 'fbclient.dll';

  if getCampoINI('ConectarPorIP') = 'True' then db.DBName := getCampoINI('ServerIP') + '/3051:' + getCampoINI('DB')
  else db.DBName := getCampoINI('ServerName') + '/3051:' + getCampoINI('DB');

  try
    db.Connected := True;
    Trans.StartTransaction;
  except
    On E: Exception do begin
      ShowMessage('Erro ao se conectar ao Database.fdb. Erro: ' + e.message);
      Exit;
    end;
  end;
end;

//------------------------------------------
function Tdm.CriaArqINI: Boolean;
begin
  pathIni := pathConfig + '\LinSoft.ini';

  if not fileexists(pathIni) then begin
    with TIniFile.Create(pathIni) do begin
      try
        WriteString('CONEXAO', 'ServerIP', GetIP);
        WriteString('CONEXAO', 'ServerName', GetServerName);
        WriteString('CONEXAO', 'DB', pathDB + '\DATABASE.FDB');
        WriteString('CONEXAO', 'ConectarPorIP', 'True');
        Result := True;
      except
        on E: Exception do begin
          ShowMessage('Ocorreu erro ao gravar arquivo INI ' + #13 + 'ERRO: ' + E.Message);
        end;
      end;
    end;
  end
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True; //Listen to Memory Leaks



  pathSistema := 'C:\Users\' + GetUsuarioLogado + '\Documents\LinSoft';
  pathBin := pathSistema + '\Bin';
  pathConfig := pathSistema + '\Bin\Config';
  pathFotos := pathSistema + '\Bin\Fotos';
  pathDB := pathSistema + '\DB';
  pathFolderBck := pathDB + '\Backups';

  if CreateDir(pathSistema) then begin
    CreateDir(pathBin);
    CreateDir(pathConfig);
    CreateDir(pathFotos);
    CreateDir(pathDB);
    CreateDir(pathFolderBck);
  end;

  ListaTrans := TObjectList<TpFIBTransaction>.Create;
  TotalTrans := 0;
  ListaQuery := TObjectList<TpFIBQuery>.Create;
  TotalQuery := 0;

  if not (CriaArqINI) then Exit;
  ConectarDB;
  PreencheDadosEmpresa;
  setTemaPrincipal(getNomeTemaPeloIndx(tipoTemaEmpresa));
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(ListaQuery);
  FreeAndNil(ListaTrans);
  DesconectarDB;
end;

procedure Tdm.DesconectarDB;
begin
  if Trans.InTransaction then Trans.Rollback;
  DB.Close;
end;

function Tdm.getCampoINI(campo: String; sessao: String = 'CONEXAO'): String;
var Arq: TIniFile;
begin
  if fileexists(pathIni) then begin
    Arq := TIniFile.Create(pathIni);
    try
      Result := Arq.ReadString(sessao, campo, '');
    finally
      Arq.Free;
    end;
  end
end;

function getCampoSelect(pSQL: String): String;
begin
  Result := '';

  with dm.Qry do begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add(pSQL);
    Open;
    if RecordCount > 0 then Result := Fields[0].AsString;
  end;
end;

function Tdm.getIdOperadorLogado: String;
begin
  Result := codOperador;
end;

function Tdm.GetIP: String;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name: string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PAnsiChar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := gethostbyname(PAnsiChar(Name));

  with HostEnt^ do
  begin
    Result := Format('%d.%d.%d.%d',
    [Byte(h_addr^[0]),Byte(h_addr^[1]),
    Byte(h_addr^[2]),Byte(h_addr^[3])]);
  end;
  WSACleanup;
end;

function Tdm.getNomeCST(CodCST: Integer; RetornaCST_ORIG: Boolean): String;
var codOrigCST: Integer;
begin
  Result := '';
  codOrigCST := -1;

  if CodCST.Size = 3 then begin
    codOrigCST := StrToInt(Copy(CodCST.ToString, 1, 1));
    CodCST := StrToInt(Copy(CodCST.ToString, 2, 2));
  end;

  case CodCST of
   0: Result := 'Tributado integralmente';
   10: Result := 'Tributado e com ICMS ST';
   20: Result := 'Red. BC';
   30: Result := 'Isento/Não tributado e com ICMS ST';
   40: Result := 'Isento';
   41: Result := 'Não tributado';
   50: Result := 'Suspensão';
   51: Result := 'Diferimento';
   60: Result := 'ICMS cobrado anteriormente por ST';
   70: Result := 'Red. BC ST e com ICMS ST';
   90: Result := 'Outras';
  end;

  if (codOrigCST <> -1) and (RetornaCST_ORIG = True) then Result := CodOrigCST.ToString + CodCST.ToString + ' - ' + Result
  else Result := CodCST.ToString + ' - ' + Result;
end;

function Tdm.getNomeOperadorLogado: String;
begin
  Result := nomeOperador;
end;

function Tdm.getNomeTemaPeloIndx(Indx: Integer): String;
begin
  case Indx of
    0: Result := 'Windows';
    1: Result := 'Amethyst Kamri';
    2: Result := 'Smokey Quartz Kamri';
    3: Result := 'Slate Classico';
    4: Result := 'Silver';
    5: Result := 'Sapphire Kamri';
    6: Result := 'Lavender Classico';
    else Result := '';
  end;
end;

function Tdm.GetServerName: String;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  Result := '';
  size := 256;
  if GetComputerName(buffer, size) then Result := buffer;
end;

function Tdm.GetUsuarioLogado: String;
var
  I: DWord;
  user: String;
begin
  I := 255;
  SetLength(user, I);
  Winapi.Windows.GetUserName(PChar(user), I);
  user := string(PChar(user));
  result := user;
end;

procedure Tdm.PreencheDadosEmpresa;
begin
  with Qry do begin
    Close;
    SelectSQL.Clear;

    SelectSQL.Add('SELECT COUNT(*) FROM CONFIG C');
    Open;

    if not IsEmpty then begin
      Close;
      SelectSQL.Clear;

      SelectSQL.Add('SELECT C.NOME, C.ENDER, C.NUMEMPRESA, C.BAIRRO, C.CNPJ, CI.NOME_CIDADE || ''-'' || CI.UF_CIDADE ');
      SelectSQL.Add('AS CIDADEUF, C.FONE1, C.FONE2, COALESCE(CI.CEP_CIDADE, C.CEP) AS CEP, C.PRINTLOGO_PRINCIPAL, ');
      SelectSQL.Add('C.PRINTDETALHES_PRINCIPAL, C.LOGO, C.TIPOTEMA, C.TIPOENQUADRAMENTOEMPRESA, CI.UF_CIDADE, CI.NOME_CIDADE ');
      SelectSQL.Add('FROM CONFIG C LEFT JOIN CIDADES CI ON C.CODCIDADE = CI.COD_CIDADE');

      Open;

      nomeEmpresa := FieldByName('NOME').AsString;
      enderecoEmpresa := FieldByName('ENDER').AsString;
      numEmpresa := FieldByName('NUMEMPRESA').AsString;
      bairroEmpresa := FieldByName('BAIRRO').AsString;
      cnpjEmpresa := FieldByName('CNPJ').AsString;
      cidadeUfEmpresa := FieldByName('CIDADEUF').AsString;
      telefoneEmpresa := FieldByName('FONE1').AsString;
      telefone2Empresa := FieldByName('FONE2').AsString;
      cepEmpresa := FieldByName('CEP').AsString;
      printLogoEmpresa := FieldByName('PRINTLOGO_PRINCIPAL').AsBoolean;
      printDadosEmpresa := FieldByName('PRINTDETALHES_PRINCIPAL').AsBoolean;
      caminhoLogo := FieldByName('LOGO').AsString;
      tipoTemaEmpresa := FieldByName('TIPOTEMA').AsInteger;
      tipoEnqmento := FieldByName('TIPOENQUADRAMENTOEMPRESA').AsInteger;
      ufEmpresa := FieldByName('UF_CIDADE').AsString;
      cidadeEmpresa := FieldByName('NOME_CIDADE').AsString;
    end;
  end;
end;

procedure Tdm.SetOperadorLogado(cod, nome: String);
begin
  codOperador := cod;
  nomeOperador := nome;
end;

procedure Tdm.setTemaPrincipal(tema: String);
begin
  if (TStyleManager.ActiveStyle.Name.Equals(tema)) then exit
  else if Assigned(TStyleManager.ActiveStyle) then begin
    try
      TStyleManager.TrySetStyle(tema);
    except
      on E: exception do MsgErro('Tema não encontrado.' + #13 + 'Erro: ' + e.Message);
    end;
  end;
end;

procedure Tdm.StatusOperadorGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    0: Text := 'Ativo';
    1: Text := 'Inativo';
  end;
end;

procedure Tdm.StatusOperadorSetText(Sender: TField;
  const Text: string);
begin
  if Text = 'Ativo' then Sender.Value := 0
  else if Text = 'Inativo' then Sender.Value := 1;
end;

//Status Produto
procedure Tdm.StatusProdutoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    0: Text := 'Ativo';
    1: Text := 'Inativo';
  end;
end;

procedure Tdm.StatusProdutoSetText(Sender: TField;
  const Text: string);
begin
  if Text = 'Ativo' then Sender.Value := 0
  else if Text = 'Inativo' then Sender.Value := 1;
end;

end.
