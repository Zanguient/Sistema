unit UnitBuscaProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Unt_DM, UnitFuncoes, Vcl.Mask;

type
  TFormBuscaProd = class(TForm)
    DBGridProd: TDBGrid;
    GbRbuttons: TGroupBox;
    RbCod: TRadioButton;
    RbProduto: TRadioButton;
    RbCodBarra: TRadioButton;
    GbData: TGroupBox;
    DsGridProd: TDataSource;
    Panel2: TPanel;
    EdtBuscar: TEdit;
    SbBuscar: TSpeedButton;
    Panel3: TPanel;
    Label6: TLabel;
    Panel4: TPanel;
    Button2: TButton;
    Button3: TButton;
    LbNomeCPF: TLabel;
    edtProduto: TEdit;
    edtEstq: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    LbRegistros: TLabel;
    edtICMS: TEdit;
    Label5: TLabel;
    edtST: TEdit;
    Label1: TLabel;
    edtCodBarra: TEdit;
    Label3: TLabel;
    edtStatus: TEdit;
    Label8: TLabel;
    CbInativos: TCheckBox;
    ComboBox1: TComboBox;
    Label9: TLabel;
    //cEdtVlrVenda: TCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure SbBuscarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DsGridProdDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure DBGridProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridProdDblClick(Sender: TObject);
    procedure DBGridProdDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RbCodClick(Sender: TObject);
    procedure RbProdutoClick(Sender: TObject);
    procedure RbCodBarraClick(Sender: TObject);
    procedure CbInativosClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    TriggerFrm: TForm;
    TriggerConsulta: Boolean;
    procedure BuscarDB;
    procedure ConfigDBGrid;
    procedure FillExtrInfo;
    procedure ConfigIni;
    procedure CloseSQL;
    procedure LimpaCampos;
    procedure RowSelecionada(pFrm: TForm);
    procedure AddIcons;
    procedure FocusEdtBuscar;
    procedure VerifCBoxPesquisa;
  public
    { Public declarations }
    procedure ShowModal(pFrm: TForm); overload;
    procedure ShowModal(pFrm: TForm; pSearch: String); overload;
  end;

var
  FormBuscaProd: TFormBuscaProd;

implementation

{$R *.dfm}

Uses
  Unt_FrmCadProduto, UnitPDV;

{ TForm3 }

procedure TFormBuscaProd.AddIcons;
begin
//  SbBuscar.Glyph := nil;
//  Unt_DmImagens.udmComp.ImageList1.GetBitmap(2, SbBuscar.Glyph);
//  SbBuscar.Transparent := True;
//  SbBuscar.Flat := True;
end;

procedure TFormBuscaProd.BuscarDB;
begin
  // Buscar cadastrados de produtos no DB;
//  with Unt_DM.dm.FdQuery do
//  begin
//    Close;
//    SQL.Clear;
//
//    SQL.Add('select id_produto, nome_produto, cast(estq_produto as float), ' +
//      'cast(vlrvenda_produto as decimal(5,2)), codbar_produto, bcicms_produto, '
//      + 'aliqicms_produto, ref_produto, status_produto, tipo_produto from produtos ');
//
//    // Filtrar por produtos específicos
//    if Length(Trim(EdtBuscar.Text)) > 0 then
//    begin
//      if RbCod.Checked then
//        SQL.Add('where id_produto = ' + EdtBuscar.Text + ' ')
//      else if RbProduto.Checked then
//        SQL.Add('where nome_produto like ' + QuotedStr('%' + EdtBuscar.Text +
//          '%') + ' ')
//      else if RbCodBarra.Checked then
//        SQL.Add('where codbar_produto like ' + QuotedStr('%' + EdtBuscar.Text +
//          '%') + ' ');
//
//      if CbInativos.Checked then
//        SQL.Add('and status_produto = 1');
//    end
//    else
//    begin
//      if CbInativos.Checked then
//      begin
//        SQL.Add('where status_produto = 1');
//      end;
//    end;
//
//    Open();
//
//    if DsGridProd.DataSet.IsEmpty then
//    begin
//      EdtBuscar.SetFocus;
//      EdtBuscar.SelectAll;
//      LbRegistros.Caption := '0 Registros';
//      CloseSQL;
//      exit;
//    end;
//
//    DsGridProd.Enabled := True;
//  end;
  ConfigDBGrid;
end;

procedure TFormBuscaProd.Button2Click(Sender: TObject);
begin
  RowSelecionada(TriggerFrm);
end;

procedure TFormBuscaProd.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBuscaProd.CbInativosClick(Sender: TObject);
begin
  FocusEdtBuscar;
end;

procedure TFormBuscaProd.CloseSQL;
begin
//  DsGridProd.Enabled := False;
//  Unt_DM.dm.FdQuery.SQL.Clear;
//  Unt_DM.dm.FdQuery.Close;
end;

procedure TFormBuscaProd.ConfigDBGrid;
var
  i: Integer;
begin
  for i := 4 to 9 do
    DBGridProd.Columns[i].Visible := False;

  DBGridProd.DataSource.DataSet.FieldByName('status_produto').OnGetText :=
    Unt_DM.dm.StatusProdutoGetText;

  DBGridProd.Fields[0].DisplayLabel := 'CÓDIGO';
  DBGridProd.Fields[1].DisplayLabel := 'PRODUTO';
  DBGridProd.Fields[2].DisplayLabel := 'ESTQ';
  DBGridProd.Fields[3].DisplayLabel := 'PREÇO VENDA';

  // Definir tamanho min
  DBGridProd.Fields[0].Tag := 0;
  DBGridProd.Fields[1].Tag := 0;
  DBGridProd.Fields[2].Tag := 0;
  DBGridProd.Fields[3].Tag := 0;

  UnitFuncoes.AutoSizeDBGrid(DBGridProd);

  DBGridProd.DataSource.DataSet.Last;

  LbRegistros.Caption := IntToStr(DBGridProd.DataSource.DataSet.RecordCount) +
    ' Registros';

  DBGridProd.DataSource.DataSet.First;
  DBGridProd.SelectedField := DBGridProd.Columns[0].Field;
  DBGridProd.SetFocus;
end;

procedure TFormBuscaProd.ConfigIni;
begin
  EdtBuscar.SetFocus;
  RbProduto.Checked := True;
end;

procedure TFormBuscaProd.DBGridProdDblClick(Sender: TObject);
begin
  RowSelecionada(TriggerFrm);
end;

procedure TFormBuscaProd.DBGridProdDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not(gdSelected in State) then
  begin
    if DBGridProd.Columns[8].Field.AsString = '1' then
    begin
      DBGridProd.Canvas.Font.Color := clRed;
      DBGridProd.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  end;
end;

procedure TFormBuscaProd.DBGridProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    RowSelecionada(TriggerFrm);
  end;
end;

procedure TFormBuscaProd.DsGridProdDataChange(Sender: TObject; Field: TField);
begin
  if ((DsGridProd.Enabled)) then
  begin
    FillExtrInfo;
  end;
end;

procedure TFormBuscaProd.EdtBuscarKeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  if Key = #13 then
  begin
    Key := #0;
    BuscarDB;
    exit;
  end;

  if Length(Trim(EdtBuscar.Text)) = 0 then
  begin
    if (Key in ['0' .. '9']) then
    begin
      RbCod.Checked := True;
    end
    else if not(Key in ['0' .. '9']) and ((Key in ['a' .. 'z'])) then
    begin
      RbProduto.Checked := True;
    end;
  end;
  VerifCBoxPesquisa;
end;

procedure TFormBuscaProd.FillExtrInfo;
begin
  edtProduto.Text := DBGridProd.Fields[1].AsString;
  edtEstq.Text := DBGridProd.Fields[2].AsString;
  //cEdtVlrVenda.Text := DBGridProd.Fields[3].AsString;
  edtCodBarra.Text := DBGridProd.Fields[4].AsString;
  // edtStatus.Text := DBGridProd.Fields[8].AsString;

  if DBGridProd.Fields[8].AsString = '0' then
  begin
    edtStatus.Text := ' ATIVO';
    edtStatus.Font.Color := clBlack;
    edtStatus.Font.Style := [];
  end
  else if DBGridProd.Fields[8].AsString = '1' then
  begin
    edtStatus.Text := ' INATIVO';
    edtStatus.Font.Color := clRed;
    edtStatus.Font.Style := [fsBold];
  end;

  // edtICMS.Text := DBGridProd.Fields[5].AsString;
  // edtST.Text := DBGridProd.Fields[5].AsString;
end;

procedure TFormBuscaProd.FocusEdtBuscar;
begin
  EdtBuscar.SetFocus;
  EdtBuscar.SelStart := Length(Trim(EdtBuscar.Text));
end;

procedure TFormBuscaProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LimpaCampos;
  CloseSQL;
end;

procedure TFormBuscaProd.FormCreate(Sender: TObject);
begin
  FormBuscaProd.Top := (Screen.DesktopHeight - FormBuscaProd.Height) DIV 2;
  FormBuscaProd.Left := (Screen.DesktopWidth - FormBuscaProd.Width) DIV 2;
  AddIcons;
end;

procedure TFormBuscaProd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Key := VK_OEM_CLEAR;
    if TriggerConsulta then
    begin
      with UnitPDV.FormPDV do
      begin
        edtProduto.Clear;
        EdtProdExib.Clear;
        //cEdtEstq.Clear;
        //cEdtQnt.Clear;
        //cEdtVlr.Clear;
      end;
    end;
    Close;
  end;
end;

procedure TFormBuscaProd.FormShow(Sender: TObject);
begin
  ConfigIni;

  if TriggerConsulta then
  begin
    RbCod.Checked := True;
    VerifCBoxPesquisa;
    BuscarDB;
  end;
end;

procedure TFormBuscaProd.LimpaCampos;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) then
      (Components[i] as TEdit).Text := ''
    {else if (Components[i] is TCurrencyEdit) then
      (Components[i] as TCurrencyEdit).Text := ''}
    else if (Components[i] is TCheckBox) then
      (Components[i] as TCheckBox).Checked := False;
  end;
  LbRegistros.Caption := '';
end;

procedure TFormBuscaProd.RbCodBarraClick(Sender: TObject);
begin
  FocusEdtBuscar;
end;

procedure TFormBuscaProd.RbCodClick(Sender: TObject);
begin
  FocusEdtBuscar;
end;

procedure TFormBuscaProd.RbProdutoClick(Sender: TObject);
begin
  FocusEdtBuscar;
end;

procedure TFormBuscaProd.RowSelecionada(pFrm: TForm);
var
  cod: string;
  i: Integer;
begin
  for i := 0 to DBGridProd.Columns.Count - 1 do
  begin
    if DBGridProd.Columns[i].FieldName = 'ID_PRODUTO' then
    begin
      try
        cod := DBGridProd.Columns[i].Field.Value;
      Except
        cod := '';
      end;
    end;
  end;

  CloseSQL;
  LimpaCampos;

  if pFrm.ClassName = Unt_FrmCadProduto.FormCadProduto.ClassName then
  begin
    with Unt_FrmCadProduto.FormCadProduto do
    begin
      EdtCod.Text := cod;
      Perform(WM_NEXTDLGCTL, 0, 0);
      BuscarDB;
    end;
  end
  else if pFrm.ClassName = UnitPDV.FormPDV.ClassName then
  begin
    with UnitPDV.FormPDV do
    begin
      edtProduto.Text := cod;

      if not TriggerConsulta then
      begin
        edtProduto.SelectAll;
        edtProduto.SetFocus;
      end;

      {if UnitPDV.FormPDV.cEdtQnt.Text = '' then
      UnitPDV.FormPDV.cEdtQnt.Text := '1';}
    end;
  end;

  Close;
end;

procedure TFormBuscaProd.SbBuscarClick(Sender: TObject);
begin
  BuscarDB;
end;

procedure TFormBuscaProd.ShowModal(pFrm: TForm; pSearch: String);
begin
  TriggerConsulta := True;
  TriggerFrm := pFrm;

  EdtBuscar.Text := pSearch;

  inherited ShowModal;
end;

procedure TFormBuscaProd.VerifCBoxPesquisa;
var
  i: Integer;
begin
  if Length(Trim(EdtBuscar.Text)) > 0 then
  begin
    if RbCod.Checked then
    begin
      for i := 1 to Length(Trim(EdtBuscar.Text)) do
      begin
        if not(EdtBuscar.Text[i] in ['0' .. '9']) then
        begin
          RbProduto.Checked := True;
        end;
      end;
    end;
  end;

  if (Length(Trim(EdtBuscar.Text)) > 6) then
  begin
    if RbCod.Checked then
    begin
      RbProduto.Checked := True;
    end;
  end;

  if (Length(Trim(EdtBuscar.Text)) > 12) then
  begin
    if RbProduto.Checked then
    begin
      for i := 1 to Length(Trim(EdtBuscar.Text)) do
        if not(EdtBuscar.Text[i] in ['0' .. '9']) then
          exit;
      RbCodBarra.Checked := True;
    end;
  end;
end;

procedure TFormBuscaProd.ShowModal(pFrm: TForm);
begin
  TriggerFrm := pFrm;
  TriggerConsulta := False;
  inherited ShowModal;
end;

end.
