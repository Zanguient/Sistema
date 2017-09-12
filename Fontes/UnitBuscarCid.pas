unit UnitBuscarCid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Unt_FrmCadCliente, Unt_FrmCadCidade, UnitListCidades, Unt_FrmListaClientes;

type
  TFormBuscarCid = class(TForm)
    SbBuscar: TSpeedButton;
    SbListar: TSpeedButton;
    Label6: TLabel;
    LbRegistros: TLabel;
    DBGrid: TDBGrid;
    EdtBuscar: TEdit;
    GbRbuttons: TGroupBox;
    RbCod: TRadioButton;
    RbNome: TRadioButton;
    RbUf: TRadioButton;
    BtnSelecionar: TButton;
    BtnCancelar: TButton;
    DsBuscarCid: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure SbBuscarClick(Sender: TObject);
    procedure SbListarClick(Sender: TObject);
    procedure EdtBuscarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtBuscarExit(Sender: TObject);
  private
    { Private declarations }
    procedure AdicionarIcones;
    procedure ConsultarDB;
    procedure ConsultarTodosDB;
    procedure PrepararBusca;
    procedure LimparCampos;
    procedure RowSelecionada;
  public
    { Public declarations }
  end;

var
  FormBuscarCid: TFormBuscarCid;
  CodEdtFocado: Boolean;
  IndxCidade: Integer;

implementation

{$R *.dfm}

Uses Unt_DM, UnitCadOper;

procedure TFormBuscarCid.AdicionarIcones;
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

procedure TFormBuscarCid.BtnCancelarClick(Sender: TObject);
begin
//  if CodEdtFocado = False then
//  begin
//    UnitCadCliente.FormCadastroCliente.EdtCod.Enabled := False;
//  end;

  LimparCampos;
  Close;
end;

procedure TFormBuscarCid.BtnSelecionarClick(Sender: TObject);
begin
  RowSelecionada;
end;

procedure TFormBuscarCid.ConsultarDB;
begin
  try
//    with Unt_DM.dm.FdQuery do
//    begin
//      DsBuscarCid.Enabled := True;
//      Close;
//      SQL.Clear;
//
//      SQL.Add('SELECT id_cidade, ' +
//      'nome_cidade || ' + QuotedStr('-') + ' || uf, ' +
//      'cep FROM operadores op inner join cidade ci on ' +
//      'op.id_cidade_operador = ci.id_cidade join estado es on ' +
//      'ci.id_estado = es.id_estado WHERE ');
//
//      if RbCod.Checked then // Pesquisar pelo Cod
//      begin
//        SQL.Add('op.id_operador = :p1 ORDER BY op.id_operador');
//        ParamByName('p1').Value := Trim(EdtBuscar.Text);
//      end
//      else if RbUf.Checked then // Pesquisar pela UF
//      begin
//        SQL.Add('es.uf = :p1 ORDER BY ci.id_cidade');
//        ParamByName('p1').Value := UpperCase(Trim(EdtBuscar.Text));
//      end
//      else if RbNome.Checked then // Pesquisar pelo Nome
//      begin
//        SQL.Add('lower(nome_cidade) LIKE ' +
//          LowerCase(QuotedStr('%' + EdtBuscar.Text + '%')) +
//          ' ORDER BY ci.id_cidade');
//      end;
//
//      Open();
//
//      // Editar e alimentar o DBGrid
//      FieldByName('id_cidade').DisplayLabel := 'Código';
//      FieldByName('Concatenation').DisplayLabel := 'Cidade';
//      FieldByName('cep').DisplayLabel := 'CEP';
//
//      if DsBuscarCid.DataSet.IsEmpty then
//      begin
//        EdtBuscar.SetFocus;
//        EdtBuscar.SelectAll;
//        Exit;
//      end;
//
//      DBGrid.DataSource := DsBuscarCid;
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

procedure TFormBuscarCid.ConsultarTodosDB;
begin
  try
    EdtBuscar.Text := '';

//    with Unt_DM.dm.FdQuery do
//    begin
//      DsBuscarCid.Enabled := True;
//      Close;
//      SQL.Clear;
//
////      SQL.Add('SELECT ci.id_cidade, ci.nome_cidade || ' + QuotedStr('-') +
////        ' || es.uf, ci.cep ' + 'FROM cidade ci inner join estado es on ' +
////        'ci.id_estado = es.id_estado ORDER BY ci.id_cidade');
//
//      SQL.Add('SELECT ci.id_cidade, ci.nome_cidade, es.uf, ci.cep ' +
//        'FROM cidade ci inner join estado es on ' +
//        'ci.id_estado = es.id_estado ORDER BY ci.id_cidade');
//
//      Open();
//
//      // Editar e alimentar o DBGrid
//      FieldByName('id_cidade').DisplayLabel := 'Código';
////      FieldByName('Concatenation').DisplayLabel := 'Cidade';
//      FieldByName('nome_cidade').DisplayLabel := 'Cidade';
//      FieldByName('cep').DisplayLabel := 'CEP';
//      FieldByName('uf').DisplayLabel := 'UF';
//
//      DBGrid.DataSource := DsBuscarCid;
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

procedure TFormBuscarCid.DBGridDblClick(Sender: TObject);
begin
  RowSelecionada;
end;

procedure TFormBuscarCid.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    RowSelecionada;
  end;
end;

procedure TFormBuscarCid.EdtBuscarClick(Sender: TObject);
begin
//  Unt_DM.dm.FdQuery.Close;
  EdtBuscar.Text := '';
  LbRegistros.Caption := '';
end;

procedure TFormBuscarCid.EdtBuscarExit(Sender: TObject);
begin
  if ((RbUf.Checked) and (Length(EdtBuscar.Text) = 2)) then
    EdtBuscar.Text := Trim(UpperCase(EdtBuscar.Text));
end;

procedure TFormBuscarCid.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
var
  i: integer;
begin
  if (Key = #13) then
  begin
    Key := #0;
    PrepararBusca;
  end;

  if Length(Trim(EdtBuscar.Text)) = 0 then
  begin
    if not RbUf.Checked then
    begin
      if not(Key in ['0' .. '9']) then
      begin
        RbNome.Checked := True;
      end;
    end;

    if (Key in ['0' .. '9']) then
    begin
      RbCod.Checked := True;
    end;
  end;

  if Length(Trim(EdtBuscar.Text)) > 0 then
  begin
    if RbCod.Checked then
    begin
      for i := 1 to Length(Trim(EdtBuscar.Text)) do
      begin
        if not (EdtBuscar.Text[i] in ['0' .. '9']) then
        begin
          RbNome.Checked := True;
        end;
      end;
    end;
  end;

  if (Length(Trim(EdtBuscar.Text)) > 6) then
  begin
    if RbCod.Checked then
    begin
      RbNome.Checked := True;
    end;
  end;
end;

procedure TFormBuscarCid.FormActivate(Sender: TObject);
begin
  FormBuscarCid.Top := (Screen.DesktopHeight - FormBuscarCid.Height) DIV 2;
  FormBuscarCid.Left := (Screen.DesktopWidth - FormBuscarCid.Width) DIV 2;

  AdicionarIcones;
  EdtBuscar.SetFocus;
end;

procedure TFormBuscarCid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LimparCampos;
end;

procedure TFormBuscarCid.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
  begin
    Key := #0;
//    if CodEdtFocado = False then
//    begin
//      UnitCadCliente.FormCadastroCliente.EdtCod.Enabled := False;
//    end;
    Close;
  end;
end;

procedure TFormBuscarCid.LimparCampos;
begin
//  Unt_DM.dm.FdQuery.Close;
  EdtBuscar.Text := '';
  LbRegistros.Caption := '';
end;

procedure TFormBuscarCid.PrepararBusca;
begin
  if not (EdtBuscar.Text = '') then
  begin
    ConsultarDB;
  end
  else
  begin
    ConsultarTodosDB;
  end;
end;

procedure TFormBuscarCid.RowSelecionada;
var
  cod: string;
  i: Integer;
begin
//  for i := 0 to DBGrid.Columns.Count - 1 do
//  begin
//    if DBGrid.Columns[i].FieldName = 'ID_CIDADE' then
//    begin
//      try
//        cod := DBGrid.Columns[i].Field.Value;
//      Except
//        cod := '';
//      end;
//    end;
//  end;
//
//  // Preciso saber onde devo colocar o cód
//  // IndxCidade = 0 -> FormCadCliente
//  // IndxCidade = 1 -> FormCadCidade
//  // IndxCidade = 2 -> FormListClientes
//  // IndxCidade = 3 -> FormListCidades
//  // IndxCidade = 4 -> FormCadOperador
//
//  if IndxCidade = 0 then
//  begin
//    //UnitCadCliente.FormCadastroCliente.EdtCodCidade.Text := cod;
////    UnitCadCliente.FormCadastroCliente.EdtCodCidade.SelectAll;
////    UnitCadCliente.FormCadastroCliente.EdtCodCidade.SetFocus;
//    //UnitCadCliente.FormCadastroCliente.PrepararConsultaCid;
//    //FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
//  end
//  else if IndxCidade = 1 then
//  begin
//    //Unt_FrmCadCidade.FormCadCidade.EdtCod.Text := cod;
////    Unt_FrmCadCidade.FormCadCidade.EdtCod.SelectAll;
////    Unt_FrmCadCidade.FormCadCidade.EdtCod.SetFocus;
//    //Unt_FrmCadCidade.FormCadCidade.PrepararConsultaCid;
//  end
//  else if IndxCidade = 2 then
//  begin
//    with Unt_FrmListaClientes.FormListClientes do
//    begin
//      if Length(Trim(EdtCodCid.Text)) = 0 then
//      begin
//        EdtCodCid.Text := EdtCodCid.Text + cod;
//      end
//      else
//      begin
//        EdtCodCid.Text := EdtCodCid.Text + ',' + cod;
//      end;
//      EdtCodCid.SelectAll;
//      EdtCodCid.SetFocus;
//    end;
//  end
//  else if IndxCidade = 3 then
//  begin
//    with UnitListCidades.FormListCidades do
//    begin
//      if Length(Trim(EdtCodCid.Text)) = 0 then
//      begin
//        EdtCodCid.Text := EdtCodCid.Text + cod;
//      end
//      else
//      begin
//        EdtCodCid.Text := EdtCodCid.Text + ',' + cod;
//      end;
//      EdtCodCid.SelectAll;
//      EdtCodCid.SetFocus;
//    end;
//  end
//  else if (IndxCidade = 4) then
//  begin
//    FormCadOper.EdtCodCid.Text := cod;
//    FormCadOper.BuscarCidade;
//    FormCadOper.Perform(WM_NEXTDLGCTL, 0, 0);
//  end;
//  LimparCampos;
//  Close;
end;

procedure TFormBuscarCid.SbBuscarClick(Sender: TObject);
begin
  PrepararBusca;
end;

procedure TFormBuscarCid.SbListarClick(Sender: TObject);
begin
  ConsultarTodosDB;
end;

end.
