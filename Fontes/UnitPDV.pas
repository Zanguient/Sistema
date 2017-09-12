unit UnitPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, UnitBuscarOp, UnitBuscaProd, Unt_FrmBuscaCliente, Unt_FrmCadCliente, UnitCadOper,
  UnitFuncoes, Unt_DM, Vcl.Mask, Vcl.Menus, Datasnap.Provider, Datasnap.DBClient;

type
  TFormPDV = class(TForm)
    Panel1: TPanel;
    DBGridPDV: TDBGrid;
    EdtCliExib: TEdit;
    Label1: TLabel;
    EdtNomeOperador: TEdit;
    Label2: TLabel;
    Panel5: TPanel;
    SpeedButton4: TSpeedButton;
    Label4: TLabel;
    EdtProdExib: TEdit;
    Panel2: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    EdtDesc: TEdit;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    PnRightBtn: TPanel;
    PnLeftBtn: TPanel;
    Button3: TButton;
    Button4: TButton;
    EdtCodOperador: TEdit;
    EdtCliente: TEdit;
    EdtProduto: TEdit;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    LbEstq: TLabel;
    DsPDV: TDataSource;
    MenuPDV: TPopupMenu;
    BtnAbrirCadMenu: TMenuItem;
    Panel6: TPanel;
    PnLeft: TPanel;
    SpeedButton10: TSpeedButton;
    Label8: TLabel;
    SpeedButton11: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    PnRight: TPanel;
    SpeedButton12: TSpeedButton;
    Label11: TLabel;
    SpeedButton13: TSpeedButton;
    Edit3: TEdit;
    Edit4: TEdit;
    PnSTotal: TPanel;
    LbTotal: TLabel;
    nLbTotal: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Panel13: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Panel14: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    PnOutros: TPanel;
    Label20: TLabel;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    LbSymb: TLabel;
    Deletartem1: TMenuItem;
    AlterarQuantidade1: TMenuItem;
    MudarPreoUnitrio1: TMenuItem;
    Panel7: TPanel;
    lbQntItens: TLabel;
    lbItens: TLabel;
    Panel8: TPanel;
    LbSubTotal: TLabel;
    Label23: TLabel;
    Shape1: TShape;
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

    procedure FormShow(Sender: TObject);
    procedure EdtProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtCodOperadorKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtClienteEnter(Sender: TObject);
    procedure cEdtQntKeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure FdQueryPDVID_PRODUTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    procedure VerifOperador;
    procedure LimparProduto;
    procedure LimparLabels;
    procedure RefazAutoInc;
    procedure AddNewItem;
    procedure FecharPDV;
    procedure ConfigIni;
    procedure AttVenda;

    function HeProdutoReptdo: Boolean;
    function AutoIncItem: Integer;
  public
    { Public declarations }
    procedure BuscaOperadorPDV(cod: Integer);
  end;

var
  FormPDV: TFormPDV;
  codOperador: Integer;

implementation

{$R *.dfm}

procedure TFormPDV.BuscaOperadorPDV(cod: Integer);
begin
  with getNewQuery do begin
    try
      try
        SQL.Add('SELECT V.NOME_VENDEDOR, V.PERMISSAO_VENDEDOR, V.STATUS_VENDEDOR FROM VENDEDORES V');
        ExecProc;

        if RecordCount > 0 then begin
          if FieldByName('STATUS_VENDEDOR').AsString = 'A' then begin
            EdtNomeOperador.Text := FieldByName('NOME_VENDEDOR').AsString;
            EdtCodOperador.Text := codOperador.ToString;
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

procedure TFormPDV.AddNewItem;
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
  LimparProduto;
end;

procedure TFormPDV.AttVenda;
begin
  FormatSettings.ThousandSeparator := '.';
  FormatSettings.DecimalSeparator := ',';

  LbSubTotal.Caption := UnitFuncoes.FormatarBanco
    (CdsPDVSUBTOTAL_VENDA.AsString);
  LbTotal.Caption := FormatarBanco(CdsPDVTOTAL_VENDA.AsString);
  lbQntItens.Caption := IntToStr(CdsPDV.RecordCount);

  PnSTotal.Width := nLbTotal.Width + LbSymb.Width + 5 * LbTotal.Width;
  lbItens.Margins.Left := (PnOutros.Width - lbItens.Width -
    lbQntItens.Width) DIV 2;
end;

function TFormPDV.AutoIncItem: Integer;
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

procedure TFormPDV.Button4Click(Sender: TObject);
begin
  FecharPDV;
end;

procedure TFormPDV.FdQueryPDVID_PRODUTOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  ShowMessage('teste: ' + Sender.AsString);
end;

procedure TFormPDV.FecharPDV;
var
  msg, title: PWideChar;
  vlrSTotal: Double;
begin
  if StrToFloat(CdsPDVSUBTOTAL_VENDA.AsString) > 0 then MsgConfirmacao('Deseja realmente cancelar a venda?', 'Cancelar Venda')
  else MsgFixa(UnitFuncoes.tMsgCloseFrm);
end;

procedure TFormPDV.cEdtQntKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    UnitFuncoes.FocarComponente(Self);
  end;
end;

procedure TFormPDV.ConfigIni;
begin
  PnLeft.Width := (Screen.Width DIV 2) - 10;
  PnRight.Width := (Screen.Width DIV 2);

  PnLeftBtn.Width := (Screen.Width DIV 2) - 10;
  PnRightBtn.Width := (Screen.Width DIV 2);

  EdtNomeOperador.Width := Screen.Width DIV 8;
  EdtCliExib.Width := Screen.Width DIV 2;
  EdtProdExib.Width := EdtCliExib.Width + EdtNomeOperador.Width - 5;

  CdsPDV.CreateDataSet;
  CdsPDV.Open;

  AttVenda;
end;

procedure TFormPDV.EdtClienteEnter(Sender: TObject);
begin
  EdtCliente.SetFocus;
end;

procedure TFormPDV.EdtCodOperadorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    UnitFuncoes.FocarComponente(Self);
  end;
end;

procedure TFormPDV.EdtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ADD then
  begin
    EdtProduto.SetFocus;
    EdtProduto.Clear;
    exit;
  end;
end;

procedure TFormPDV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UnitFuncoes.LimpaCampos(Self);
  LbEstq.Caption := '';
end;

procedure TFormPDV.FormShow(Sender: TObject);
begin
  BuscaOperadorPDV(codOperador);

//  ConfigIni;
//  AddIcons;
//
//  FormatSettings.ThousandSeparator := '.';
//  FormatSettings.DecimalSeparator := ',';
end;

function TFormPDV.HeProdutoReptdo: Boolean;
begin
  if CdsPDV.Locate('CODPRODUTO', EdtProduto.Text, []) then Result := True
  else Result := False;
end;

procedure TFormPDV.LimparLabels;
begin
  LbTotal.Caption := '0,00';
  LbSubTotal.Caption := '0,00';
end;

procedure TFormPDV.LimparProduto;
begin
//
end;

procedure TFormPDV.RefazAutoInc;
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

procedure TFormPDV.VerifOperador;
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

