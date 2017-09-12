unit Unt_FrmListaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.Menus, Vcl.ExtCtrls, FIBDataSet,
  pFIBDataSet, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB,
  ppDesignLayer, ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  ppTypes, ppViewr, FIBDatabase, pFIBDatabase, Datasnap.Provider,
  pFIBClientDataSet, Datasnap.DBClient, ppVar, ppStrtch, ppMemo, ACBrBase,
  ACBrValidador;

type
  TFormListClientes = class(TForm)
    DBGridListagem: TDBGrid;
    DsListaClientes: TDataSource;
    mnRelatorios: TPopupMenu;
    PnFiltro: TPanel;
    PageControl: TPageControl;
    TsFiltro1: TTabSheet;
    TsFiltro2: TTabSheet;
    EdtCodCidade: TEdit;
    EdtCodCliente: TEdit;
    EdtUf: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BtnBuscarCid: TSpeedButton;
    btnBuscarCli: TSpeedButton;
    EdtRenda: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdtIdade: TEdit;
    Label16: TLabel;
    EdtTime: TEdit;
    Label4: TLabel;
    CbTipoPessoa: TComboBox;
    EdtRendaP2: TEdit;
    Label9: TLabel;
    QryListaClientes: TpFIBDataSet;
    QryListaClientesCOD_CLIENTE: TFIBIntegerField;
    QryListaClientesNOME_CLIENTE: TFIBStringField;
    QryListaClientesENDER_CLIENTE: TFIBStringField;
    QryListaClientesBAIRRO_CLIENTE: TFIBStringField;
    QryListaClientesSEXO_CLIENTE: TFIBSmallIntField;
    QryListaClientesDTNASC_CLIENTE: TFIBDateField;
    QryListaClientesFONER_CLIENTE: TFIBStringField;
    QryListaClientesCELULAR_CLIENTE: TFIBStringField;
    QryListaClientesCGC_CLIENTE: TFIBStringField;
    QryListaClientesRG_CLIENTE: TFIBStringField;
    QryListaClientesCODCIDADE_CLIENTE: TFIBIntegerField;
    QryListaClientesNOME_CIDADE: TFIBStringField;
    QryListaClientesCEP_CIDADE: TFIBStringField;
    QryListaClientesDEPENDENTES_CLIENTE: TFIBStringField;
    QryListaClientesDTCADASTRO_CLIENTE: TFIBDateField;
    QryListaClientesCEP_CLIENTE: TFIBStringField;
    QryListaClientesESTADOCIVIL_CLIENTE: TFIBSmallIntField;
    QryListaClientesEMAIL_CLIENTE: TFIBStringField;
    QryListaClientesCLASSIFICACAO_CLIENTE: TFIBSmallIntField;
    QryListaClientesINSCRICAO_CLIENTE: TFIBStringField;
    QryListaClientesAPELIDO_CLIENTE: TFIBStringField;
    QryListaClientesNOMEMAE_CLIENTE: TFIBStringField;
    QryListaClientesNOMEPAI_CLIENTE: TFIBStringField;
    QryListaClientesDTADMISSAO_CLIENTE: TFIBDateField;
    QryListaClientesDTALTERACAO_CLIENTE: TFIBDateTimeField;
    QryListaClientesENQUADRAMENTO_CLIENTE: TFIBSmallIntField;
    PnTop: TPanel;
    PnBtnBottom: TPanel;
    LbRegistros: TLabel;
    DtCadastroIni: TJvDatePickerEdit;
    pipeRelListCli: TppDBPipeline;
    pRepRelListCli: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    LbNomeEmpresa: TppLabel;
    LbEnderEmpresa: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    mBtnRelCliUFCidRp: TMenuItem;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    TransListClientes: TpFIBTransaction;
    mBtnRelCliUFQr: TMenuItem;
    QryListaClientesCIDADE_UF: TFIBStringField;
    QryListaClientesUF_CIDADE: TFIBStringField;
    mBtnRelCliUFCidQr: TMenuItem;
    ppDbTxtCodCli: TppDBText;
    ppDbTxtTelef: TppDBText;
    cdsAux: TpFIBClientDataSet;
    cdsProvAux: TpFIBDataSetProvider;
    cdsAuxCOD_CLIENTE: TIntegerField;
    cdsAuxNOME_CLIENTE: TStringField;
    cdsAuxENDER_CLIENTE: TStringField;
    cdsAuxBAIRRO_CLIENTE: TStringField;
    cdsAuxSEXO_CLIENTE: TSmallintField;
    cdsAuxDTNASC_CLIENTE: TDateField;
    cdsAuxFONER_CLIENTE: TStringField;
    cdsAuxCELULAR_CLIENTE: TStringField;
    cdsAuxCPF_CLIENTE: TStringField;
    cdsAuxCGC_CLIENTE: TStringField;
    cdsAuxRG_CLIENTE: TStringField;
    cdsAuxCODCIDADE_CLIENTE: TIntegerField;
    cdsAuxNOME_CIDADE: TStringField;
    cdsAuxCEP_CIDADE: TStringField;
    cdsAuxDEPENDENTES_CLIENTE: TStringField;
    cdsAuxDTCADASTRO_CLIENTE: TDateField;
    cdsAuxCEP_CLIENTE: TStringField;
    cdsAuxESTADOCIVIL_CLIENTE: TSmallintField;
    cdsAuxEMAIL_CLIENTE: TStringField;
    cdsAuxCLASSIFICACAO_CLIENTE: TSmallintField;
    cdsAuxINSCRICAO_CLIENTE: TStringField;
    cdsAuxAPELIDO_CLIENTE: TStringField;
    cdsAuxNOMEMAE_CLIENTE: TStringField;
    cdsAuxNOMEPAI_CLIENTE: TStringField;
    cdsAuxDTADMISSAO_CLIENTE: TDateField;
    cdsAuxDTALTERACAO_CLIENTE: TDateTimeField;
    cdsAuxTIPO_PESSOA: TStringField;
    cdsAuxENQUADRAMENTO_CLIENTE: TSmallintField;
    cdsAuxCIDADE_UF: TStringField;
    cdsAuxUF_CIDADE: TStringField;
    dsAux: TDataSource;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    QryListaClientesCPF_CLIENTE: TFIBStringField;
    ppFooterBand1: TppFooterBand;
    ppLbDoc: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    LbQntRegistros: TppLabel;
    ppLine2: TppLine;
    mBtnRelCliUFRp: TMenuItem;
    mBtnRelListCli: TMenuItem;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    btnCancelar: TBitBtn;
    btnRel: TSpeedButton;
    pnBtnsFiltro: TPanel;
    BtnAtualizar: TButton;
    BtnLimpar: TButton;
    DtCadastroFim: TJvDatePickerEdit;
    Label1: TLabel;
    procedure BtnAtualizarClick(Sender: TObject);
    procedure btnBuscarCliClick(Sender: TObject);
    procedure BtnBuscarCidClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SbRelatoriosClick(Sender: TObject);
    procedure SalvarRelaodeClientesemPDF1Click(Sender: TObject);
    procedure DBGridListagemDblClick(Sender: TObject);
    procedure EdtCodCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mBtnRelCliUFQrClick(Sender: TObject);
    procedure QryListaClientesCELULAR_CLIENTEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure mBtnRelCliUFCidQrClick(Sender: TObject);
    procedure LbQntRegistrosPrint(Sender: TObject);
    procedure pRepRelListCliBeforePrint(Sender: TObject);
    procedure mBtnRelCliUFCidRpClick(Sender: TObject);
    procedure QryListaClientesFONER_CLIENTEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure mBtnRelCliUFRpClick(Sender: TObject);
    procedure mBtnRelListCliClick(Sender: TObject);
    procedure ppDbTxtTelefGetText(Sender: TObject; var Text: string);
    procedure ppLbDocPrint(Sender: TObject);
    procedure btnRelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pRepRelListCliAfterPrint(Sender: TObject);
    procedure QryListaClientesENQUADRAMENTO_CLIENTEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QryListaClientesCPF_CLIENTEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QryListaClientesCGC_CLIENTEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormResize(Sender: TObject);
    procedure DtCadastroIniKeyPress(Sender: TObject; var Key: Char);
    procedure DtCadastroFimKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridListagemTitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure RowSelecionada;
    procedure LimparCampos;
    procedure PreencheCabecalho;
    procedure AbreTelaRelClienteQreport(tipo: Integer);
  public
    { Public declarations }
  end;

var
  FormListClientes: TFormListClientes;

implementation

uses Unt_DM, Unt_FrmBuscaCliente, UnitBuscarCid, Unt_FrmCadCliente, Unt_FrmBuscaCidade, Unt_FrmPrincipal,
  Unt_FrmRelListaClientes, UnitFuncoes, Unt_Dados;

{$R *.dfm}

var
  tipoRel: Integer;

procedure TFormListClientes.AbreTelaRelClienteQreport(tipo: Integer);
begin
  if QryListaClientes.RecordCount <= 0 then begin
    ShowMessage('Não há dados para serem exibidos.');
    exit;
  end;

  try
    with Frm_RelListaClientes do begin
      if (Frm_RelListaClientes = nil) then Application.CreateForm(TFrm_RelListaClientes, Frm_RelListaClientes);
      tipoRel := tipo;
      QrepRelListaClientes.Preview;
    end;
  finally
    FreeAndNil(Frm_RelListaClientes);
  end;
end;

procedure TFormListClientes.BtnAtualizarClick(Sender: TObject);
begin
  with QryListaClientes do begin
    try
      Close;
      SelectSQL.Clear;
      Conditions.CancelApply;
      Conditions.Clear;

      SQLs.SelectSQL.Add('SELECT');
      SQLs.SelectSQL.Add('C.COD_CLIENTE,');
      SQLs.SelectSQL.Add('C.NOME_CLIENTE,');
      SQLs.SelectSQL.Add('COALESCE(C.ENDER_CLIENTE || '+QuotedStr(',')+' || C.NUM_CLIENTE, C.ENDER_CLIENTE) AS ENDER_CLIENTE,');
      SQLs.SelectSQL.Add('C.BAIRRO_CLIENTE,');
      SQLs.SelectSQL.Add('C.SEXO_CLIENTE,');
      SQLs.SelectSQL.Add('C.DTNASC_CLIENTE,');
      SQLs.SelectSQL.Add('C.FONER_CLIENTE,');
      SQLs.SelectSQL.Add('C.CELULAR_CLIENTE,');
      SQLs.SelectSQL.Add('C.CPF_CLIENTE,');
      SQLs.SelectSQL.Add('C.CGC_CLIENTE,');
      SQLs.SelectSQL.Add('C.RG_CLIENTE,');
      SQLs.SelectSQL.Add('C.CODCIDADE_CLIENTE,');
      SQLs.SelectSQL.Add('CI.NOME_CIDADE || ''-'' || CI.UF_CIDADE AS CIDADE_UF,');
      SQLs.SelectSQL.Add('CI.NOME_CIDADE,');
      SQLs.SelectSQL.Add('CI.CEP_CIDADE,');
      SQLs.SelectSQL.Add('CI.UF_CIDADE,');
      SQLs.SelectSQL.Add('C.DEPENDENTES_CLIENTE,');
      SQLs.SelectSQL.Add('C.DTCADASTRO_CLIENTE,');
      SQLs.SelectSQL.Add('C.CEP_CLIENTE,');
      SQLs.SelectSQL.Add('C.ESTADOCIVIL_CLIENTE,');
      SQLs.SelectSQL.Add('C.EMAIL_CLIENTE,');
      SQLs.SelectSQL.Add('C.CLASSIFICACAO_CLIENTE,');
      SQLs.SelectSQL.Add('C.INSCRICAO_CLIENTE,');
      SQLs.SelectSQL.Add('C.APELIDO_CLIENTE,');
      SQLs.SelectSQL.Add('C.NOMEMAE_CLIENTE,');
      SQLs.SelectSQL.Add('C.NOMEPAI_CLIENTE,');
      SQLs.SelectSQL.Add('C.DTADMISSAO_CLIENTE,');
      SQLs.SelectSQL.Add('C.DTALTERACAO_CLIENTE,');
      SQLs.SelectSQL.Add('C.TIPO_PESSOA,');
      SQLs.SelectSQL.Add('C.ENQUADRAMENTO_CLIENTE');
      SQLs.SelectSQL.Add('FROM');
      SQLs.SelectSQL.Add('CLIENTES C LEFT JOIN CIDADES CI ON (C.CODCIDADE_CLIENTE = CI.COD_CIDADE)');

      if Length(Trim(EdtCodCliente.Text)) > 0 then Conditions.AddCondition('CODCLI', 'C.COD_CLIENTE IN (' + EdtCodCliente.Text + ')', True);
      if Length(Trim(EdtCodCidade.Text)) > 0 then Conditions.AddCondition('CID','CI.COD_CIDADE IN (' + EdtCodCidade.Text + ')', True);
      if Length(Trim(EdtUf.Text)) > 0 then Conditions.AddCondition('UF','CI.UF_CIDADE = ''' + EdtUf.Text + '''', True);

      case CbTipoPessoa.ItemIndex of
        1: Conditions.AddCondition('TPPES','C.TIPO_PESSOA = ''F''', True);
        2: Conditions.AddCondition('TPPES','C.TIPO_PESSOA = ''J''', True);
      end;

      if (DtCadastroIni.Date <> StrToDate('30/12/1899')) and (DtCadastroFim.Date <> StrToDate('30/12/1899')) then
        Conditions.AddCondition('DTCAD','C.DTADMISSAO_CLIENTE BETWEEN ' +
        '''' + UnitFuncoes.FormataData(DtCadastroIni.Text) + ''' AND ''' +
        UnitFuncoes.FormataData(DtCadastroFim.Text) + '''', True)
      else if (DtCadastroIni.Date <> StrToDate('30/12/1899')) then
        Conditions.AddCondition('DTCAD','C.DTADMISSAO_CLIENTE > ' + '''' +
        UnitFuncoes.FormataData(DtCadastroIni.Text) + '''', True)
      else if (DtCadastroFim.Date <> StrToDate('30/12/1899')) then
        Conditions.AddCondition('DTCAD','C.DTADMISSAO_CLIENTE < ' + '''' +
        UnitFuncoes.FormataData(DtCadastroFim.Text) + '''', True);

      SQLs.SelectSQL.Add('ORDER BY COD_CLIENTE');

      if (Conditions.Count > 0) then Conditions.Apply;

      Open;
    except
      on E: exception do begin
        ShowMessage('Erro ao executar busca. Erro: '+e.Message);
        Transaction.Rollback;
        Close;
        Exit;
      end;
    end;
  end;

  QryListaClientes.Last;
  LbRegistros.Caption := 'Registros Encontrados: ' + QryListaClientes.RecordCount.ToString;
  QryListaClientes.First;
  DBGridListagem.SetFocus;
end;

procedure TFormListClientes.BtnLimparClick(Sender: TObject);
begin
  LimparCampos;
end;

procedure TFormListClientes.btnRelClick(Sender: TObject);
var
  pnt: TPoint;
begin
  if GetCursorPos(pnt) then
    mnRelatorios.Popup(pnt.X, pnt.Y);
end;

procedure TFormListClientes.DBGridListagemDblClick(Sender: TObject);
begin
  Frm_principal.AbreTelaCliente(QryListaClientesCOD_CLIENTE.AsInteger);
end;

procedure TFormListClientes.DBGridListagemTitleClick(Column: TColumn);
begin
  QryListaClientes.DoSortMy(Column.FieldName);
end;

procedure TFormListClientes.DtCadastroFimKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #116) then begin
    Key := #0;
    DtCadastroFim.Text := DateToStr(Date);
    DtCadastroFim.SelectAll;
  end;
end;

procedure TFormListClientes.DtCadastroIniKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #116) then begin
    Key := #0;
    DtCadastroIni.Text := DateToStr(Date);
    DtCadastroIni.SelectAll;
  end;
end;

procedure TFormListClientes.EdtCodCidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then BtnBuscarCid.Click;
end;

procedure TFormListClientes.EdtCodClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then btnBuscarCli.Click;
end;

procedure TFormListClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryListaClientes.Close;
  LimparCampos;
end;

procedure TFormListClientes.FormCreate(Sender: TObject);
begin
  Unt_FrmPrincipal.Frm_principal.ImgListIcons.GetBitmap(0, BtnBuscarCid.Glyph);
  Unt_FrmPrincipal.Frm_principal.ImgListIcons.GetBitmap(0, btnBuscarCli.Glyph);
  Unt_FrmPrincipal.Frm_principal.ImgListIcons.GetBitmap(0, btnBuscarCli.Glyph);
end;

procedure TFormListClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then BtnAtualizar.Click;
end;

procedure TFormListClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TFormListClientes.FormResize(Sender: TObject);
begin
  pnBtnsFiltro.Left := (PnTop.Width - pnBtnsFiltro.Width) div 2;
end;

procedure TFormListClientes.FormShow(Sender: TObject);
begin
  CbTipoPessoa.ItemIndex := 0;
end;

procedure TFormListClientes.LbQntRegistrosPrint(Sender: TObject);
begin
  LbQntRegistros.Caption := 'Total Registros: ' + cdsAux.RecordCount.ToString;
end;

procedure TFormListClientes.LimparCampos;
begin
  PageControl.ActivePageIndex := 0;
  EdtUf.Clear;
  EdtCodCliente.Clear;
  DtCadastroIni.Clear;
  EdtCodCidade.Clear;
  DtCadastroIni.Clear;
  DtCadastroFim.Clear;
  CbTipoPessoa.ItemIndex := 0;
end;

procedure TFormListClientes.ppDbTxtTelefGetText(Sender: TObject;
  var Text: string);
begin
  if Length(Text) > 0 then Text := FormataTelefone(Remove_Char_Especial(Text));
end;

procedure TFormListClientes.ppLbDocPrint(Sender: TObject);
begin
  if (Length(cdsAuxCPF_CLIENTE.AsString) = 11) then ppLbDoc.Caption := FormataCNPJ_CPF(cdsAuxCPF_CLIENTE.AsString)
  else if (Length(cdsAuxCGC_CLIENTE.AsString) = 14) then ppLbDoc.Caption := FormataCNPJ_CPF(cdsAuxCGC_CLIENTE.AsString)
  else ppLbDoc.Caption := '';
end;

procedure TFormListClientes.PreencheCabecalho;
begin
  lbNomeEmpresa.Caption := UnitFuncoes.FormataPalavra(Unt_Dados.nomeEmpresa);
  LbEnderEmpresa.Caption := Unt_Dados.enderecoEmpresa + ', ' + Unt_Dados.numEmpresa + ', ' +
                            Unt_Dados.bairroEmpresa + '. ' + Unt_Dados.cidadeUfEmpresa +
                            '   CEP: ' + UnitFuncoes.FormataCEP(Unt_Dados.cepEmpresa)
end;

procedure TFormListClientes.pRepRelListCliAfterPrint(Sender: TObject);
begin
  cdsAux.Close;
end;

procedure TFormListClientes.pRepRelListCliBeforePrint(Sender: TObject);
begin
  if (QryListaClientes.RecordCount >= 0) then begin
    //tipo = 1; Rel Listagem de Cli
    //tipo = 2: Rel. Cli por Cidade
    //tipo = 3: Rel Cli por UF/Cidade

    cdsAux.Open;
    cdsAux.Refresh;

    if (tipoRel = 3) then begin
      ppGroupHeaderBand1.Visible := Visible;
      ppGroupHeaderBand2.Visible := Visible;
      ppGroupFooterBand1.Visible := Visible;
      ppGroupFooterBand2.Visible := Visible;
      cdsAux.IndexName := 'IDX_UF_CID_CLI';
    end else if (tipoRel = 2) then begin
      ppGroupHeaderBand1.Visible := Visible;
      ppGroupHeaderBand2.Visible := False;
      ppGroupFooterBand1.Visible := Visible;
      ppGroupFooterBand2.Visible := Visible;
      cdsAux.IndexName := 'IDX_CID_CLI';
    end else if (tipoRel = 1) then begin
      ppGroupHeaderBand1.Visible := False;
      ppGroupHeaderBand2.Visible := False;
      ppGroupFooterBand1.Visible := False;
      ppGroupFooterBand2.Visible := False;
      cdsAux.IndexName := 'IDX_CLI';
    end;
    PreencheCabecalho;
  end else begin
    ShowMessage('Não há dados para serem exibidos.');
    Exit;
  end;
end;

procedure TFormListClientes.QryListaClientesCELULAR_CLIENTEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if (Sender.AsString <> '') then Text := FormataTelefone(Sender.AsString);
end;

procedure TFormListClientes.QryListaClientesCGC_CLIENTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := UnitFuncoes.FormataCNPJ_CPF(Sender.AsString);
end;

procedure TFormListClientes.QryListaClientesCPF_CLIENTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := UnitFuncoes.FormataCNPJ_CPF(Sender.AsString);
end;

procedure TFormListClientes.QryListaClientesENQUADRAMENTO_CLIENTEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    0: Text := 'Simples Nacional';
    1: Text := 'Geral';
    2: Text := 'Orgão Público';
    3: Text := 'Cons. Final Isento';
    4: Text := 'Cons. Final Não Contribuinte';
    5: Text := 'Cons. Final Contribuinte';
    6: Text := 'Orgão Público Federal';
  end;
end;

procedure TFormListClientes.QryListaClientesFONER_CLIENTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if (Sender.AsString <> '') then Text :=
    FormataTelefone(Remove_Char_Especial(Sender.AsString));
end;

procedure TFormListClientes.mBtnRelCliUFQrClick(Sender: TObject);
begin
  AbreTelaRelClienteQreport(1);
end;

procedure TFormListClientes.mBtnRelCliUFRpClick(Sender: TObject);
begin
  tipoRel := 2;
  pRepRelListCli.Print;
end;

procedure TFormListClientes.mBtnRelCliUFCidRpClick(Sender: TObject);
begin
  tipoRel := 3;
  pRepRelListCli.Print;
end;

procedure TFormListClientes.mBtnRelCliUFCidQrClick(Sender: TObject);
begin
  AbreTelaRelClienteQreport(2);
end;

procedure TFormListClientes.mBtnRelListCliClick(Sender: TObject);
begin
  tipoRel := 1;
  pRepRelListCli.Print;
end;

procedure TFormListClientes.RowSelecionada;
var
  i: Integer;
  cod: String;
begin
  if Length(Trim(EdtCodCliente.Text)) = 0 then
  begin
    EdtCodCliente.Text := EdtCodCliente.Text + cod;
  end
  else
  begin
    EdtCodCliente.Text := EdtCodCliente.Text + ',' + cod;
  end;
end;

procedure TFormListClientes.SalvarRelaodeClientesemPDF1Click(Sender: TObject);
begin
  pRepRelListCli.ShowPrintDialog := False;
  pRepRelListCli.DeviceType := dtArchive;
  pRepRelListCli.ArchiveFileName := 'C:\Users\DS14\Desktop\Teste.pdf';
  pRepRelListCli.Print;
end;

procedure TFormListClientes.BtnBuscarCidClick(Sender: TObject);
begin
  if Length(EdtCodCidade.Text) = 0 then EdtCodCidade.Text := Frm_principal.AbreTelaBuscaCidade
  else EdtCodCidade.Text := EdtCodCidade.Text + ',' + Frm_principal.AbreTelaBuscaCidade
end;

procedure TFormListClientes.btnBuscarCliClick(Sender: TObject);
begin
  if Length(EdtCodCliente.Text) = 0 then EdtCodCliente.Text := Unt_FrmPrincipal.Frm_principal.AbreTelaBuscaCliente
  else EdtCodCliente.Text := EdtCodCliente.Text + ',' + Unt_FrmPrincipal.Frm_principal.AbreTelaBuscaCliente;
end;

procedure TFormListClientes.SbRelatoriosClick(Sender: TObject);
var
  pnt: TPoint;
begin
  if GetCursorPos(pnt) then
    mnRelatorios.Popup(pnt.X, pnt.Y);
end;

end.
