unit Unt_FrmBuscaCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  FIBDataSet, pFIBDataSet;

type
  TFrm_BuscaCidade = class(TForm)
    DbgBuscaCliente: TDBGrid;
    EdtBusca: TEdit;
    gbFiltro: TGroupBox;
    RbCod: TRadioButton;
    RbCidade: TRadioButton;
    RbUf: TRadioButton;
    gbDados: TGroupBox;
    BtnSelecionar: TButton;
    BtnCancelar: TButton;
    LbTxtEndereco: TLabel;
    LbTxtRegistros: TLabel;
    LbRegistros: TLabel;
    LbTxtIeRg: TLabel;
    LbTxtCnpjCpf: TLabel;
    BtnBusca: TBitBtn;
    EdtCodIbge: TDBEdit;
    QryBuscaCidade: TpFIBDataSet;
    DsBuscaCidade: TDataSource;
    EdtCodContabil: TDBEdit;
    QryBuscaCidadeCOD_CIDADE: TFIBIntegerField;
    QryBuscaCidadeNOME_CIDADE: TFIBStringField;
    QryBuscaCidadeUF_CIDADE: TFIBStringField;
    QryBuscaCidadeCEP_CIDADE: TFIBStringField;
    QryBuscaCidadeCODCONTABIL_CIDADE: TFIBStringField;
    QryBuscaCidadeCODIBGE_CIDADE: TFIBStringField;
    EdtPais: TDBEdit;
    QryBuscaCidadeNOME_PAIS: TFIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DbgBuscaClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DbgBuscaClienteDblClick(Sender: TObject);
    procedure BtnBuscaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    TriggerFrm: TForm;
    TriggerConsulta: Boolean;

    procedure AdicionarIcones;
    procedure GerarRetorno(encontrou: Boolean);
  public
    { Public declarations }
  end;

var
  Frm_BuscaCidade: TFrm_BuscaCidade;
  retorno: Integer;

implementation

{$R *.dfm}

Uses
  Unt_DM, Unt_FrmCadCliente, Unt_FrmCadCidade, Unt_FrmListaClientes,
  UnitListCidades, UnitValidacoes, Unt_FrmCadProduto, UnitPDV, UnitFuncoes;

procedure TFrm_BuscaCidade.AdicionarIcones;
begin
//  SbBuscar.Glyph := nil;
//  Unt_DmImagens.udmComp.ImageList1.GetBitmap(2, SbBuscar.Glyph);
//  SbBuscar.Transparent := True;
//  SbBuscar.Flat := True;
//
//  SbListar.Glyph := nil;
//  Unt_DmImagens.udmComp.ImageList1.GetBitmap(4, SbListar.Glyph);
//  SbListar.Transparent := True;
//  SbListar.Flat := True;
end;

procedure TFrm_BuscaCidade.BtnSelecionarClick(Sender: TObject);
begin
  GerarRetorno(True);
end;

procedure TFrm_BuscaCidade.BtnBuscaClick(Sender: TObject);
var retorno: String;
begin
  with QryBuscaCidade do begin
    Close;
    SelectSQL.Clear;

    SelectSQL.Add('SELECT');
    SelectSQL.Add('CI.COD_CIDADE,');
    SelectSQL.Add('CI.NOME_CIDADE,');
    SelectSQL.Add('CI.UF_CIDADE,');
    SelectSQL.Add('CI.CEP_CIDADE,');
    SelectSQL.Add('CI.CODCONTABIL_CIDADE,');
    SelectSQL.Add('CI.CODIBGE_CIDADE,');
    SelectSQL.Add('P.NOME_PAIS');
    SelectSQL.Add('FROM CIDADES CI INNER JOIN PAISES P ON');
    SelectSQL.Add('CI.CODPAIS_CIDADE = P.COD_PAIS');

    try
      if Length(Trim(EdtBusca.Text)) > 0 then begin
        if RbCod.Checked = True then SelectSQL.Add('WHERE CI.COD_CIDADE = ' + EdtBusca.Text)
        else if RbCidade.Checked = True then SelectSQL.Add('WHERE LOWER(CI.NOME_CIDADE) LIKE ''' + LowerCase(EdtBusca.Text) + '%''')
        else SelectSQL.Add('WHERE UPPER(CI.UF_CIDADE) = ''' + UpperCase(EdtBusca.Text) + '''');
      end;
      SelectSQL.Add('ORDER BY CI.COD_CIDADE');
    except
      on E: exception do begin
        ShowMessage('Erro ao executar busca. Erro: '+e.Message);
        Transaction.Rollback;
        Close;
        Exit;
      end;
    end;
    Open;

    // Contar Registros
    LbRegistros.Caption := QryBuscaCidade.RecordCount.ToString;

    // Foco na primeira linha
    QryBuscaCidade.First;
    DbgBuscaCliente.SelectedField := DbgBuscaCliente.Columns[0].Field;
    DbgBuscaCliente.SetFocus;
  end;
end;

procedure TFrm_BuscaCidade.BtnCancelarClick(Sender: TObject);
begin
  GerarRetorno(False);
end;

procedure TFrm_BuscaCidade.DbgBuscaClienteDblClick(Sender: TObject);
begin
  GerarRetorno(True);
end;

procedure TFrm_BuscaCidade.DbgBuscaClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    GerarRetorno(True);
  end;
end;

procedure TFrm_BuscaCidade.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  if (Key = #13) then
  begin
    Key := #0;
    BtnBusca.Click;
  end;

  if Length(Trim(EdtBusca.Text)) = 0 then begin
    if (Key in ['0' .. '9']) then RbCod.Checked := True
    else if (not RbUf.Checked) then RbCidade.Checked := True;
  end else begin
    if (Length(Trim(EdtBusca.Text)) > 6) then RbCidade.Checked := True
    else if RbCod.Checked then for i := 1 to Length(Trim(EdtBusca.Text)) do if not(EdtBusca.Text[i] in ['0' .. '9']) then RbCidade.Checked := True;
  end;
end;

procedure TFrm_BuscaCidade.FormClose(Sender: TObject; var Action: TCloseAction);
var i: Integer;
begin
  QryBuscaCidade.Close;
end;

procedure TFrm_BuscaCidade.FormCreate(Sender: TObject);
begin
  RbCidade.Checked := True;
end;

procedure TFrm_BuscaCidade.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
  begin
    Key := #0;
    GerarRetorno(False);
  end;
end;

procedure TFrm_BuscaCidade.FormShow(Sender: TObject);
begin
  EdtBusca.SetFocus;
end;

procedure TFrm_BuscaCidade.GerarRetorno(encontrou: Boolean);
begin
  if (encontrou = True) then begin
    retorno := QryBuscaCidadeCOD_CIDADE.AsInteger;
    Frm_BuscaCidade.ModalResult := mrOk;
  end else begin
    retorno := 0;
    Frm_BuscaCidade.ModalResult := mrCancel;
  end;
end;

end.
