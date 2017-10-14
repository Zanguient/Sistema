unit Unt_FrmBuscaOperador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  FIBDataSet, pFIBDataSet;

type
  TFrm_BuscaOperador = class(TForm)
    BtnBusca: TBitBtn;
    DbgBuscaOperador: TDBGrid;
    DsBuscaProduto: TDataSource;
    EdtBusca: TEdit;
    gbFiltro: TGroupBox;
    RbCod: TRadioButton;
    RbOperador: TRadioButton;
    BtnSelecionar: TButton;
    BtnCancelar: TButton;
    LbTxtRegistros: TLabel;
    LbRegistros: TLabel;
    QryBuscaOperador: TpFIBDataSet;
    QryBuscaOperadorCOD_VENDEDOR: TFIBIntegerField;
    QryBuscaOperadorNOME_VENDEDOR: TFIBStringField;
    QryBuscaOperadorSTATUS_VENDEDOR: TFIBStringField;
    procedure EdtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure BtnBuscaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QryBuscaOperadorTIPO_PRODUTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DbgBuscaOperadorDblClick(Sender: TObject);
    procedure DbgBuscaOperadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure QryBuscaOperadorCSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QryBuscaOperadorSTATUS_VENDEDORGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);

  private
    procedure RetornoForm(encontrou: Boolean = True);

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
  Frm_BuscaOperador: TFrm_BuscaOperador;

implementation

uses
  Unt_DM, UnitFuncoes;

{$R *.dfm}

procedure TFrm_BuscaOperador.BtnBuscaClick(Sender: TObject);
var retorno: String;
begin
  with QryBuscaOperador do begin
    Close;
    SelectSQL.Clear;

    SelectSQL.Add('SELECT');
    SelectSQL.Add('V.COD_VENDEDOR,');
    SelectSQL.Add('V.NOME_VENDEDOR,');
    SelectSQL.Add('V.STATUS_VENDEDOR');
    SelectSQL.Add('FROM VENDEDORES V');

    try
      if Length(Trim(EdtBusca.Text)) > 0 then begin
        if (RbCod.Checked = True) then begin
          SelectSQL.Add('WHERE V.COD_VENDEDOR = ' + EdtBusca.Text)
        end else begin
          SelectSQL.Add('WHERE UPPER(V.NOME_VENDEDOR COLLATE WIN_PTBR) LIKE ' +
            QuotedStr('%' + UpperCase(RemoveAcentos(EdtBusca.Text)) + '%'));
        end;
      end;

      SelectSQL.Add('ORDER BY V.COD_VENDEDOR');

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
    LbRegistros.Caption := QryBuscaOperador.RecordCount.ToString;

    if (QryBuscaOperador.RecordCount > 0) then begin
      // Foco na primeira linha
      QryBuscaOperador.First;
      DbgBuscaOperador.SelectedField := DbgBuscaOperador.Columns[0].Field;
      DbgBuscaOperador.SetFocus;
    end else begin
      EdtBusca.SelectAll;
    end;

  end;
end;

procedure TFrm_BuscaOperador.BtnCancelarClick(Sender: TObject);
begin
  RetornoForm(False);
end;

procedure TFrm_BuscaOperador.BtnSelecionarClick(Sender: TObject);
begin
  RetornoForm();
end;

procedure TFrm_BuscaOperador.DbgBuscaOperadorDblClick(Sender: TObject);
begin
  RetornoForm();
end;

procedure TFrm_BuscaOperador.DbgBuscaOperadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    RetornoForm();
  end;
end;

procedure TFrm_BuscaOperador.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
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
    if not (Key in ['0' .. '9']) then RbOperador.Checked := True
    else RbCod.Checked := True;
    Exit;
  end;

  if Length(Trim(EdtBusca.Text)) > 0 then
  begin
    if (RbCod.Checked) then
    begin
      for i := 1 to Length(Trim(EdtBusca.Text)) do
      begin
        if not(EdtBusca.Text[i] in ['0' .. '9']) then RbOperador.Checked := True;
      end;
    end;
  end;

end;

procedure TFrm_BuscaOperador.FormCreate(Sender: TObject);
begin
  RbOperador.Checked := True;
end;

procedure TFrm_BuscaOperador.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
  begin
    Key := #0;
    RetornoForm(False);
  end;
end;

procedure TFrm_BuscaOperador.FormShow(Sender: TObject);
begin
  if not (ParamBusca.IsEmpty) then begin
    EdtBusca.Text := ParamBusca;

    if (StrToIntDef(ParamBusca, 0) = 0) then RbCod.Checked
    else RbOperador.Checked;

    BtnBusca.Click;
  end;
end;

procedure TFrm_BuscaOperador.QryBuscaOperadorCSTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Text <> '' then begin
    Text := dm.getNomeCST(StrToInt(Text), False);
  end;
end;

procedure TFrm_BuscaOperador.QryBuscaOperadorSTATUS_VENDEDORGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if (Sender.AsString = 'A') then
    Text := 'Ativo'
  else if (Sender.AsString = 'I') then
    Text := 'Inativo';
end;

procedure TFrm_BuscaOperador.QryBuscaOperadorTIPO_PRODUTOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Text = '0' then Text := 'Inativo'
  else if Text = '1' then Text := 'Normal';
end;

procedure TFrm_BuscaOperador.RetornoForm(encontrou: Boolean);
begin
  if encontrou = True then begin
    Retorno.Cod := QryBuscaOperadorCOD_VENDEDOR.AsInteger;
    Retorno.Nome := QryBuscaOperadorNOME_VENDEDOR.AsString;
    Frm_BuscaOperador.ModalResult := mrOk;
  end else begin
    Retorno.Cod := 0;
    Frm_BuscaOperador.ModalResult := mrCancel;
  end;
end;

end.
