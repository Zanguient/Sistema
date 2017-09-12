unit UnitListCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Unt_FrmBuscaCliente;

type
  TFormListCidades = class(TForm)
    DbGridListCid: TDBGrid;
    BtnImprimir: TButton;
    BtnRelatorios: TButton;
    BtnAtualizar: TButton;
    BtnLimpar: TButton;
    GroupBox1: TGroupBox;
    EdtCodCid: TEdit;
    SbBuscarCid: TSpeedButton;
    EdtUf: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    PMenuListCid: TPopupMenu;
    DsListCid: TDataSource;
    Label6: TLabel;
    LbRegistros: TLabel;
    BtnCancelar: TButton;
    AbrirCadastro1: TMenuItem;
    SelecionarLinha1: TMenuItem;
    SelecionarTodos1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnLimparClick(Sender: TObject);
    procedure EdtCodCidKeyPress(Sender: TObject; var Key: Char);
    procedure SbBuscarCidClick(Sender: TObject);
    procedure EdtCodCidKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtUfKeyPress(Sender: TObject; var Key: Char);
    procedure DbGridListCidKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbGridListCidDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelarClick(Sender: TObject);
    procedure AbrirCadastro1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AddImgSb;
    procedure ConsultarDB;
    procedure LimparCampos;
    procedure abrirFormBuscador;
    procedure RowSelecionada(Indx: Integer);
    function SelectCodIdRow: String;
  public
    { Public declarations }
  end;

var
  FormListCidades: TFormListCidades;
  IndxCounter: Integer;

implementation

{$R *.dfm}

Uses Unt_DM, UnitBuscarCid, Unt_FrmCadCidade;

procedure TFormListCidades.AbrirCadastro1Click(Sender: TObject);
begin
//    Unt_FrmCadCidade.indxAddEdit := 1;
//    FormCadCidade.EdtCod.Text := SelectCodIdRow;
//    FormCadCidade.ShowModal;
end;

procedure TFormListCidades.abrirFormBuscador;
begin
  { UnitBuscador.FormBuscador.Caption := 'Buscar Cidade';

    UnitBuscador.TipoBusca := 1;
    UnitBuscador.espCid := 3;

    UnitBuscador.FormBuscador.RbCliente.Visible := False;
    UnitBuscador.FormBuscador.RbCidade.Checked := True;

    UnitBuscador.FormBuscador.GbStatement.Visible := True;
    UnitBuscador.FormBuscador.GbData.Visible := False;

    FormBuscador.ShowModal; }

  // --> TESTAR NOVO FORM BUSCADOR!!  <--
  UnitBuscarCid.IndxCidade := 3;
  FormBuscarCid.ShowModal;
end;

procedure TFormListCidades.AddImgSb;
begin
//  SbBuscarCid.Glyph := nil;
//  Unt_DmImagens.udmComp.ImageList1.GetBitmap(2, SbBuscarCid.Glyph);
//  SbBuscarCid.Transparent := True;
//  SbBuscarCid.Flat := True;
end;

procedure TFormListCidades.BtnAtualizarClick(Sender: TObject);
begin
  ConsultarDB;
end;

procedure TFormListCidades.BtnLimparClick(Sender: TObject);
begin
  LimparCampos;
end;

procedure TFormListCidades.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormListCidades.ConsultarDB;
var
  i: Integer;
  hasComma, hasDot, preWhere: Boolean;
  Source, TargetIni, TargetFim: String;
begin
  preWhere := False;

  try
//    with Unt_DM.dm.FDQuery_List do
//    begin
//      DsListCid.Enabled := True;
//      Close;
//      SQL.Clear;
//
//      SQL.Add('SELECT ci.id_cidade, ' + 'ci.nome_cidade || ' + QuotedStr('-') +
//        ' || es.uf, ci.cep ' + 'FROM cidade ci inner join estado es on ' +
//        'ci.id_estado = es.id_estado ');
//
//
//      if Length(Trim(EdtCodCid.Text)) > 0 then
//      begin
//        hasComma := False;
//        hasDot := False;
//        for i := 0 to Length(Trim(EdtCodCid.Text)) do
//        begin
//          if (Pos(',', EdtCodCid.Text) <> 0) then
//          begin
//            hasComma := True;
//          end
//          else if (Pos('..', EdtCodCid.Text) <> 0) then
//          begin
//            hasDot := True;
//          end;
//        end;
//
//        if hasComma then
//        begin
//          if preWhere then
//          begin
//            SQL.Add(' AND ci.id_cidade IN (' + EdtCodCid.Text + ') ');
//          end
//          else
//          begin
//            SQL.Add('WHERE ci.id_cidade IN (' + EdtCodCid.Text + ') ');
//            preWhere := True;
//          end;
//        end
//        else if (hasComma = False) and (hasDot) then
//        begin
//          // Tratar String;
//          Source := EdtCodCid.Text;
//          for i := 0 to Length(Trim(Source)) do
//          begin
//            if Source[i] = '.' then
//            begin
//              if Source[i + 1] = '.' then
//              begin
//                TargetIni := Copy(Source, 1, i - 1);
//                TargetFim := Copy(Source, i + 2, Length(Source));
//
//                if preWhere then
//                begin
//                  SQL.Add(' AND ci.id_cidade BETWEEN ' + TargetIni + ' AND ' +
//                    TargetFim);
//                  ShowMessage('Prewhere = true');
//                end
//                else
//                begin
//                  SQL.Add('WHERE ci.id_cidade BETWEEN ' + TargetIni + ' AND ' +
//                    TargetFim);
//                  preWhere := True;
//                end;
//                break;
//              end;
//            end;
//          end;
//        end
//        else
//        begin
//          if preWhere then
//          begin
//            SQL.Add(' AND ci.id_cidade = ' + EdtCodCid.Text + ' ');
//          end
//          else
//          begin
//            SQL.Add('WHERE ci.id_cidade = ' + EdtCodCid.Text + ' ');
//            preWhere := True;
//          end;
//        end;
//      end;
//
//      if (Length(Trim(EdtUf.Text)) >= 1) then
//      begin
//        if preWhere then
//        begin
//          SQL.Add(' AND es.uf = ' + QuotedStr(Trim(UpperCase(EdtUf.Text))) + ' ');
//        end
//        else
//        begin
//          SQL.Add('WHERE es.uf = ' + QuotedStr(Trim(UpperCase(EdtUf.Text))) + ' ');
//          preWhere := True;
//        end;
//      end;
//
//      SQL.Add('ORDER BY id_cidade');
//
//      Open();
//
//      // Editar e alimentar o DBGrid
//      FieldByName('id_cidade').DisplayLabel := 'Código';
//      FieldByName('Concatenation').DisplayLabel := 'Cidade';
//      FieldByName('cep').DisplayLabel := 'CEP';
//
//      DbGridListCid.DataSource := DsListCid;
//
//      // Dar foco na primeira linha
//      DbGridListCid.DataSource.DataSet.First;
//      DbGridListCid.SelectedField := DbGridListCid.Columns[0].Field;
//      DbGridListCid.SetFocus;
//
//      // Quantidade de registros
//      LbRegistros.Caption :=
//        IntToStr(DbGridListCid.DataSource.DataSet.RecordCount) + ' Registros';
//    end;

  Except
    On E: Exception do
    begin
      ShowMessage(E.ClassName + ' Error raised on ' + E.Message);
    end;
  end;
end;

procedure TFormListCidades.DbGridListCidDblClick(Sender: TObject);
begin
  RowSelecionada(1);
end;

procedure TFormListCidades.DbGridListCidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_SPACE then
  begin
    RowSelecionada(0);
  end;
end;

procedure TFormListCidades.EdtCodCidKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormListCidades.Perform(WM_NEXTDLGCTL, 0, 0);
  end;

  if not(Key in [#8, '0' .. '9']) then
  begin
    // Discard the key
    Key := #0;
  end;
end;

procedure TFormListCidades.EdtCodCidKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
    abrirFormBuscador;
  end;
end;

procedure TFormListCidades.EdtUfKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    BtnAtualizar.SetFocus;
  end;
end;

procedure TFormListCidades.FormActivate(Sender: TObject);
begin
  FormListCidades.Top := (Screen.DesktopHeight - FormListCidades.Height) DIV 2;
  FormListCidades.Left := (Screen.DesktopWidth - FormListCidades.Width) DIV 2;

  AddImgSb;
  IndxCounter := 0;
  EdtCodCid.SetFocus;
end;

procedure TFormListCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LimparCampos;
end;

procedure TFormListCidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  strFocus : String;
begin
  if Key = VK_F5 then
  begin
    strFocus := ActiveControl.Name;
    ConsultarDB;

    if EdtCodCid.Name = strFocus then
    begin
      EdtCodCid.SetFocus;
    end else if EdtUf.Name = strFocus then
    begin
      EdtUf.SetFocus;
    end;
  end;
end;

procedure TFormListCidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
  begin
    Key := #0;

    if (EdtCodCid.Text = '') or (EdtUf.Text = '') then
    begin
      if DbGridListCid.DataSource.DataSet.IsEmpty then
      begin
        Close;
        Exit;
      end
    end;

    if IndxCounter = 0 then
    begin
      LimparCampos;
      IndxCounter := IndxCounter + 1;
    end
    else if IndxCounter = 1 then
    begin
      IndxCounter := 0;
      Close;
    end;
  end;
end;

procedure TFormListCidades.LimparCampos;
begin
  EdtCodCid.Text := '';
  EdtUf.Text := '';
  LbRegistros.Caption := '';
  EdtCodCid.SetFocus;
//  Unt_DM.dm.FDQuery_List.Close;
end;

procedure TFormListCidades.RowSelecionada(Indx: Integer);
var
  cod: String;
begin
  cod := SelectCodIdRow;

  if Indx = 0 then
  begin
    if Length(Trim(EdtCodCid.Text)) = 0 then
    begin
      EdtCodCid.Text := EdtCodCid.Text + cod;
    end
    else
    begin
      EdtCodCid.Text := EdtCodCid.Text + ',' + cod;
    end;
  end else if Indx = 1 then
  begin
//  Unt_FrmCadCidade.indxAddEdit := 1;
//  Unt_FrmCadCidade.FormCadCidade.EdtCod.Text := cod;
//  FormCadCidade.ShowModal;
  end;
end;

procedure TFormListCidades.SbBuscarCidClick(Sender: TObject);
begin
  abrirFormBuscador;
end;

function TFormListCidades.SelectCodIdRow: String;
var
  i: Integer;
begin
  for i := 0 to DbGridListCid.Columns.Count - 1 do
  begin
    if DbGridListCid.Columns[i].FieldName = 'ID_CIDADE' then
    begin
      try
        Result := DbGridListCid.Columns[i].Field.Value;
      Except
        Result := '';
      end;
    end;
  end;
end;

end.
