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
    procedure QryBuscaProdutoCSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);

  private
    { Private declarations }
    procedure RetornoForm(encontrou: Boolean = True);
  public
    { Public declarations }
  end;

var
  Frm_BuscaProduto: TFrm_BuscaProduto;
  retorno: Integer;

implementation

uses
  Unt_DM;

{$R *.dfm}

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
        if RbCod.Checked = True then SelectSQL.Add('WHERE PRODUTOS.COD_PRODUTO = ' + EdtBusca.Text)
        else if RbCodBarras.Checked = True then SelectSQL.Add('WHERE PRODUTOS.CODBARRA_PRODUTO LIKE ''' + EdtBusca.Text + '%''')
        else SelectSQL.Add('WHERE LOWER(PRODUTOS.NOME_PRODUTO) LIKE ''' + LowerCase(EdtBusca.Text) + '%''');
      end;
      SelectSQL.Add('ORDER BY P.COD_PRODUTO');
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
    LbRegistros.Caption := QryBuscaProduto.RecordCount.ToString;

    // Foco na primeira linha
    QryBuscaProduto.First;
    DbgBuscaProduto.SelectedField := DbgBuscaProduto.Columns[0].Field;
    DbgBuscaProduto.SetFocus;
  end;
end;

procedure TFrm_BuscaProduto.BtnCancelarClick(Sender: TObject);
begin
  RetornoForm(False);
end;

procedure TFrm_BuscaProduto.BtnSelecionarClick(Sender: TObject);
begin
  RetornoForm();
end;

procedure TFrm_BuscaProduto.DbgBuscaProdutoDblClick(Sender: TObject);
begin
  RetornoForm();
end;

procedure TFrm_BuscaProduto.DbgBuscaProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    RetornoForm();
  end;
end;

procedure TFrm_BuscaProduto.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  if (Key = #13) then
  begin
    Key := #0;
    BtnBusca.Click;
    Exit;
  end;

  if Length(Trim(EdtBusca.Text)) = 0 then
  begin
    if not (Key in ['0' .. '9']) then RbProduto.Checked := True
    else RbCod.Checked := True;
    Exit;
  end;

  if Length(Trim(EdtBusca.Text)) > 0 then
  begin
    if (Length(Trim(EdtBusca.Text)) = 14) then begin
      RbCodBarras.Checked;
      Exit;
    end else if (Length(Trim(EdtBusca.Text)) > 14) then begin
      RbProduto.Checked;
      Exit;
    end;

    if (RbCod.Checked) or (RbCodBarras.Checked) then
    begin
      for i := 1 to Length(Trim(EdtBusca.Text)) do
      begin
        if not(EdtBusca.Text[i] in ['0' .. '9']) then RbProduto.Checked := True;
      end;
    end;
  end;

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
    retorno := QryBuscaProdutoCOD_PRODUTO.AsInteger;
    Frm_BuscaProduto.ModalResult := mrOk;
  end else begin
    retorno := 0;
    Frm_BuscaProduto.ModalResult := mrCancel;
  end;
end;

end.
