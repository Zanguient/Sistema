unit Unt_FrmBuscaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  FIBDataSet, pFIBDataSet;

type
  TFrm_BuscaProduto = class(TForm)
    BtnBusca: TBitBtn;
    DbgBuscaProduto: TDBGrid;
    DsBuscaProduto: TDataSource;
    EdtBusca: TEdit;
    EdtEndereco: TDBEdit;
    EdtIeRg: TDBEdit;
    EdtBairro: TDBEdit;
    gbFiltro: TGroupBox;
    gbDados: TGroupBox;
    RbCod: TRadioButton;
    RbCodBarras: TRadioButton;
    RbProduto: TRadioButton;
    BtnSelecionar: TButton;
    BtnCancelar: TButton;
    LbTxtEndereco: TLabel;
    LbTxtBairro: TLabel;
    LbTxtRegistros: TLabel;
    LbRegistros: TLabel;
    LbTxtIeRg: TLabel;
    LbTxtCnpjCpf: TLabel;
    QryBuscaProduto: TpFIBDataSet;
    QryBuscaProdutoCOD_PRODUTO: TFIBIntegerField;
    QryBuscaProdutoNOME_PRODUTO: TFIBStringField;
    QryBuscaProdutoCODBARRA_PRODUTO: TFIBStringField;
    QryBuscaProdutoUNIDADE_PRODUTO: TFIBSmallIntField;
    QryBuscaProdutoNOME_UND: TFIBStringField;
    QryBuscaProdutoSUPERAB_UND: TFIBStringField;
    QryBuscaProdutoESTOQUE_PRODUTO: TFIBBCDField;
    QryBuscaProdutoPRCOMPRA_PRODUTO: TFIBBCDField;
    QryBuscaProdutoPRVENDA_PRODUTO: TFIBBCDField;
    QryBuscaProdutoCST: TFIBSmallIntField;
    QryBuscaProdutoBASESTCOMPRA_PRODUTO: TFIBBCDField;
    QryBuscaProdutoPERCICMSST_PRODUTO: TFIBFloatField;
    QryBuscaProdutoBASECALCULO_PRODUTO: TFIBFloatField;
    QryBuscaProdutoPERC_ICMS_ESTADO_PRODUTO: TFIBFloatField;
    QryBuscaProdutoTIPO_PRODUTO: TFIBSmallIntField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    procedure EdtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure BtnBuscaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QryBuscaProdutoTIPO_PRODUTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DbgBuscaProdutoDblClick(Sender: TObject);
    procedure DbgBuscaProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure QryBuscaProdutoCSTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);

  private
    procedure RetornoForm(encontrou: Boolean = True);
    procedure AjustaFiltro();

  public
    type RetornoConsulta = record
        Cod: Integer;
        Nome: String;
      end;

    var
      ParamBusca: String;
      Retorno: RetornoConsulta;
  end;

var
  Frm_BuscaProduto: TFrm_BuscaProduto;

implementation

uses
  Unt_DM;

{$R *.dfm}

procedure TFrm_BuscaProduto.AjustaFiltro;
var
  i: Integer;
begin
  if (Length(EdtBusca.Text) > 0) then begin
    if (Length(EdtBusca.Text) = 13) then
      RbCodBarras.Checked := True
    else if (Length(EdtBusca.Text) > 6) then
      RbProduto.Checked := True
    else begin
      RbCod.Checked := True;
      for i := 1 to Length(Trim(EdtBusca.Text)) do begin
        if not(EdtBusca.Text[i] in ['0' .. '9']) then begin
          RbProduto.Checked := True;
          Break;
        end;
      end;
    end;
  end;
end;

procedure TFrm_BuscaProduto.BtnBuscaClick(Sender: TObject);
var retorno: String;
begin
  with QryBuscaProduto do begin
    Close;
    SelectSQL.Clear;

    SelectSQL.Add('SELECT');
    SelectSQL.Add('P.COD_PRODUTO,');
    SelectSQL.Add('P.NOME_PRODUTO,');
    SelectSQL.Add('P.CODBARRA_PRODUTO,');
    SelectSQL.Add('P.UNIDADE_PRODUTO,');
    SelectSQL.Add('U.NOME_UND,');
    SelectSQL.Add('U.SUPERAB_UND,');
    SelectSQL.Add('P.ESTOQUE_PRODUTO,');
    SelectSQL.Add('P.PRCOMPRA_PRODUTO,');
    SelectSQL.Add('P.PRVENDA_PRODUTO,');
    SelectSQL.Add('P.CST,');
    SelectSQL.Add('P.BASESTCOMPRA_PRODUTO,');
    SelectSQL.Add('P.PERCICMSST_PRODUTO,');
    SelectSQL.Add('P.BASECALCULO_PRODUTO,');
    SelectSQL.Add('P.PERC_ICMS_ESTADO_PRODUTO,');
    SelectSQL.Add('P.TIPO_PRODUTO');
    SelectSQL.Add('FROM PRODUTOS P');
    SelectSQL.Add('LEFT JOIN UNIDADES U ON P.UNIDADE_PRODUTO = U.COD_UND');
    SelectSQL.Add('LEFT JOIN CLASSES C ON P.CODCLASSE_PRODUTO = C.COD_CLASSE');
    SelectSQL.Add('LEFT JOIN SUBCLASSE SC ON P.CODSUBCLASSE_PRODUTO = SC.COD_SUBCLASSE');

    try
      if Length(Trim(EdtBusca.Text)) > 0 then begin
        if (RbCod.Checked = True) then begin
          SelectSQL.Add('WHERE P.COD_PRODUTO = :COD');
          ParamByName('COD').AsInteger := StrToIntDef(EdtBusca.Text, 0);
        end else if (RbCodBarras.Checked = True) then begin
          SelectSQL.Add('WHERE UPPER(P.CODBARRA_PRODUTO COLLATE WIN_PTBR) LIKE UPPER(:COD_BARRAS)');
          ParamByName('COD_BARRAS').AsString := '%' + EdtBusca.Text + '%';
        end else begin
          SelectSQL.Add('WHERE UPPER(P.NOME_PRODUTO COLLATE WIN_PTBR) LIKE UPPER(:NOME)');
          ParamByName('NOME').AsString := '%' + EdtBusca.Text + '%';
        end;
      end;

      SelectSQL.Add('ORDER BY P.COD_PRODUTO');

    except
      on E: exception do begin
        ShowMessage('Erro ao executar busca. Erro: ' + #13 + E.Message);
        Transaction.Rollback;
        Close;
      end;
    end;

    Open;

    if RecordCount > 0 then begin
      LbRegistros.Caption := QryBuscaProduto.RecordCount.ToString;
      QryBuscaProduto.First;
      DbgBuscaProduto.SelectedField := DbgBuscaProduto.Columns[0].Field;
      DbgBuscaProduto.SetFocus;
    end else begin
      EdtBusca.SelectAll;
    end;
  end;
end;

procedure TFrm_BuscaProduto.BtnCancelarClick(Sender: TObject);
begin
  RetornoForm(False);
end;

procedure TFrm_BuscaProduto.BtnSelecionarClick(Sender: TObject);
begin
  RetornoForm(True);
end;

procedure TFrm_BuscaProduto.DbgBuscaProdutoDblClick(Sender: TObject);
begin
  RetornoForm(True);
end;

procedure TFrm_BuscaProduto.DbgBuscaProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then RetornoForm(True);
end;

procedure TFrm_BuscaProduto.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    BtnBusca.Click;
    Exit;
  end;

  AjustaFiltro();

  if (Key in ['0' .. '9']) then RbCod.Checked := True;
end;

procedure TFrm_BuscaProduto.FormCreate(Sender: TObject);
begin
  RbProduto.Checked := True;
end;

procedure TFrm_BuscaProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
  begin
    Key := #0;
    RetornoForm(False);
  end;
end;

procedure TFrm_BuscaProduto.FormShow(Sender: TObject);
var
  I: Integer;
begin
  if (ParamBusca <> '') then begin
    EdtBusca.Text := ParamBusca;
    AjustaFiltro();
    BtnBusca.Click;
  end;
end;

procedure TFrm_BuscaProduto.QryBuscaProdutoCSTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Text <> '' then begin
    Text := dm.getNomeCST(StrToInt(Text), False);
  end;
end;

procedure TFrm_BuscaProduto.QryBuscaProdutoTIPO_PRODUTOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Text = '0' then Text := 'Inativo'
  else if Text = '1' then Text := 'Normal';
end;

procedure TFrm_BuscaProduto.RetornoForm(encontrou: Boolean);
begin
  if encontrou = True then begin
    retorno.Cod := QryBuscaProdutoCOD_PRODUTO.AsInteger;
    retorno.Nome := QryBuscaProdutoNOME_PRODUTO.AsString;
    Frm_BuscaProduto.ModalResult := mrOk;
  end else begin
    retorno.Cod := 0;
    Frm_BuscaProduto.ModalResult := mrCancel;
  end;
end;

end.
