unit Unt_PDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, UnitBuscarOp, UnitBuscaProd, Unt_FrmBuscaCliente, Unt_FrmCadCliente, UnitCadOper,
  UnitFuncoes, Unt_DM, Vcl.Mask, Vcl.Menus, Datasnap.Provider, Datasnap.DBClient;

type
  TFrm_PDV = class(TForm)
    edtNomeCondPgmt: TEdit;
    edtCondPgmt: TEdit;
    edtNomeFrmPgmt: TEdit;
    edtCodFrmPgmt: TEdit;
    lbTxtFrmPgmt: TLabel;
    lbTxtCondPgmt: TLabel;
    LbTotal: TLabel;
    lbTxtTotal: TLabel;
    lbTxtDeletar: TLabel;
    LbSymb: TLabel;
    lbQntItens: TLabel;
    lbTxtItens: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LbSubTotal: TLabel;
    lbTxtSubtotal: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    BtnAbrirCadMenu: TMenuItem;
    btnCadFrmPgmt: TSpeedButton;
    btnGetFrmPgmt: TSpeedButton;
    btnCadCondPgmt: TSpeedButton;
    btnGetCondPgmt: TSpeedButton;
    btnDelItem: TBitBtn;
    pnlDetVendaProd: TPanel;
    pnlDetVenda: TPanel;
    Panel4: TPanel;
    pnlPgmt: TPanel;
    pnlFrmPgmt: TPanel;
    pnlCondPgmt: TPanel;
    PnSTotal: TPanel;
    pnlCliente: TPanel;
    pnlProd: TPanel;
    pnlTrib: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel14: TPanel;
    PnOutros: TPanel;
    Panel13: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;

    MenuPDV: TPopupMenu;
    Deletartem1: TMenuItem;
    AlterarQuantidade1: TMenuItem;
    MudarPreoUnitrio1: TMenuItem;

    dbgPDV: TDBGrid;
    DsPDV: TDataSource;

    CdsPDV: TClientDataSet;
    CdsPDVCODITEM_VENDA: TIntegerField;
    CdsPDVCODPRODUTO: TIntegerField;
    CdsPDVPRODUTO: TStringField;
    CdsPDVQNT: TFloatField;
    CdsPDVVLRUNIT: TCurrencyField;
    CdsPDVSUBTOTAL: TCurrencyField;
    CdsPDVBCICMS: TFloatField;
    CdsPDVALIQICMS: TFloatField;
    CdsPDVREF: TStringField;
    CdsPDVUND: TStringField;
    CdsPDVICMS: TFloatField;
    CdsPDVBCST: TFloatField;
    CdsPDVALIQST: TFloatField;
    CdsPDVST: TFloatField;
    CdsPDVSUBTOTAL_VENDA: TAggregateField;
    CdsPDVTOTAL_VENDA: TAggregateField;
    pnlOperador: TPanel;
    lbNomeOperador: TLabel;
    btnGetOperador: TSpeedButton;
    btnCadOperador: TSpeedButton;
    EdtCodOperador: TEdit;
    EdtNomeOperador: TEdit;
    pnlDetPessoa: TPanel;
    lbNomeCliente: TLabel;
    EdtCliente: TEdit;
    edtNomeCliente: TEdit;
    btnCadCliente: TSpeedButton;
    btnGetCliente: TSpeedButton;
    pnlMyProd: TPanel;
    btnGetProduto: TSpeedButton;
    lbNomeProduto: TLabel;
    edtNomeProduto: TEdit;
    EdtProduto: TEdit;
    lbEstoque: TLabel;
    pnlDesc: TPanel;
    lbDesc: TLabel;
    EdtDesc: TEdit;
    pnlSubtotal: TPanel;
    lbSubtot: TLabel;
    Edit7: TEdit;
    pnlVlr: TPanel;
    lbVlr: TLabel;
    Edit5: TEdit;
    pnlQntd: TPanel;
    lbQntd: TLabel;
    edtQntd: TEdit;
    Shape1: TShape;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cEdtQntKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure FdQueryPDVID_PRODUTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnGetOperadorClick(Sender: TObject);

  strict private
    procedure PreencheImgBtn;
    procedure VerifOperador;
    procedure LimparLabels;
    procedure RefazAutoInc;
    procedure AddNewItem;
    procedure FecharPDV;
    procedure ConfigIni;
    procedure AttVenda;
    procedure BuscaOperadorPDV(cod: Integer);
    function HeProdutoReptdo: Boolean;
    function AutoIncItem: Integer;

  end;

var
  Frm_PDV: TFrm_PDV;

implementation

uses
  Unt_FrmPrincipal, Unt_FrmBuscaGenerica;

var
  CodOp: Integer;

{$R *.dfm}

procedure TFrm_PDV.BuscaOperadorPDV(cod: Integer);
begin
  with getNewQuery do begin
    try
      try
        SQL.Add('SELECT V.NOME_VENDEDOR, V.PERMISSAO_VENDEDOR, V.STATUS_VENDEDOR FROM VENDEDORES V');
        ExecProc;

        if RecordCount > 0 then begin
          if FieldByName('STATUS_VENDEDOR').AsString = 'A' then begin
            EdtNomeOperador.Text := FieldByName('NOME_VENDEDOR').AsString;
            EdtCodOperador.Text := CodOp.ToString;
          end else begin
            EdtNomeOperador.Clear;
            MsgAviso('Operador Está INATIVO.');
          end;
        end //abreTelaBuscaOperador(codOperador);
      except
        On E: Exception do begin
          MsgErro('Ocorreu erro ao buscar Operador. ' + #13 + 'Erro: ' + e.Message);
          Transaction.Rollback;
          Close;
        end;
      end;
    finally
      LiberarQuery(Name);
    end;
  end;
end;

procedure TFrm_PDV.AddNewItem;
var
  ID, CodProd: Integer;
  Qnte, VlrUnit, VlrSubt, BcIcms, AliqIcms: Double;
  produto, und, refProduto: String;

begin
  ID := AutoIncItem;

  if HeProdutoReptdo then
  begin
    {if PromptUser('O ítem já foi vendido. ' +
      'Deseja atualizar as quantidades do mesmo?', 'Aviso', 'Sim', 'Nao') then
    begin
      CdsPDV.Edit;
      CdsPDVQNT.AsFloat := CdsPDVQNT.AsFloat + Qnte;
      CdsPDVSUBTOTAL.AsCurrency := CdsPDVSUBTOTAL.AsFloat + VlrSubt;
      CdsPDV.Post;
      // possivelmente, tem que ajustar vlr icms
    end;}
  end
  else
  begin
    CdsPDV.Append;
    CdsPDVCODITEM_VENDA.AsInteger := ID;
    CdsPDVBCICMS.AsFloat := BcIcms;
    CdsPDVALIQICMS.AsFloat := AliqIcms;
    CdsPDVREF.AsString := refProduto;
    CdsPDVPRODUTO.AsString := produto;
    CdsPDVUND.AsString := und;
    CdsPDVICMS.AsFloat := BcIcms * AliqIcms;
    CdsPDVCODPRODUTO.AsInteger := CodProd;
    CdsPDVQNT.AsFloat := Qnte;
    CdsPDVVLRUNIT.AsFloat := VlrUnit;
    CdsPDVSUBTOTAL.AsCurrency := VlrSubt;
    CdsPDV.Post;
  end;
end;

procedure TFrm_PDV.AttVenda;
begin
  FormatSettings.ThousandSeparator := '.';
  FormatSettings.DecimalSeparator := ',';

  LbSubTotal.Caption := UnitFuncoes.FormatarBanco
    (CdsPDVSUBTOTAL_VENDA.AsString);
  LbTotal.Caption := FormatarBanco(CdsPDVTOTAL_VENDA.AsString);
  lbQntItens.Caption := IntToStr(CdsPDV.RecordCount);
end;

function TFrm_PDV.AutoIncItem: Integer;
var
  newID: Integer;
begin
  if CdsPDV.IsEmpty then
  begin
    Result := 1;
    exit;
  end;

  CdsPDV.Last;
  newID := CdsPDV.FieldByName('CODITEM').AsInteger;
  Inc(newID);
  Result := newID;
end;

procedure TFrm_PDV.btnCancelarClick(Sender: TObject);
begin
  FecharPDV;
end;

procedure TFrm_PDV.btnGetOperadorClick(Sender: TObject);
begin
  with (Frm_BuscaGen) do begin
    try
      Application.CreateForm(TFrm_BuscaGen, Frm_BuscaGen);
      Create(TBusca.Operador);
      ShowModal;

      if (ModalResult = mrOk) then begin
        ShowMessage('Ok Btn Clicked!');
      end else begin
        ShowMessage('Cancel/Close Btn Clicked!');
      end;
    finally
      FreeAndNil(Frm_BuscaGen);
    end;
  end;

end;

procedure TFrm_PDV.FdQueryPDVID_PRODUTOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  ShowMessage('teste: ' + Sender.AsString);
end;

procedure TFrm_PDV.FecharPDV;
var
  msg, title: PWideChar;
  vlrSTotal: Double;
begin
  if StrToFloat(CdsPDVSUBTOTAL_VENDA.AsString) > 0 then MsgConfirmacao('Deseja realmente cancelar a venda?', 'Cancelar Venda')
  else MsgFixa(UnitFuncoes.tMsgCloseFrm);
end;

procedure TFrm_PDV.cEdtQntKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    UnitFuncoes.FocarComponente(Self);
  end;
end;

procedure TFrm_PDV.ConfigIni;
begin
  CdsPDV.CreateDataSet;
  CdsPDV.Open;
  AttVenda;
end;

procedure TFrm_PDV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UnitFuncoes.LimpaCampos(Self);
end;

procedure TFrm_PDV.FormCreate(Sender: TObject);
begin
  PreencheImgBtn;
  pnlFrmPgmt.Width := Screen.Width DIV 3;
  pnlCondPgmt.Width := Screen.Width DIV 3;
end;

procedure TFrm_PDV.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then begin

  end;
end;

procedure TFrm_PDV.FormShow(Sender: TObject);
begin
//  BuscaOperadorPDV(CodOp);

//  ConfigIni;
//  AddIcons;
//
//  FormatSettings.ThousandSeparator := '.';
//  FormatSettings.DecimalSeparator := ',';
end;

function TFrm_PDV.HeProdutoReptdo: Boolean;
begin
  if CdsPDV.Locate('CODPRODUTO', EdtProduto.Text, []) then Result := True
  else Result := False;
end;

procedure TFrm_PDV.LimparLabels;
begin
  LbTotal.Caption := '0,00';
  LbSubTotal.Caption := '0,00';
end;

procedure TFrm_PDV.PreencheImgBtn;
begin
  with Frm_principal.ImgListIcons do begin
    GetBitmap(0, btnGetProduto.Glyph);
    GetBitmap(0, btnGetCliente.Glyph);
    GetBitmap(0, btnGetOperador.Glyph);
    GetBitmap(0, btnGetFrmPgmt.Glyph);
    GetBitmap(0, btnGetCondPgmt.Glyph);

    if (edtNomeCliente.Text = '') then GetBitmap(4, btnCadCliente.Glyph) else GetBitmap(1, btnCadCliente.Glyph);
    if (EdtNomeOperador.Text = '') then GetBitmap(4, btnCadOperador.Glyph) else GetBitmap(1, btnCadOperador.Glyph);
    if (edtNomeFrmPgmt.Text = '') then GetBitmap(4, btnCadFrmPgmt.Glyph) else GetBitmap(1, btnCadFrmPgmt.Glyph);
    if (edtNomeCondPgmt.Text = '') then GetBitmap(4, btnCadCondPgmt.Glyph) else GetBitmap(1, btnCadCondPgmt.Glyph);
  end;
end;

procedure TFrm_PDV.RefazAutoInc;
var
  newID: Integer;
begin
  newID := 1;
  CdsPDV.First;

  while not CdsPDV.Eof do
  begin
    if not (CdsPDV.State = dsEdit) then CdsPDV.Edit;
    CdsPDV.FieldByName('CODITEM').AsInteger :=  newID;
    Inc(newID);
    CdsPDV.Next;
  end;
end;

procedure TFrm_PDV.VerifOperador;
begin
  if EdtCodOperador.Text = '0' then
    if Application.MessageBox('Operador de Suporte não pode realizar vendas. ' +
      #13 + 'É necessário logar com outro operador. ' + #13 + #13 +
      'Deseja continuar mesmo assim?', 'Aviso', MB_YESNO or MB_DEFBUTTON2 or
      MB_ICONQUESTION) = IDNO then
      PostMessage(Self.Handle, WM_CLOSE, 0, 0)
    else
    begin
      EdtCodOperador.Clear;
      EdtNomeOperador.Clear;
    end;
end;

end.

