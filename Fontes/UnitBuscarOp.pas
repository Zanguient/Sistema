unit UnitBuscarOp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Unt_DM, UnitFuncoes;

type
  TFormBuscarOp = class(TForm)
    SbBuscar: TSpeedButton;
    SbListar: TSpeedButton;
    Label6: TLabel;
    LbRegistros: TLabel;
    DBGrid: TDBGrid;
    EdtBuscar: TEdit;
    GbRbuttons: TGroupBox;
    RbCod: TRadioButton;
    RbNome: TRadioButton;
    BtnSelecionar: TButton;
    BtnCancelar: TButton;
    DsBuscarOp: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelarClick(Sender: TObject);
    procedure SbBuscarClick(Sender: TObject);
    procedure SbListarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    TriggerFrm: TForm;
    TriggerConsulta: Boolean;
    procedure AdicionarIcones;
    procedure PrepararBusca;
    procedure ConsultarTodosDB;
    procedure RowSelecionada(pFrm: TForm);
    procedure ConfigAbrir;
    procedure ConfigFechar;
    procedure VerifCBoxPesquisa;
  public
    { Public declarations }
    procedure ShowModal(pFrm: TForm); overload;
    procedure ShowModal(pFrm: TForm; pSearch: String); overload;
    procedure ConsultarDB;

  end;

var
  FormBuscarOp: TFormBuscarOp;

implementation

uses
  UnitCadOper, UnitPDV;

{$R *.dfm}

procedure TFormBuscarOp.AdicionarIcones;
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

procedure TFormBuscarOp.BtnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFormBuscarOp.BtnSelecionarClick(Sender: TObject);
begin
  RowSelecionada(TriggerFrm);
end;

procedure TFormBuscarOp.ConfigAbrir;
begin
  RbNome.Checked := True;
  EdtBuscar.SetFocus;
end;

procedure TFormBuscarOp.ConfigFechar;
begin
//  Unt_DM.dm.FdQuery.close;
  DsBuscarOp.Enabled := False;
  LbRegistros.Caption := '';
end;

procedure TFormBuscarOp.ConsultarDB;
begin
  try
//    with Unt_DM.dm.FdQuery do
//    begin
//      DsBuscarOp.Enabled := True;
//      close;
//      SQL.Clear;
//
//      SQL.Add('SELECT id_operador, status_operador, nome_operador, ' +
//        'nome_cidade || ' + QuotedStr('-') + ' || uf, ' +
//        'email_operador FROM operadores op inner join cidade ci on ' +
//        'op.id_cidade_operador = ci.id_cidade join estado es on ' +
//        'ci.id_estado = es.id_estado WHERE ');
//
//      if RbCod.Checked then // Pesquisar pelo Cod
//      begin
//        SQL.Add('id_operador = :p1 ORDER BY op.id_operador');
//        ParamByName('p1').Value := Trim(EdtBuscar.Text);
//      end
//      else if RbNome.Checked then // Pesquisar pelo Nome
//      begin
//        SQL.Add('lower(nome_operador) LIKE ' +
//          LowerCase(QuotedStr('%' + EdtBuscar.Text + '%')) +
//          ' ORDER BY op.id_operador');
//      end;
//
//      Open();
//
//      // Editar e alimentar o DBGrid
//      FieldByName('id_operador').DisplayLabel := 'Código';
//      FieldByName('status_operador').DisplayLabel := 'Status';
//      FieldByName('nome_operador').DisplayLabel := 'Nome';
//      FieldByName('Concatenation').DisplayLabel := 'Cidade';
//      FieldByName('email_operador').DisplayLabel := 'E-mail';
//
//      if DsBuscarOp.DataSet.IsEmpty then
//      begin
//        EdtBuscar.SetFocus;
//        EdtBuscar.SelectAll;
//        LbRegistros.Caption := '0 Registros';
//        Exit;
//      end;
//
//      DBGrid.DataSource := DsBuscarOp;
//
//      { Essa é a forma de modificar a informação da cédula. No DB está com status: 0, 1 ou 2.
//        Nesse caso, criar duas funções: OnGetText e OnSetText no FDQuery (Primeiro fazer sql e depois nos
//        Fields listados terá essas funcoes. Lembrar de deletar fields e query depois). Quando isso estiver pronto,
//        Fazer o código abaixo: }
//      DBGrid.DataSource.DataSet.FieldByName('status_operador').OnGetText :=
//        Unt_DM.dm.StatusOperadorGetText;
//
//      // Definir tamanho min
//      DBGrid.Fields[0].Tag := 10 + Canvas.TextWidth
//        (DBGrid.Fields[0].DisplayName);
//      DBGrid.Fields[1].Tag := 15 + Canvas.TextWidth
//        (DBGrid.Fields[1].DisplayName);
//      DBGrid.Fields[2].Tag := Canvas.TextWidth(DBGrid.Fields[2].DisplayName);
//      DBGrid.Fields[3].Tag := 10 + Canvas.TextWidth
//        (DBGrid.Fields[3].DisplayName);
//      DBGrid.Fields[4].Tag := 120 + Canvas.TextWidth
//        (DBGrid.Fields[4].DisplayName);
//
//      // Chamar resizer
//      UnitFuncoes.AutoSizeDBGrid(DBGrid);
//
//      DBGrid.DataSource.DataSet.Last;
//
//      // Quantidade de registros
//      LbRegistros.Caption := IntToStr(DBGrid.DataSource.DataSet.RecordCount) +
//        ' Registros';
//
//      // Dar foco na primeira linha
//      DBGrid.DataSource.DataSet.First;
//      DBGrid.SelectedField := DBGrid.Columns[0].Field;
//      DBGrid.SetFocus;
//    end;
  Except
    On E: Exception do
    begin
      ShowMessage(E.ClassName + ' Error raised on ' + E.Message);
    end;
  end;
end;

procedure TFormBuscarOp.ConsultarTodosDB;
var
  I: Integer;
begin
  try
//    with Unt_DM.dm.FdQuery do
//    begin
//      DsBuscarOp.Enabled := True;
//      close;
//      SQL.Clear;
//
//      SQL.Add('SELECT id_operador, status_operador, nome_operador, ' +
//        'nome_cidade || ' + QuotedStr('-') + ' || uf, ' +
//        'email_operador FROM operadores op inner join cidade ci on ' +
//        'op.id_cidade_operador = ci.id_cidade join estado es on ' +
//        'ci.id_estado = es.id_estado ORDER BY op.id_operador');
//
//      Open();
//
//      // Editar e alimentar o DBGrid
//      FieldByName('id_operador').DisplayLabel := 'Código';
//      FieldByName('status_operador').DisplayLabel := 'Status';
//      FieldByName('nome_operador').DisplayLabel := 'Nome';
//      FieldByName('Concatenation').DisplayLabel := 'Cidade';
//      FieldByName('email_operador').DisplayLabel := 'E-mail';
//
//      if (DsBuscarOp.DataSet.IsEmpty) then
//      begin
//        EdtBuscar.SetFocus;
//        EdtBuscar.SelectAll;
//        Exit;
//      end;
//
//      DBGrid.DataSource := DsBuscarOp;
//
//      { Essa é a forma de modificar a informação da cédula. No DB está com status: 0, 1 ou 2.
//        Nesse caso, criar duas funções: OnGetText e OnSetText no FDQuery (Primeiro fazer sql e depois nos
//        Fields listados terá essas funcoes. Lembrar de deletar fields e query depois). Quando isso estiver pronto,
//        Fazer o código abaixo: }
//      DBGrid.DataSource.DataSet.FieldByName('status_operador').OnGetText :=
//        Unt_DM.dm.StatusOperadorGetText;
//
//      // Definir tamanho min
//      DBGrid.Fields[0].Tag := 10 + Canvas.TextWidth
//        (DBGrid.Fields[0].DisplayName);
//      DBGrid.Fields[1].Tag := 15 + Canvas.TextWidth
//        (DBGrid.Fields[1].DisplayName);
//      DBGrid.Fields[2].Tag := Canvas.TextWidth(DBGrid.Fields[2].DisplayName);
//      DBGrid.Fields[3].Tag := 10 + Canvas.TextWidth
//        (DBGrid.Fields[3].DisplayName);
//      DBGrid.Fields[4].Tag := 120 + Canvas.TextWidth
//        (DBGrid.Fields[4].DisplayName);
//
//      // Chamar resizer
//      UnitFuncoes.AutoSizeDBGrid(DBGrid);
//
//      DBGrid.DataSource.DataSet.Last;
//
//      // Quantidade de registros
//      LbRegistros.Caption := IntToStr(DBGrid.DataSource.DataSet.RecordCount) +
//        ' Registros';
//
//      // Dar foco na primeira linha
//      DBGrid.DataSource.DataSet.First;
//      DBGrid.SelectedField := DBGrid.Columns[0].Field;
//      DBGrid.SetFocus;
//    end;
  Except
    On E: Exception do
    begin
      ShowMessage(E.ClassName + ' Error raised on ' + E.Message);
    end;
  end;
end;

procedure TFormBuscarOp.DBGridDblClick(Sender: TObject);
begin
  RowSelecionada(TriggerFrm);
end;

procedure TFormBuscarOp.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//  if Unt_DM.dm.FdQuery.FieldByName('status_operador').AsInteger = 1 then
//  begin
//    DBGrid.Canvas.Brush.Color := clRed;
//    DBGrid.Canvas.Font.Color := clWhite;
//    DBGrid.DefaultDrawDataCell(Rect, DBGrid.Columns[DataCol].Field, State);
//  end;
end;

procedure TFormBuscarOp.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    RowSelecionada(TriggerFrm);
  end;
end;

procedure TFormBuscarOp.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
var
  I: Integer;
  HasNum: Boolean;
begin
  if (Key = #13) then
  begin
    Key := #0;
    PrepararBusca;
  end;

  if (Key = #27) then
  begin
    Key := #0;
    close;
  end;

  if Length(Trim(EdtBuscar.Text)) = 0 then
  begin
//    if RbNome.Checked then
//    begin
//      if (Key in ['0' .. '9']) then
//      begin
//        RbCod.Checked := True;
//      end;
//    end;

    if (Key in ['0' .. '9']) then
      RbCod.Checked := True
    else
      RbNome.Checked := True;
  end;
  VerifCBoxPesquisa;
end;

procedure TFormBuscarOp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ConfigFechar;
  LimpaCampos(Self);
end;

procedure TFormBuscarOp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    if TriggerConsulta then
    begin
      UnitPDV.FormPDV.EdtCodOperador.Clear;
      UnitPDV.FormPDV.EdtNomeOperador.Clear;
    end;
    close;
  end;
end;

procedure TFormBuscarOp.FormShow(Sender: TObject);
begin
  AdicionarIcones;
  ConfigAbrir;

  if TriggerConsulta then
  begin
    VerifCBoxPesquisa;
    ConsultarDB;
  end;
end;

procedure TFormBuscarOp.PrepararBusca;
begin
  if not(EdtBuscar.Text = '') then
  begin
    ConsultarDB;
  end
  else
  begin
    ConsultarTodosDB;
  end;
end;

procedure TFormBuscarOp.RowSelecionada(pFrm: TForm);
var
  cod: string;
  I: Integer;
begin
  for I := 0 to DBGrid.Columns.Count - 1 do
  begin
    if LowerCase(DBGrid.Columns[I].FieldName) = 'id_operador' then
    begin
      try
        cod := DBGrid.Columns[I].Field.Value;
      Except
        cod := '';
      end;
    end;
  end;

  if pFrm.ClassName = UnitCadOper.FormCadOper.ClassName then
  begin
    with UnitCadOper.FormCadOper do
    begin
      EdtCod.Text := cod;
      ConfigIni(1);
      BuscarDB;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end else if pFrm.ClassName = UnitPDV.FormPDV.ClassName then
  begin
    with UnitPDV.FormPDV do
    begin
      EdtCodOperador.Text := cod;
      EdtCodOperador.SelectAll;
      EdtCodOperador.SetFocus;
    end;
  end;
  close;
end;

procedure TFormBuscarOp.SbBuscarClick(Sender: TObject);
begin
  PrepararBusca;
end;

procedure TFormBuscarOp.SbListarClick(Sender: TObject);
begin
  ConsultarTodosDB;
end;

procedure TFormBuscarOp.ShowModal(pFrm: TForm; pSearch: String);
begin
  TriggerConsulta := True;
  TriggerFrm := pFrm;

  EdtBuscar.text := pSearch;

  inherited ShowModal;
end;

procedure TFormBuscarOp.VerifCBoxPesquisa;
var
  I: Integer;
  isNum: Boolean;
begin
  if Length(Trim(EdtBuscar.Text)) > 0 then
  begin
    for I := 1 to Length(Trim(EdtBuscar.Text)) do
      if (EdtBuscar.Text[I] in ['0' .. '9']) then
        isNum := True
      else
        isNum := False;
    if isNum then
      RbCod.Checked := True
    else
      RbNome.Checked := True;
    exit;
  end;

  if (Length(Trim(EdtBuscar.Text)) > 3) then
    RbNome.Checked := True;
end;

procedure TFormBuscarOp.ShowModal(pFrm: TForm);
begin
  TriggerConsulta := False;
  TriggerFrm := pFrm;
  inherited ShowModal;
end;

end.
