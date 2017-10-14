unit Unt_FrmBuscaGenerica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls, FIBDataSet, pFIBDataSet, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.StdActns, FIBQuery, pFIBQuery,
  FIBDatabase, pFIBDatabase;

type
  TBusca = (Operador);
  TFrm_BuscaGen = class(TForm)

    rbgFiltro: TRadioGroup;
    DBGrid1: TDBGrid;

    pnlBotton: TPanel;
    pnlCenter: TPanel;
    pnlFiltro: TPanel;
    pnlBusca: TPanel;
    pnlWrapBtn1: TPanel;
    pnlWrapBtn2: TPanel;

    btnBusca: TSpeedButton;
    btnAtualizar: TBitBtn;
    btnLimpar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSelecionar: TBitBtn;

    edtBusca: TEdit;
    dsBusca: TDataSource;

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btnBuscaClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);

    private
      FCodField: String;
      FNomeField: String;
      FNomeTable: String;

      procedure PreencheDbgBusca(CodField, NomeField: String);

    public
      Constructor Create(CodField, NomeField, NomeTable: String; filtro: String = '');
      Function Buscar(Filtro: String): Boolean;


  end;

var
  Frm_BuscaGen: TFrm_BuscaGen;


implementation

Uses
  Unt_DM, UnitFuncoes;

{$R *.dfm}

constructor TFrm_BuscaGen.Create(CodField, NomeField, NomeTable: String; filtro: String = '');
begin
  FCodField := CodField;
  FNomeField := NomeField;
  FNomeTable := NomeTable;
  edtBusca.Text := filtro;
end;

procedure TFrm_BuscaGen.edtBuscaKeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  if (Key = #13) then
  begin
    Key := #0;
    Buscar(edtBusca.Text);
    Exit;
  end;

  if Length(Trim(EdtBusca.Text)) = 0 then
  begin
    if not (Key in ['0' .. '9']) then rbgFiltro.ItemIndex := 1
    else rbgFiltro.ItemIndex := 0;
    Exit;
  end;

  if Length(Trim(EdtBusca.Text)) > 0 then
  begin
    if (rbgFiltro.ItemIndex = 0) then
    begin
      for i := 1 to Length(Trim(EdtBusca.Text)) do
      begin
        if not(EdtBusca.Text[i] in ['0' .. '9']) then rbgFiltro.ItemIndex := 1;
      end;
    end;
  end;
end;

procedure TFrm_BuscaGen.btnAtualizarClick(Sender: TObject);
begin
  btnBusca.Click;
end;

procedure TFrm_BuscaGen.btnBuscaClick(Sender: TObject);
begin
  Buscar(edtBusca.Text);
end;

procedure TFrm_BuscaGen.btnLimparClick(Sender: TObject);
begin
  edtBusca.Text := '';
  DBGrid1.DataSource.DataSet.Close;
end;

function TFrm_BuscaGen.Buscar(Filtro: String): Boolean;
begin
  with getNewQuery() do begin
    try
      {
        REALIZA BUSCA GENÉRICA
        HOJE SÓ BUSCA OS CAMPOS COD E NOME DE UMA TABELA, PORÉM FUTURAMENTE DÁ PARA ADICIONAR
        MAIS CAMPOS E TRATÁ-LOS CAMPO FIELD1, FIELD2,... OU AINDA PREPARAR O SQL E MANDAR ELE PRONTO PARA
        ESSA FUNÇÃO
      }

      Close;
      SQL.Clear;
      Conditions.Clear;

      SQL.Add('SELECT');
      SQL.Add(Format('%S, ', [FCodField]));
      SQL.Add(Format('%S ', [FNomeField]));
      SQL.Add(Format('FROM %S', [FNomeTable]));

      if not (Trim(edtBusca.Text).IsEmpty) then begin
        if (rbgFiltro.ItemIndex = 0) then begin
          Conditions.AddMyCondition('CodField', Format('%S = %D', [FCodField, StrtoIntDef(EdtBusca.Text, 0)]));
        end else if (rbgFiltro.ItemIndex = 1) then begin
          Conditions.AddMyCondition('NomeField', Format('%S LIKE ''%S%S%S''', [FNomeField, '%', FNomeField, '%']));
        end;
        Conditions.Apply;
      end;

      ExecQuery;

      if (RecordCount > 0) then
        PreencheDbgBusca(FieldByName(FCodField).AsString, FieldByName(FNomeField).AsString);

    except
      on e: Exception do begin
        Transaction.Rollback;
        ShowMessage('Erro ao efetuar Busca' + #13 + 'ERRO: ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrm_BuscaGen.FormCreate(Sender: TObject);
begin
  rbgFiltro.ItemIndex := 1;
end;

procedure TFrm_BuscaGen.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then Close
  else if (Key = VK_F5) then btnAtualizar.Click;
end;

procedure TFrm_BuscaGen.FormShow(Sender: TObject);
begin
  if not (Trim(edtBusca.Text) = '') then btnBusca.Click;
end;

procedure TFrm_BuscaGen.PreencheDbgBusca(CodField, NomeField: String);
begin
  {
    PARAM1: ARRAY OF STRINGS PARA O NOME DAS COLUNAS
    PARAM2: DATASET COM OS VALORES DOS FIELDS
    OBS> MUDAR NOME DA PROC PARA PreencheDBGBusca(PFields: Array of Strings; PDataSet: TpFibDataSet);
    OBS2> MUDAR NOME DBG PARA DBGBusca
  }

  DBGrid1.Columns.Add();
  DBGrid1.Columns[0].Title.Caption := CodField;

  DBGrid1.Columns.Add();
  DBGrid1.Columns[1].Title.Caption := NomeField;
end;

end.
