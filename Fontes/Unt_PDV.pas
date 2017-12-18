unit Unt_PDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  UnitFuncoes, Vcl.Mask, Vcl.Menus, Datasnap.Provider, Datasnap.DBClient, JvExMask, JvToolEdit, JvBaseEdits,
  MyJVCurrencyEdit, System.ImageList, Vcl.ImgList, FIBDataSet, pFIBDataSet, Vcl.DBCtrls, pFIBClientDataSet;

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
    PnlDetalheProduto: TPanel;
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
    pnlMyProd: TPanel;
    btnGetProduto: TSpeedButton;
    lbNomeProduto: TLabel;
    edtNomeProduto: TEdit;
    EdtCodProduto: TEdit;
    lbEstoque: TLabel;
    pnlDesc: TPanel;
    lbDesc: TLabel;
    pnlSubtotal: TPanel;
    lbSubtot: TLabel;
    pnlVlr: TPanel;
    lbVlr: TLabel;
    pnlQntd: TPanel;
    lbQntd: TLabel;
    Shape1: TShape;
    BtnCadProd: TSpeedButton;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    pnlOperador: TPanel;
    lbNomeOperador: TLabel;
    btnGetOperador: TSpeedButton;
    btnCadOperador: TSpeedButton;
    EdtCodOperador: TEdit;
    EdtNomeOperador: TEdit;
    pnlDetPessoa: TPanel;
    lbNomeCliente: TLabel;
    btnCadCliente: TSpeedButton;
    btnGetCliente: TSpeedButton;
    EdtCodCliente: TEdit;
    edtNomeCliente: TEdit;
    DBGrid1: TDBGrid;
    EdtQnt: TEdit;
    EdtSubtotal: TEdit;
    EdtVlr: TEdit;
    EdtDesc: TEdit;
    MnItems: TPopupMenu;
    Deletar1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    CdsPDV: TClientDataSet;
    CdsPDVCOD_PRODUTO: TIntegerField;
    CdsPDVNOME_PRODUTO: TStringField;
    CdsPDVPRVENDA_PRODUTO: TCurrencyField;
    CdsPDVESTOQUE_PRODUTO: TFloatField;
    CdsPDVUND_PRODUTO: TStringField;
    CdsPDVCST_PRODUTO: TIntegerField;
    CdsPDVALIQ_ICMS: TFloatField;
    CdsPDVQNTD_VENDA: TFloatField;
    CdsPDVSUBTOTAL: TCurrencyField;
    CdsPDVTOTAL: TAggregateField;
    CdsPDVNRO_ITEM: TIntegerField;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cEdtQntKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnGetOperadorClick(Sender: TObject);
    procedure EdtCodOperadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnGetClienteClick(Sender: TObject);
    procedure EdtCodClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnGetProdutoClick(Sender: TObject);
    procedure EdtCodProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCadClienteClick(Sender: TObject);
    procedure BtnCadProdClick(Sender: TObject);
    procedure EdtCodOperadorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodOperadorExit(Sender: TObject);
    procedure EdtCodClienteExit(Sender: TObject);
    procedure EdtCodProdutoExit(Sender: TObject);
    procedure CdsPDVCalcFields(DataSet: TDataSet);
    procedure EdtSubtotalExit(Sender: TObject);
    procedure EdtQntExit(Sender: TObject);
    procedure EdtVlrExit(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);

  strict private
    procedure BuscaOperadorPDV(cod: Integer);
    procedure AbreTelaBuscaOperador(pTxtBusca: String = '');
    procedure AbreTelaBuscaCliente(pTxtBusca: String = '');
    procedure AbreTelaBuscaProduto(pTxtBusca: String = '');
    procedure PreencheImgBtn;
    procedure VerifOperador;
    procedure LimparLabels;
    procedure RefazAutoInc;
    procedure AddNewItem;
    procedure FecharPDV;
    procedure ConfigIni;
    procedure AttVenda;
    procedure LimparCamposItens;
    procedure BuscarProduto(PreencheDBG: Boolean);
    procedure AtualizaNroItem();

    function HeProdutoReptdo: Boolean;
    function AutoIncItem: Integer;

  public
    function PreencheOperadorPDV(): boolean;

  end;

var
  Frm_PDV: TFrm_PDV;

implementation

uses
  Unt_FrmPrincipal, Unt_FrmBuscaOperador, Unt_FrmBuscaCliente, UnitBuscarOp,
  UnitBuscaProd, Unt_FrmCadCliente, UnitCadOper, Unt_FrmBuscaProduto, Unt_DM;

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

procedure TFrm_PDV.BuscarProduto(PreencheDBG: Boolean);
begin
  if (Length(Trim(EdtCodProduto.Text)) > 0) then begin
    with getNewQuery() do begin
      try
        try
          if (EdtCodProduto.Text = '') or (edtNomeProduto.Text = '') then begin //Busca Produto
            Close;
            SQL.Clear;

            if (StrToIntDef(EdtCodProduto.Text, 0) = 0) then begin //pesquisa por Nome
              SQL.Add('SELECT P.COD_PRODUTO, P.NOME_PRODUTO FROM PRODUTOS P');
              SQL.Add('WHERE UPPER(P.NOME_PRODUTO COLLATE WIN_PTBR) LIKE UPPER(:NOME)');
              ParamByName('NOME').AsString := '%' + RemoveAcentos(EdtCodProduto.Text) + '%';

            end else if (Length(EdtCodProduto.Text) = 14) then begin //Pesquisar por Cod de Barras
              SQL.Add('SELECT P.COD_PRODUTO, P.NOME_PRODUTO FROM PRODUTOS P WHERE P.CODBARRA_PRODUTO = :COD');
              ParamByName('COD').AsString := EdtCodProduto.Text;

            end else begin //Pesquisa por Cod
              SQL.Add('SELECT P.COD_PRODUTO, P.NOME_PRODUTO FROM PRODUTOS P WHERE P.COD_PRODUTO = :COD');
              ParamByName('COD').AsInteger := StrToIntDef(EdtCodProduto.Text, 0);
            end;

            ExecQuery;

            if (RecordCount = 1) then begin
              EdtCodProduto.Text  := FieldByName('COD_PRODUTO').AsString;
              edtNomeProduto.Text := FieldByName('NOME_PRODUTO').AsString;
              PreencheImgBtn;
            end else
              AbreTelaBuscaProduto(EdtCodProduto.Text);
          end;

          if not (EdtCodProduto.Text = '') and not (edtNomeProduto.Text = '') then begin //Busca Detalhes Produto
            Close;
            SQL.Clear;

            SQL.Add('SELECT');
            SQL.Add('P.COD_PRODUTO,');
            SQL.Add('P.NOME_PRODUTO,');
            SQL.Add('P.PRVENDA_PRODUTO,');
            SQL.Add('P.ESTOQUE_PRODUTO,');
            SQL.Add('P.UNIDADE_PRODUTO,');
            SQL.Add('P.CST,');
            SQL.Add('P.PERC_ICMS_ESTADO_PRODUTO');
            SQL.Add('FROM PRODUTOS P');
            SQL.Add('WHERE P.COD_PRODUTO = :COD');
            ParamByName('COD').AsInteger := StrToIntDef(EdtCodProduto.Text, 0);

            ExecQuery;

            EdtVlr.Text := IfThen(Length(EdtVlr.Text) > 0, EdtVlr.Text, FieldByName('PRVENDA_PRODUTO').AsString);
            EdtQnt.Text := IfThen(Length(EdtQnt.Text) > 0, EdtQnt.Text, '1');
            EdtSubtotal.Text := CurrToStr(StrToCurr(EdtVlr.Text) * StrToCurr(EdtQnt.Text));
            EdtDesc.Text := '';

            if (PreencheDBG = True) then begin
              CdsPDV.Open;

              if (CdsPDV.Locate(CdsPDVCOD_PRODUTO.FieldName, FieldByName('COD_PRODUTO').AsInteger,[]) and
              (CdsPDVPRVENDA_PRODUTO.AsCurrency = StrToCurr(EdtVlr.Text))) then begin
                DsPDV.Edit;
                CdsPDVQNTD_VENDA.AsFloat := StrToFloatDef(EdtQnt.Text,1) + CdsPDVQNTD_VENDA.AsFloat;
              end else begin
                CdsPDV.Append;
                CdsPDVQNTD_VENDA.AsFloat := StrToFloatDef(EdtQnt.Text,1);
                AtualizaNroItem;
              end;

              CdsPDVCOD_PRODUTO.AsInteger := FieldByName('COD_PRODUTO').AsInteger;
              CdsPDVNOME_PRODUTO.AsString := FieldByName('NOME_PRODUTO').AsString;
              CdsPDVPRVENDA_PRODUTO.AsCurrency := StrToCurr(EdtVlr.Text);
              CdsPDVESTOQUE_PRODUTO.AsFloat := FieldByName('ESTOQUE_PRODUTO').AsFloat;
              CdsPDVUND_PRODUTO.AsString := 'UND';

              CdsPDVALIQ_ICMS.AsFloat := FieldByName('PERC_ICMS_ESTADO_PRODUTO').AsFloat;
              CdsPDVALIQ_ICMS.DisplayFormat := '#.##%';

              CdsPDVCST_PRODUTO.AsString := FieldByName('CST').AsString;
              CdsPDVSUBTOTAL.AsCurrency := CdsPDVQNTD_VENDA.AsFloat * CdsPDVPRVENDA_PRODUTO.AsCurrency;

              if DsPDV.State = dsInsert then CdsPDV.Post;
              LimparCamposItens;
            end;

          end;

        except
          on E: Exception do begin
            Transaction.Rollback;
            Close;
            MsgErro('Erro ao efetuar busca ' + #13 + e.Message);
          end;
        end;
      finally
        LiberarQuery(Name);
      end;
    end;
  end;
end;

procedure TFrm_PDV.CdsPDVCalcFields(DataSet: TDataSet);
begin
   CdsPDVSUBTOTAL.AsCurrency := CdsPDVPRVENDA_PRODUTO.AsCurrency * CdsPDVQNTD_VENDA.AsFloat;
   LbSubTotal.Caption := CdsPDVTOTAL.AsString;
   LbTotal.Caption := CdsPDVTOTAL.AsString;
end;

procedure TFrm_PDV.AbreTelaBuscaOperador(pTxtBusca: String);
begin
  with (Frm_BuscaOperador) do begin
    try
      Application.CreateForm(TFrm_BuscaOperador, Frm_BuscaOperador);
      ParamBusca := pTxtBusca;

      ShowModal;

      if (ModalResult = mrOk) then begin
        EdtCodOperador.Text := Retorno.Cod.ToString;
        EdtNomeOperador.Text := Retorno.Nome;
        EdtCodOperador.SelectAll;
      end else begin
        EdtCodOperador.SelectAll;
        EdtCodOperador.SetFocus;
      end;
    finally
      FreeAndNil(Frm_BuscaOperador);
    end;
  end;
end;

procedure TFrm_PDV.AbreTelaBuscaCliente(pTxtBusca: String);
begin
  with (Unt_FrmBuscaCliente.FormBuscador) do begin
    try
      Application.CreateForm(Unt_FrmBuscaCliente.TFormBuscador, Unt_FrmBuscaCliente.FormBuscador);
      ParamBusca := pTxtBusca;

      ShowModal;

      if (ModalResult = mrOk) then begin
        EdtCodCliente.Text := Retorno.Cod.ToString;
        EdtCodCliente.SelectAll;

        edtNomeCliente.Text :=
          Unt_DM.getCampoSelect('SELECT C.NOME_CLIENTE FROM CLIENTES C WHERE C.COD_CLIENTE = ' + EdtCodCliente.Text);

        PreencheImgBtn;
      end else begin
        EdtCodCliente.SelectAll;
        EdtCodCliente.SetFocus;
      end;
    finally
      FreeAndNil(Unt_FrmBuscaCliente.FormBuscador);
    end;
  end;
end;

procedure TFrm_PDV.AbreTelaBuscaProduto(pTxtBusca: String = '');
begin
  with (Frm_BuscaProduto) do begin
    try
      Application.CreateForm(TFrm_BuscaProduto, Frm_BuscaProduto);
      ParamBusca := pTxtBusca;
      ShowModal;

      if (ModalResult = mrOk) then begin
        EdtCodProduto.Text := Retorno.Cod.ToString;
        EdtCodProduto.SelectAll;
      end else begin
        EdtCodCliente.SelectAll;
        EdtCodCliente.SetFocus;
      end;
    finally
      FreeAndNil(Frm_BuscaProduto);
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
//    CdsPDV.Append;
//    CdsPDVCODITEM_VENDA.AsInteger := ID;
//    CdsPDVBCICMS.AsFloat := BcIcms;
//    CdsPDVALIQICMS.AsFloat := AliqIcms;
//    CdsPDVREF.AsString := refProduto;
//    CdsPDVPRODUTO.AsString := produto;
//    CdsPDVUND.AsString := und;
//    CdsPDVICMS.AsFloat := BcIcms * AliqIcms;
//    CdsPDVCODPRODUTO.AsInteger := CodProd;
//    CdsPDVQNT.AsFloat := Qnte;
//    CdsPDVVLRUNIT.AsFloat := VlrUnit;
//    CdsPDVSUBTOTAL.AsCurrency := VlrSubt;
//    CdsPDV.Post;
  end;
end;

procedure TFrm_PDV.AttVenda;
begin
//  FormatSettings.ThousandSeparator := '.';
//  FormatSettings.DecimalSeparator := ',';
//
//  LbSubTotal.Caption := UnitFuncoes.FormatarBanco
//    (CdsPDVSUBTOTAL_VENDA.AsString);
//  LbTotal.Caption := FormatarBanco(CdsPDVTOTAL_VENDA.AsString);
//  lbQntItens.Caption := IntToStr(CdsPDV.RecordCount);
end;

procedure TFrm_PDV.AtualizaNroItem;
var
  I: Integer;
begin
  i := 1;
  CdsPDV.First;

  while not CdsPDV.Eof do begin
    CdsPDV.Edit;
    CdsPDV.FieldByName('NRO_ITEM').AsInteger := I;
    Inc(I);
    CdsPDV.Next;
  end;

  CdsPDV.Edit;
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

procedure TFrm_PDV.btnCadClienteClick(Sender: TObject);
begin
  if (Length(Trim(EdtCodCliente.Text)) > 0) then Frm_principal.AbreTelaCliente(StrToInt(EdtCodCliente.Text))
  else Frm_principal.AbreTelaCliente(0);
end;

procedure TFrm_PDV.btnCancelarClick(Sender: TObject);
begin
  FecharPDV;
end;

procedure TFrm_PDV.btnGetClienteClick(Sender: TObject);
begin
  with (Unt_FrmBuscaCliente.FormBuscador) do begin
    try
      Application.CreateForm(TFormBuscador, FormBuscador);
      ShowModal;

      if (ModalResult = mrOk) then begin
        EdtCodCliente.Text := retorno.Cod.ToString;
        edtNomeCliente.Text := retorno.Nome;
        EdtCodCliente.SelectAll;
      end;

    finally
      FreeAndNil(Unt_FrmBuscaCliente.FormBuscador);
    end;
  end;
end;

procedure TFrm_PDV.btnGetOperadorClick(Sender: TObject);
begin
  AbreTelaBuscaOperador();
end;

procedure TFrm_PDV.btnGetProdutoClick(Sender: TObject);
begin
  with (Frm_BuscaProduto) do begin
    try
      Application.CreateForm(TFrm_BuscaProduto, Frm_BuscaProduto);
      ShowModal;

      if (ModalResult = mrOk) then begin
        EdtCodProduto.Text := retorno.Cod.ToString;
        edtNomeProduto.Text := retorno.Nome;
        EdtCodProduto.SelectAll;
      end;

    finally
      FreeAndNil(Frm_BuscaProduto);
    end;
  end;
end;

procedure TFrm_PDV.FecharPDV;
var
  msg, title: PWideChar;
  vlrSTotal: Double;
begin
//  if StrToFloat(CdsPDVSUBTOTAL_VENDA.AsString) > 0 then MsgConfirmacao('Deseja realmente cancelar a venda?', 'Cancelar Venda')
//  else MsgFixa(UnitFuncoes.tMsgCloseFrm);
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

procedure TFrm_PDV.Deletar1Click(Sender: TObject);
begin
  CdsPDV.Delete;
  AtualizaNroItem();
end;

procedure TFrm_PDV.EdtCodClienteExit(Sender: TObject);
begin
  if (Length(Trim(EdtCodCliente.Text)) > 0) then begin
    with getNewQuery() do begin
      try
        try
          if (StrToIntDef(EdtCodCliente.Text, 0) = 0) then begin //pesquisa por Nome
            SQL.Add('SELECT C.COD_CLIENTE, C.NOME_CLIENTE FROM CLIENTES C');
            SQL.Add('WHERE UPPER(C.NOME_CLIENTE COLLATE WIN_PTBR) LIKE UPPER(:NOME)');
            ParamByName('NOME').AsString := '%' + RemoveAcentos(EdtCodCliente.Text) + '%';
          end else begin //Pesquisa por Cod
            SQL.Add('SELECT C.COD_CLIENTE, C.NOME_CLIENTE FROM CLIENTES C WHERE C.COD_CLIENTE = :COD');
            ParamByName('COD').AsInteger := StrToIntDef(EdtCodCliente.Text, 0);
          end;

          ExecQuery;

          if (RecordCount = 1) then begin
            EdtCodCliente.Text  := FieldByName('COD_CLIENTE').AsString;
            edtNomeCliente.Text := FieldByName('NOME_CLIENTE').AsString;
            PreencheImgBtn;
          end else
            AbreTelaBuscaCliente(EdtCodCliente.Text);
        except
          on E: Exception do begin
            MsgErro('Erro ao efetuar busca ' + #13 + e.Message);
          end;
        end;
      finally
        LiberarQuery(Name);
      end;
    end;
  end;
end;

procedure TFrm_PDV.EdtCodClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (Key = VK_F3) then btnGetCliente.Click
  else if (Key = VK_ADD) then btnCadCliente.Click;
end;

procedure TFrm_PDV.EdtCodOperadorExit(Sender: TObject);
begin
  if (Length(EdtCodOperador.Text) > 0) then begin

    if (EdtCodOperador.Text = '0') and (Length(Trim(EdtNomeOperador.Text)) > 0) then Exit;

    with getNewQuery() do begin
      try
        try
          if (StrToIntDef(EdtCodOperador.Text, -1) = -1) then begin //pesquisa por Nome
            SQL.Add('SELECT V.COD_VENDEDOR, V.NOME_VENDEDOR FROM VENDEDORES V');
            SQL.Add('WHERE UPPER(V.NOME_VENDEDOR COLLATE WIN_PTBR) LIKE UPPER(:NOME)');
            ParamByName('NOME').AsString := '%' + RemoveAcentos(EdtCodOperador.Text) + '%';
          end else begin //Pesquisa por Cod
            SQL.Add('SELECT V.COD_VENDEDOR, V.NOME_VENDEDOR FROM VENDEDORES V WHERE V.COD_VENDEDOR = :COD');
            ParamByName('COD').AsInteger := StrToIntDef(EdtCodOperador.Text, 0);
          end;

          ExecQuery;

          if (RecordCount = 1) then begin
            EdtCodOperador.Text  := FieldByName('COD_VENDEDOR').AsString;
            EdtNomeOperador.Text := FieldByName('NOME_VENDEDOR').AsString;
            PreencheImgBtn;
          end else begin
            AbreTelaBuscaOperador(EdtCodOperador.Text);
          end;
        except
          on E: Exception do begin
            MsgErro('Erro ao efetuar busca ' + #13 + e.Message);
          end;
        end;
      finally
        LiberarQuery(Name);
      end;
    end;
  end;
end;

procedure TFrm_PDV.EdtCodOperadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then btnGetOperador.Click
  else if (Key = VK_ADD) then btnCadOperador.Click;
end;

procedure TFrm_PDV.EdtCodOperadorKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #43) then Key := #0;
end;

procedure TFrm_PDV.EdtCodProdutoExit(Sender: TObject);
begin
  if (PnlDetalheProduto.Visible = True) then BuscarProduto(False)
  else BuscarProduto(True);
end;

procedure TFrm_PDV.EdtCodProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then btnGetProduto.Click
  else if (Key = VK_ADD) then BtnCadProd.Click;
end;

procedure TFrm_PDV.EdtQntExit(Sender: TObject);
begin
  BuscarProduto(False);
end;

procedure TFrm_PDV.EdtSubtotalExit(Sender: TObject);
begin
  BuscarProduto(True);
end;

procedure TFrm_PDV.EdtVlrExit(Sender: TObject);
begin
  BuscarProduto(False);
end;

procedure TFrm_PDV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UnitFuncoes.LimpaCampos(Self);
end;

procedure TFrm_PDV.FormCreate(Sender: TObject);
begin

  if not (PreencheOperadorPDV()) then Exit;

  PreencheImgBtn;

  pnlFrmPgmt.Width := Screen.Width DIV 3;
  pnlCondPgmt.Width := Screen.Width DIV 3;

  MudaCorEditReadOnly($00E7D8CF, $262626, [EdtNomeOperador, edtNomeCliente, edtNomeProduto]);

  PnlDetalheProduto.Visible := True;
end;

procedure TFrm_PDV.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F5) then PnlDetalheProduto.Visible := not PnlDetalheProduto.Visible;
end;

procedure TFrm_PDV.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then Close
  else if (Key = #13) then Perform(WM_NEXTDLGCTL, 0, 0);
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
  if CdsPDV.Locate('CODPRODUTO', EdtCodProduto.Text, []) then Result := True
  else Result := False;
end;

procedure TFrm_PDV.LimparCamposItens;
begin
  EdtCodProduto.Clear;
  edtNomeProduto.Clear;
  EdtQnt.Clear;
  EdtVlr.Clear;
  EdtSubtotal.Clear;
  EdtDesc.Clear;

  EdtCodProduto.SelectAll;
  EdtCodProduto.SetFocus;
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

    if Length(EdtNomeOperador.Text) > 0 then begin
      btnCadOperador.Glyph.Assign(nil);
      GetBitmap(1, btnCadOperador.Glyph)
    end else begin
      btnCadOperador.Glyph.Assign(nil);
      GetBitmap(4, btnCadOperador.Glyph);
    end;

    if Length(edtNomeCliente.Text) > 0 then begin
      btnCadCliente.Glyph.Assign(nil);
      GetBitmap(1, btnCadCliente.Glyph)
    end else begin
      btnCadCliente.Glyph.Assign(nil);
      GetBitmap(4, btnCadCliente.Glyph);
    end;

    if Length(edtNomeProduto.Text) > 0 then begin
      BtnCadProd.Glyph.Assign(nil);
      GetBitmap(1, BtnCadProd.Glyph)
    end else begin
      BtnCadProd.Glyph.Assign(nil);
      GetBitmap(4, BtnCadProd.Glyph);
    end;

    if Length(edtNomeCondPgmt.Text) > 0 then begin
      btnCadCondPgmt.Glyph.Assign(nil);
      GetBitmap(1, btnCadCondPgmt.Glyph)
    end else begin
      btnCadCondPgmt.Glyph.Assign(nil);
      GetBitmap(4, btnCadCondPgmt.Glyph);
    end;

    if Length(edtNomeFrmPgmt.Text) > 0 then begin
      btnCadFrmPgmt.Glyph.Assign(nil);
      GetBitmap(1, btnCadFrmPgmt.Glyph)
    end else begin
      btnCadFrmPgmt.Glyph.Assign(nil);
      GetBitmap(4, btnCadFrmPgmt.Glyph);
    end;
  end;
end;

function TFrm_PDV.PreencheOperadorPDV: boolean;
begin
  EdtCodOperador.Text := dm.getIdOperadorLogado;
  EdtNomeOperador.Text := dm.getNomeOperadorLogado;
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

procedure TFrm_PDV.BtnCadProdClick(Sender: TObject);
begin
  if (Length(Trim(EdtCodProduto.Text)) > 0) then Frm_principal.AbreTelaProduto(StrToInt(EdtCodProduto.Text))
  else Frm_principal.AbreTelaProduto(0);
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

