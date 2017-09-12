unit Unt_FrmCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons, System.ImageList, Vcl.ImgList, UnitConstants, Unt_DM, UnitFuncoes, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Unt_FrmBuscaCliente, UnitBuscaProd, Vcl.Menus, Vcl.ExtDlgs,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase;

type
  TFormCadProduto = class(TForm)
    ImageList: TImageList;
    MnBtnDuplic: TPopupMenu;
    este11: TMenuItem;
    este21: TMenuItem;
    OpenPicture: TOpenPictureDialog;
    QryProduto: TpFIBDataSet;
    QryProdutoCOD_PRODUTO: TFIBIntegerField;
    QryProdutoNOME_PRODUTO: TFIBStringField;
    QryProdutoCODCLASSE_PRODUTO: TFIBSmallIntField;
    QryProdutoNOME_CLASSE: TFIBStringField;
    QryProdutoCODSUBCLASSE_PRODUTO: TFIBSmallIntField;
    QryProdutoNOME_SUBCLASSE: TFIBStringField;
    QryProdutoCODBARRA_PRODUTO: TFIBStringField;
    QryProdutoUNIDADE_PRODUTO: TFIBSmallIntField;
    QryProdutoNOME_UND: TFIBStringField;
    QryProdutoESTOQUE_PRODUTO: TFIBBCDField;
    QryProdutoESTOQUEMAX_PRODUTO: TFIBBCDField;
    QryProdutoPRCOMPRA_PRODUTO: TFIBBCDField;
    QryProdutoPRVENDA_PRODUTO: TFIBBCDField;
    QryProdutoCST_PRODUTO: TFIBStringField;
    QryProdutoCST: TFIBSmallIntField;
    QryProdutoBASESTCOMPRA_PRODUTO: TFIBBCDField;
    QryProdutoPERCICMSST_PRODUTO: TFIBFloatField;
    QryProdutoBASECALCULO_PRODUTO: TFIBFloatField;
    QryProdutoPERC_ICMS_ESTADO_PRODUTO: TFIBFloatField;
    QryProdutoTIPO_PRODUTO: TFIBSmallIntField;
    QryProdutoDTCADASTRO_PRODUTO: TFIBDateField;
    QryProdutoOBS_PRODUTO: TFIBStringField;
    LbOperacao: TLabel;
    dsProduto: TDataSource;
    PageControl: TPageControl;
    TabPrincipal: TTabSheet;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    BtnBuscaCliente: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label12: TLabel;
    Label11: TLabel;
    sbProcurar: TSpeedButton;
    Label7: TLabel;
    Label34: TLabel;
    Label30: TLabel;
    Shape2: TShape;
    SpeedButton7: TSpeedButton;
    CbTipo: TComboBox;
    EdtCod: TEdit;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    SpeedButton6: TSpeedButton;
    EdtEstqQnt: TEdit;
    EdtEstqReserv: TDBEdit;
    EdtEstqMin: TDBEdit;
    EdtEstqMax: TDBEdit;
    CbUnd: TComboBox;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label42: TLabel;
    SpeedButton4: TSpeedButton;
    Label24: TLabel;
    Label25: TLabel;
    EdtPrCusto: TDBEdit;
    EdtMrgLucro: TDBEdit;
    EdtPrUltCusto: TDBEdit;
    EdtPrVenda: TDBEdit;
    GroupBox5: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    CbCST: TComboBox;
    CbOrigemCST: TComboBox;
    EdtBC_ICMS: TDBEdit;
    EdtAliq_ICMS: TDBEdit;
    EdtBC_ST: TDBEdit;
    EdtAliq_ST: TDBEdit;
    EdtNome: TDBEdit;
    EdtGp: TDBEdit;
    EdtNomeGp: TDBEdit;
    EdtSg: TDBEdit;
    EdtNomeSg: TDBEdit;
    EdtCodBarra: TDBEdit;
    EdtRef: TDBEdit;
    TabAdicional: TTabSheet;
    TabImpostos: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Image: TImage;
    Panel4: TPanel;
    Label20: TLabel;
    BtnProcurarImg: TButton;
    BtnLimparImg: TButton;
    EdtPathImg: TEdit;
    pnButtons: TPanel;
    btnGravar: TBitBtn;
    btnLimpar: TBitBtn;
    btnDeletar: TBitBtn;
    btnCancelar: TBitBtn;
    QryProdutoSUPERAB_UND: TFIBStringField;
    QryProdutoDTALTERACAO: TFIBDateField;
    QryProdutoLUCRO_PRODUTO: TFIBBCDField;
    cbLucroFixo: TCheckBox;
    QryProdutoLUCROFIXO_PRODUTO: TFIBBooleanField;
    Panel1: TPanel;
    Label19: TLabel;
    MeLivre: TMemo;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label13: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    EdtPeso: TEdit;
    EdtAlt: TEdit;
    EdtLarg: TEdit;
    EdtComp: TEdit;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label31: TLabel;
    SbDown: TSpeedButton;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Label14: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel6: TPanel;
    CkExcecaoICMS: TCheckBox;
    GbExcecaoICMS: TGroupBox;
    Panel7: TPanel;
    Label40: TLabel;
    Label41: TLabel;
    SpeedButton5: TSpeedButton;
    Exc_CbCst: TComboBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Exc_CbUF: TComboBox;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Exc_CbCalcSt: TComboBox;
    Exc_BtnGravar: TButton;
    Exc_BtnDel: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Exc_Dbg: TDBGrid;
    Shape1: TShape;
    procedure FormShow(Sender: TObject);
    procedure EdtGp1Exit(Sender: TObject);
    procedure EdtSg1Exit(Sender: TObject);
    procedure CkExcecaoICMSClick(Sender: TObject);
    procedure EdtEstqQntKeyPress(Sender: TObject; var Key: Char);
    procedure EdtEstqReserv1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtEstqMin1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtEstqMax1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtBC_ICMS1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtAliq_ICMS1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtGp1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtSg1KeyPress(Sender: TObject; var Key: Char);
    procedure DbCbUndEnter(Sender: TObject);
    procedure CbOrigemCSTEnter(Sender: TObject);
    procedure CbCSTEnter(Sender: TObject);
    procedure Exc_CbUFEnter(Sender: TObject);
    procedure Exc_CbCstEnter(Sender: TObject);
    procedure Exc_CbCalcStEnter(Sender: TObject);
    procedure EdtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CbUndEnter(Sender: TObject);
    procedure BtnProcurarImgClick(Sender: TObject);
    procedure BtnLimparImgClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure BtnBuscaClienteClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure EdtMrgLucroExit(Sender: TObject);
    procedure EdtPrVendaExit(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure BuscarGrupo;
    procedure BuscarSubGrupo;
    procedure BuscarImgProduto(pIndx: Integer);
    procedure findCod(Cod: Integer);
    procedure PreencheSitTribCmb(Cmb: TComboBox);
    function GetSitTribPeloIdxCmb(IdxCmb: Integer): Integer;
    function GetNomeSitTribPeloCST_CSOSN(CST: Integer): String;
  public
    { Public declarations }
  end;

var
  FormCadProduto: TFormCadProduto;
  iIndxTipo: Integer;
  codProd: Integer;

implementation

{$R *.dfm}

uses
  Unt_FrmPrincipal;

procedure TFormCadProduto.BuscarGrupo;
begin
//  if Length(Trim(EdtGp.Text)) = 0 then
//    exit;
//
//  with Unt_DM.dm.FdQuery do
//  begin
//    Close;
//    SQL.Clear;
//
//    SQL.Add('select count(*), nome_grupo from grupos g where g.id_grupo = ' +
//      EdtGp.Text + ' group by nome_grupo');
//
//    Open();
//
//    if FieldByName('count').AsInteger > 0 then
//    begin
//      EdtNomeGp.Text := FieldByName('nome_grupo').AsString;
//    end
//    else
//    begin
//      EdtGp.SetFocus;
//      EdtGp.SelectAll;
//    end;
//
//    Close;
//    SQL.Clear;
//  end;
end;

procedure TFormCadProduto.BuscarImgProduto(pIndx: Integer);
var
  caminho, Target, BtnSelected: String;
  i, position: Integer;
  DoPrompt: Boolean;
begin
//  pIndx = 0 -> Buscar Nova Img;
//  pIndx = 1 -> Buscar Path_Img EdtCod Exit;

  if (pIndx = 0) then begin
    DoPrompt := True;
    try
      OpenPicture.Execute();
      caminho := OpenPicture.Files.GetText;
      Image.Picture.LoadFromFile(Trim(caminho));
    except
      on E:Exception do begin
        Exit;
      end;
    end;

    EdtPathImg.Text := ' ' + caminho;

    if caminho.Contains('C:\Cadastro Clientes\Fotos\Produtos\') then Exit;

    if DoPrompt then begin
      if MsgConfirmacao('Deseja copiar essa imagem para a pasta do sistema?', 'Copiar Imagem') then begin
        position := LastDelimiter('\', Trim(caminho));
        Target := Copy(Trim(caminho), position + 1, Length(Trim(caminho)));

        if not FileExists('C:\Cadastro Clientes\Fotos\Produtos\' + Target) then begin
          CopyFile(PChar(Trim(caminho)), PChar('C:\Cadastro Clientes\Fotos\Produtos\' + Target), False);
          EdtPathImg.Text := 'C:\Cadastro Clientes\Fotos\Produtos\' + Target;
        end else begin
          if MsgConfirmacao('A imagem já existe no diretório do sistema.' + #13 +
            'Deseja substituir?', 'Substituir Imagem') then
          begin
            CopyFile(PChar(Trim(caminho)), PChar('C:\Cadastro Clientes\Fotos\Produtos\' + Target), False);
            EdtPathImg.Text := 'C:\Cadastro Clientes\Fotos\Produtos\'
              + Target;
          end else begin
            EdtPathImg.Text := Trim(caminho);
          end;
        end;
      end;
    end;
  end else if (pIndx = 1) then begin
    try
      if Length(Trim(EdtPathImg.Text)) > 0 then Image.Picture.LoadFromFile(Trim(EdtPathImg.Text));
    except
    end;
  end;
end;

procedure TFormCadProduto.BuscarSubGrupo;
begin
  if Length(Trim(EdtSg.Text)) = 0 then
    exit;

//  with Unt_DM.dm.FdQuery do
//  begin
//    Close;
//    SQL.Clear;
//
//    SQL.Add('select count(*), nome_subgrupo from subgrupos g where g.id_subgrupo = '
//      + EdtSg.Text + ' group by nome_subgrupo');
//
//    Open();
//
//    if FieldByName('count').AsInteger > 0 then
//    begin
//      EdtNomeSg.Text := FieldByName('nome_subgrupo').AsString;
//    end
//    else
//    begin
//      EdtSg.SetFocus;
//      EdtSg.SelectAll;
//    end;
//
//    Close;
//    SQL.Clear;
//  end;
end;

procedure TFormCadProduto.CbCSTEnter(Sender: TObject);
begin
  CbCST.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadProduto.CbOrigemCSTEnter(Sender: TObject);
begin
  CbOrigemCST.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadProduto.CbUndEnter(Sender: TObject);
begin
  CbUnd.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadProduto.CkExcecaoICMSClick(Sender: TObject);
begin
  GbExcecaoICMS.Enabled := CkExcecaoICMS.Checked;
  if GbExcecaoICMS.Enabled then GbExcecaoICMS.Color := clWindow
  else GbExcecaoICMS.Color := clBtnFace;
end;

procedure TFormCadProduto.Exc_CbCalcStEnter(Sender: TObject);
begin
  Exc_CbCalcSt.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadProduto.Exc_CbCstEnter(Sender: TObject);
begin
  Exc_CbCst.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadProduto.Exc_CbUFEnter(Sender: TObject);
begin
  Exc_CbUF.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadProduto.DbCbUndEnter(Sender: TObject);
begin
  CbUnd.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadProduto.EdtAliq_ICMS1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#8, '0' .. '9']) then begin
    Key := #0;
  end;
end;

procedure TFormCadProduto.EdtBC_ICMS1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#8, '0' .. '9']) then begin
    Key := #0;
  end;
end;

procedure TFormCadProduto.EdtCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then BtnBuscaCliente.Click;
end;

procedure TFormCadProduto.EdtEstqMax1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#8, #44, #46, '0' .. '9']) then begin
    Key := #0;
  end;
end;

procedure TFormCadProduto.EdtEstqMin1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#8, #44, #46, '0' .. '9']) then begin
    Key := #0;
  end;
end;

procedure TFormCadProduto.EdtEstqQntKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#8, #44, #46, '0' .. '9']) then begin
    Key := #0;
  end;
end;

procedure TFormCadProduto.EdtEstqReserv1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#8, #44, #46, '0' .. '9']) then begin
    Key := #0;
  end;
end;

procedure TFormCadProduto.EdtGp1Exit(Sender: TObject);
begin
  BuscarGrupo;
end;

procedure TFormCadProduto.EdtGp1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#8, '0' .. '9']) then begin
    Key := #0;
  end;
end;

procedure TFormCadProduto.EdtMrgLucroExit(Sender: TObject);
var vlrVenda: Currency;
begin
  if cbLucroFixo.Checked then begin
    vlrVenda := QryProdutoPRCOMPRA_PRODUTO.AsCurrency * (1 + QryProdutoLUCRO_PRODUTO.AsCurrency / 100);
    if QryProdutoPRVENDA_PRODUTO.AsCurrency <> vlrVenda then QryProdutoPRVENDA_PRODUTO.AsCurrency := vlrVenda;
  end else EdtPrVendaExit(Sender);
end;

procedure TFormCadProduto.EdtPrVendaExit(Sender: TObject);
var vlrLucro: Currency;
begin
  if QryProdutoPRCOMPRA_PRODUTO.AsCurrency > 0 then begin
    vlrLucro := ((QryProdutoPRVENDA_PRODUTO.AsCurrency / QryProdutoPRCOMPRA_PRODUTO.AsCurrency) * 100) - 100;
    if QryProdutoLUCRO_PRODUTO.AsCurrency <> vlrLucro then QryProdutoLUCRO_PRODUTO.AsCurrency := vlrLucro;
  end;
end;

procedure TFormCadProduto.EdtSg1Exit(Sender: TObject);
begin
  BuscarSubGrupo;
end;

procedure TFormCadProduto.EdtSg1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#8, '0' .. '9']) then begin
    Key := #0;
  end;
end;

procedure TFormCadProduto.findCod(Cod: Integer);
begin
  with QryProduto do begin
    Close;
    ParamByName('COD').AsInteger := Cod;

    Open;

    if IsEmpty then begin  //Cadastrar Novo
      Append; // Muda o estado da Qry para Insert;

      //Limpar Campos
      EdtCod.Clear;
      EdtNome.Clear;
      EdtGp.Clear;
      EdtNomeGp.Clear;
      EdtSg.Clear;
      EdtNomeSg.Clear;
      EdtCodBarra.Clear;
      EdtRef.Clear;
      EdtEstqQnt.Clear;
      EdtEstqMin.Clear;
      EdtEstqReserv.Clear;
      EdtEstqMax.Clear;
      EdtPrCusto.Clear;
      EdtPrUltCusto.Clear;
      EdtMrgLucro.Clear;
      EdtPrVenda.Clear;
      EdtBC_ICMS.Clear;
      EdtAliq_ICMS.Clear;
      EdtBC_ST.Clear;
      EdtAliq_ST.Clear;

      CbUnd.ItemIndex := -1;
      CbCST.ItemIndex := 0;
      CbOrigemCST.ItemIndex := 0;
      CbTipo.ItemIndex := 0;
      cbLucroFixo.Checked;

      LbOperacao.Caption := 'Cadastrando Produto';
      EdtCod.Text := 'Automático';

      PageControl.ActivePageIndex := 0;
    end else begin // Editar Cadastrado
      Edit; // Muda o estado da Qry para Edit;
      LbOperacao.Caption := 'Editando Produto ' + QryProdutoCOD_PRODUTO.AsString;

      EdtCod.Text := QryProdutoCOD_PRODUTO.AsString;
      EdtEstqQnt.Text := QryProdutoESTOQUE_PRODUTO.AsString;

      CbUnd.ItemIndex := QryProdutoUNIDADE_PRODUTO.AsInteger;
      CbTipo.ItemIndex := QryProdutoTIPO_PRODUTO.AsInteger;
      cbLucroFixo.Checked := QryProdutoLUCROFIXO_PRODUTO.AsInteger.ToBoolean;

      case QryProdutoCST.AsInteger of
         0: CbCST.ItemIndex := 0;
        10: CbCST.ItemIndex := 1;
        20: CbCST.ItemIndex := 2;
        30: CbCST.ItemIndex := 3;
        40: CbCST.ItemIndex := 4;
        41: CbCST.ItemIndex := 5;
        50: CbCST.ItemIndex := 6;
        51: CbCST.ItemIndex := 7;
        60: CbCST.ItemIndex := 8;
        70: CbCST.ItemIndex := 9;
        90: CbCST.ItemIndex := 10;
      end;

      case StrToInt(Copy(QryProdutoCST_PRODUTO.AsString,1,1)) of
        0: CbOrigemCST.ItemIndex := 0;
        1: CbOrigemCST.ItemIndex := 1;
        2: CbOrigemCST.ItemIndex := 2;
        3: CbOrigemCST.ItemIndex := 3;
        4: CbOrigemCST.ItemIndex := 4;
        5: CbOrigemCST.ItemIndex := 5;
        6: CbOrigemCST.ItemIndex := 6;
        7: CbOrigemCST.ItemIndex := 7;
        8: CbOrigemCST.ItemIndex := 8;
      end;
    end;
    EdtCod.Enabled := True;
    EdtCod.SelectAll;
    EdtCod.SetFocus;
  end;
end;

procedure TFormCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryProduto.Close;
  LiberarTrans(QryProduto.Transaction.Name);
end;

procedure TFormCadProduto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (QryProduto.State = dsEdit) then begin
    CanClose := False;
    if QryProduto.Modified and not MsgFixa(UnitFuncoes.tMsgCloseFrm) then Exit;
    findCod(0);
  end else if QryProduto.Modified then begin
    CanClose := False;
    if not MsgFixa(UnitFuncoes.tMsgCancBtn) then Exit;
    findCod(0);
  end;
end;

procedure TFormCadProduto.FormCreate(Sender: TObject);
begin
  QryProduto.Transaction := getNewTrans;
  Frm_principal.ImgListIcons.GetBitmap(3, btnLimpar.Glyph);
  PreencheSitTribCmb(CbCST);
end;

procedure TFormCadProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then Close
  else if (Key = #13) then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFormCadProduto.FormShow(Sender: TObject);
begin
  findCod(codProd);
end;

function TFormCadProduto.GetNomeSitTribPeloCST_CSOSN(CST: Integer): String;
begin
  case CST of
     0: Result := '00 - Tributado integralmente';
    10: Result := '10 - Tributado e com ICMS ST';
    20: Result := '20 - Red. BC';
    30: Result := '30 - Isento/Não tributado e com ICMS ST';
    40: Result := '40 - Isento';
    41: Result := '41 - Não tributado';
    50: Result := '50 - Suspensão';
    51: Result := '51 - Diferimento';
    60: Result := '60 - ICMS cobrado anteriormente por ST';
    70: Result := '70 - Red. BC ST e com ICMS ST';
    90: Result := '90 - Outras';
   101: Result := '101 - Tributado e com permissão de crédito';
   102: Result := '102 - Tributado e sem permissão de crédito';
   103: Result := '103 - Isento';
   201: Result := '201 - Tributado com permissão de crédito e com ST';
   202: Result := '202 - Tributado sem permissão de crédito e com ST';
   203: Result := '203 - Isento de ICMS e com cobrança de ST';
   300: Result := '300 - Imune';
   400: Result := '400 - Não tributado';
   500: Result := '500 - ICMS cobrado ST';
   900: Result := '900 - Outros';
  end;
end;

function TFormCadProduto.GetSitTribPeloIdxCmb(IdxCmb: Integer): Integer;
begin
  //Simples Nacional
  case IdxCmb of
    0: Result := 101;
    1: Result := 102;
    2: Result := 103;
    3: Result := 201;
    4: Result := 202;
    5: Result := 203;
    6: Result := 300;
    7: Result := 400;
    8: Result := 500;
    9: Result := 900;
  end;

  //Geral
  {case IdxCmb of
     0: Result := 00;
     1: Result := 10;
     2: Result := 20;
     3: Result := 30;
     4: Result := 40;
     5: Result := 41;
     6: Result := 50;
     7: Result := 51;
     8: Result := 60;
     9: Result := 70;
    10: Result := 90;
  end;}
end;

procedure TFormCadProduto.btnDeletarClick(Sender: TObject);
begin
  if QryProduto.State = dsEdit then begin
    if not MsgFixa(UnitFuncoes.tMsgDelBtn) then Exit;
    try
      QryProduto.Delete;
      QryProduto.Transaction.Commit;
      findCod(0);
    except
      on E:Exception do begin
        if QryProduto.Transaction.InTransaction then QryProduto.Transaction.Rollback;
        QryProduto.Cancel;
        MsgErro('Ocorreu um Erro ao Excluir o Produto.' + #13 + E.Message);
      end;
    end;
  end;
end;

procedure TFormCadProduto.btnGravarClick(Sender: TObject);
begin
  //if not TestaCampos then exit; //Testar Campos
  try
    if (QryProduto.State = dsInsert) then begin
      QryProdutoCOD_PRODUTO.AsInteger := StrToInt(getCampoSelect('SELECT GEN_ID(ID_CLIENTES, 1) FROM RDB$DATABASE'));
      QryProdutoDTCADASTRO_PRODUTO.AsDateTime := Now;
    end else if (QryProduto.State = dsEdit) then begin
      QryProdutoCOD_PRODUTO.AsInteger := StrToInt(EdtCod.Text);
    end;

    QryProdutoESTOQUE_PRODUTO.AsCurrency := StrToCurr(EdtEstqQnt.Text);
    QryProdutoUNIDADE_PRODUTO.AsInteger := CbUnd.ItemIndex;
    QryProdutoCST_PRODUTO.AsString := Copy(CbOrigemCST.Items.GetText, 1, 1) + Copy(CbCST.Items.GetText, 1, 2);
    QryProdutoTIPO_PRODUTO.AsInteger := CbTipo.ItemIndex;
    QryProdutoDTALTERACAO.AsDateTime := Now;
    QryProdutoLUCROFIXO_PRODUTO.AsInteger := cbLucroFixo.Checked.ToInteger;

    QryProduto.Post;
    QryProduto.Transaction.Commit;
    findCod(0);
  except
    on E:Exception do begin
      if QryProduto.Transaction.InTransaction then QryProduto.Transaction.Rollback;
      QryProduto.Cancel;
      MsgErro('Ocorreu um Erro ao Gravar o Produto.' + #13 + E.Message);
    end;
  end;
end;

procedure TFormCadProduto.btnLimparClick(Sender: TObject);
begin
  findCod(0);
end;

procedure TFormCadProduto.BtnLimparImgClick(Sender: TObject);
begin
  EdtPathImg.Text := '';
  Image.Picture := nil;
end;

procedure TFormCadProduto.BtnProcurarImgClick(Sender: TObject);
begin
  BuscarImgProduto(0);
  BtnProcurarImg.SetFocus;
end;

procedure TFormCadProduto.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 3 then BtnProcurarImg.SetFocus;
end;

procedure TFormCadProduto.PreencheSitTribCmb(Cmb: TComboBox);
var
  I: Integer;
begin
  Cmb.Clear;
  for I := 0 to 10 do Cmb.Items.Add(GetNomeSitTribPeloCST_CSOSN(GetSitTribPeloIdxCmb(i)));
  Cmb.ItemIndex := 0;
end;

procedure TFormCadProduto.BtnBuscaClienteClick(Sender: TObject);
var retorno: string;
begin
  retorno := Unt_FrmPrincipal.Frm_principal.AbreTelaBuscaProduto;
  if (retorno <> '') then begin
    EdtCod.Text := retorno;
    EdtCod.SelectAll;
    findCod(StrToInt(retorno));
  end;
end;

end.
