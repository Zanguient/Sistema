unit Unt_FrmBuscaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  FIBDataSet, pFIBDataSet;

type
  TFormBuscador = class(TForm)
    DbgBuscaCliente: TDBGrid;
    EdtBusca: TEdit;
    gbFiltro: TGroupBox;
    RbCod: TRadioButton;
    RbCidade: TRadioButton;
    gbDados: TGroupBox;
    BtnSelecionar: TButton;
    BtnCancelar: TButton;
    RbNomeCliente: TRadioButton;
    LbTxtEndereco: TLabel;
    LbTxtBairro: TLabel;
    LbTxtRegistros: TLabel;
    LbRegistros: TLabel;
    LbTxtIeRg: TLabel;
    LbTxtCnpjCpf: TLabel;
    BtnBusca: TBitBtn;
    EdtEndereco: TDBEdit;
    EdtIeRg: TDBEdit;
    EdtBairro: TDBEdit;
    QryBuscaCliente: TpFIBDataSet;
    DsBuscaCliente: TDataSource;
    QryBuscaClienteCOD_CLIENTE: TFIBIntegerField;
    QryBuscaClienteNOME_CLIENTE: TFIBStringField;
    QryBuscaClienteNOME_CIDADE: TFIBStringField;
    QryBuscaClienteFONER_CLIENTE: TFIBStringField;
    QryBuscaClienteTIPO_PESSOA: TFIBStringField;
    QryBuscaClienteCLASSIFICACAO_CLIENTE: TFIBSmallIntField;
    QryBuscaClienteBAIRRO_CLIENTE: TFIBStringField;
    QryBuscaClienteSEXO_CLIENTE: TFIBSmallIntField;
    QryBuscaClienteCPF_CLIENTE: TFIBStringField;
    QryBuscaClienteRG_CLIENTE: TFIBStringField;
    QryBuscaClienteCGC_CLIENTE: TFIBStringField;
    QryBuscaClienteINSCRICAO_CLIENTE: TFIBStringField;
    QryBuscaClienteCODCIDADE_CLIENTE: TFIBIntegerField;
    EdtLogradouro: TDBEdit;
    LbTxtLogradouro: TLabel;
    EdtCnpjCpf: TEdit;
    QryBuscaClienteCELULAR_CLIENTE: TFIBStringField;
    QryBuscaClienteENDER_CLIENTE: TFIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DbgBuscaClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DbgBuscaClienteDblClick(Sender: TObject);
    procedure BtnBuscaClick(Sender: TObject);
    procedure DsBuscaClienteDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    TriggerFrm: TForm;
    TriggerConsulta: Boolean;

    procedure GerarRetorno(encontrouCod: Boolean);
  public
    { Public declarations }
  end;

var
  FormBuscador: TFormBuscador;
  tipoBusca, retorno: Integer;

implementation

{$R *.dfm}

Uses
  Unt_DM, Unt_FrmCadCliente, Unt_FrmCadCidade, Unt_FrmListaClientes,
  UnitListCidades, UnitValidacoes, Unt_FrmCadProduto, UnitPDV, UnitFuncoes;

procedure TFormBuscador.BtnSelecionarClick(Sender: TObject);
begin
  GerarRetorno(True);
end;

procedure TFormBuscador.BtnBuscaClick(Sender: TObject);
var retorno: String;
begin
  with QryBuscaCliente do begin
    Close;
    SelectSQL.Clear;

    SelectSQL.Add('SELECT');
    SelectSQL.Add('CLIENTES.COD_CLIENTE,');
    SelectSQL.Add('CLIENTES.NOME_CLIENTE,');
    SelectSQL.Add('C.NOME_CIDADE || '+QuotedStr('-')+' || C.UF_CIDADE AS NOME_CIDADE,');
    SelectSQL.Add('CLIENTES.FONER_CLIENTE,');
    SelectSQL.Add('CLIENTES.CELULAR_CLIENTE,');
    SelectSQL.Add('CLIENTES.TIPO_PESSOA,');
    SelectSQL.Add('CLIENTES.CLASSIFICACAO_CLIENTE,');
    SelectSQL.Add('COALESCE(CLIENTES.ENDER_CLIENTE || '+QuotedStr(', ')+' || CLIENTES.NUM_CLIENTE, CLIENTES.ENDER_CLIENTE) AS ENDER_CLIENTE,');
    SelectSQL.Add('CLIENTES.BAIRRO_CLIENTE,');
    SelectSQL.Add('CLIENTES.SEXO_CLIENTE,');
    SelectSQL.Add('CLIENTES.CPF_CLIENTE,');
    SelectSQL.Add('CLIENTES.RG_CLIENTE,');
    SelectSQL.Add('CLIENTES.CGC_CLIENTE,');
    SelectSQL.Add('CLIENTES.INSCRICAO_CLIENTE,');
    SelectSQL.Add('CLIENTES.CODCIDADE_CLIENTE');
    SelectSQL.Add('FROM CLIENTES INNER JOIN CIDADES C ON');
    SelectSQL.Add('CLIENTES.CODCIDADE_CLIENTE = C.COD_CIDADE');

    try
      if Length(Trim(EdtBusca.Text)) > 0 then begin
        if RbCod.Checked = True then SelectSQL.Add('WHERE CLIENTES.COD_CLIENTE = ' + EdtBusca.Text)
        else if RbCidade.Checked = True then SelectSQL.Add('WHERE LOWER(C.NOME_CIDADE) LIKE ''' + LowerCase(EdtBusca.Text) + '%''')
        else SelectSQL.Add('WHERE LOWER(CLIENTES.NOME_CLIENTE) LIKE ''' + LowerCase(EdtBusca.Text) + '%''');
      end;
      SelectSQL.Add('ORDER BY CLIENTES.COD_CLIENTE');
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
    LbRegistros.Caption := QryBuscaCliente.RecordCount.ToString;

    // Foco na primeira linha
    QryBuscaCliente.First;
    DbgBuscaCliente.SelectedField := DbgBuscaCliente.Columns[0].Field;
    DbgBuscaCliente.SetFocus;
  end;
end;

procedure TFormBuscador.BtnCancelarClick(Sender: TObject);
begin
  GerarRetorno(False);
end;

procedure TFormBuscador.DbgBuscaClienteDblClick(Sender: TObject);
begin
  GerarRetorno(True);
end;

procedure TFormBuscador.DbgBuscaClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    GerarRetorno(True);
  end;
end;

procedure TFormBuscador.DsBuscaClienteDataChange(Sender: TObject;
  Field: TField);
begin
  if QryBuscaCliente.RecordCount > 0 then begin
    if QryBuscaClienteTIPO_PESSOA.AsString = 'F' then begin
      EdtCnpjCpf.Text := UnitFuncoes.FormataCNPJ_CPF(QryBuscaClienteCPF_CLIENTE.AsString);
      LbTxtCnpjCpf.Caption := 'CPF:';

    end else if QryBuscaClienteTIPO_PESSOA.AsString = 'J' then begin
      EdtCnpjCpf.Text := UnitFuncoes.FormataCNPJ_CPF(QryBuscaClienteCGC_CLIENTE.AsString);
      LbTxtCnpjCpf.Caption := 'CNPJ:';
    end;
  end;
end;

procedure TFormBuscador.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  if (Key = #13) then
  begin
    Key := #0;
    BtnBusca.Click;
  end;

  if Length(Trim(EdtBusca.Text)) = 0 then
  begin
    if not RbCidade.Checked then
    begin
      if not(Key in ['0' .. '9']) then RbNomeCliente.Checked := True;
    end;
    if (Key in ['0' .. '9']) then RbCod.Checked := True;
  end;

  if Length(Trim(EdtBusca.Text)) > 0 then
  begin
    if RbCod.Checked then
    begin
      for i := 1 to Length(Trim(EdtBusca.Text)) do
      begin
        if not(EdtBusca.Text[i] in ['0' .. '9']) then RbNomeCliente.Checked := True;
      end;
    end;
  end;

  if (Length(Trim(EdtBusca.Text)) > 6) and (RbCidade.Checked = False) then RbNomeCliente.Checked := True;
end;

procedure TFormBuscador.FormClose(Sender: TObject; var Action: TCloseAction);
var i: Integer;
begin
  QryBuscaCliente.Close;
end;

procedure TFormBuscador.FormCreate(Sender: TObject);
begin
  RbNomeCliente.Checked := True;
end;

procedure TFormBuscador.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
  begin
    Key := #0;
    GerarRetorno(False);
  end;
end;

procedure TFormBuscador.GerarRetorno(encontrouCod: Boolean);
begin
  if encontrouCod = True then begin
    retorno := QryBuscaClienteCOD_CLIENTE.AsInteger;
    FormBuscador.ModalResult := mrOk;
  end else begin
    retorno := 0;
    FormBuscador.ModalResult := mrCancel;
  end;
end;

end.
