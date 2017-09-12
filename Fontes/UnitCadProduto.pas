unit UnitCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.Menus,
  UnitCadCidade, UnitListClientes, UnitListCidades,
  UnitBuscador, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.pngimage, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ExtDlgs, ACBrBase, ACBrValidador, FIBDatabase,
  pFIBDatabase, FIBDataSet, pFIBDataSet;

type
  TFormCadastroCliente = class(TForm)
    BtnSalvar: TButton;
    BtnLimpar: TButton;
    BtnCancelar: TButton;
    BtnDeletar: TButton;
    OpenPicture: TOpenPictureDialog;
    PopupMenu1: TPopupMenu;
    teste11: TMenuItem;
    Panel2: TPanel;
    PageControl: TPageControl;
    TSheetPrincipal: TTabSheet;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    LbCpfCnpj: TLabel;
    LbRgIe: TLabel;
    LbResultCpfCnpj: TLabel;
    LbResultRgIe: TLabel;
    SbDown: TSpeedButton;
    CbIdade: TComboBox;
    CbSexo: TComboBox;
    EdtBairro: TEdit;
    EdtEndereco: TEdit;
    EdtLogradouro: TEdit;
    EdtNum: TEdit;
    EdtTelefone: TMaskEdit;
    GroupBox1: TGroupBox;
    sbProcurar: TSpeedButton;
    sbEditAdd: TSpeedButton;
    EdtNomeCidade: TEdit;
    EdtCodCidade: TEdit;
    MaskEdtCep: TMaskEdit;
    MaskEdtNome: TMaskEdit;
    EdtCod: TEdit;
    GbTipoCad: TGroupBox;
    RbPFisic: TRadioButton;
    RbPJurid: TRadioButton;
    MaskEdtRgIe: TMaskEdit;
    MaskEdtCpfCnpj: TMaskEdit;
    TSheetAdicional: TTabSheet;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label15: TLabel;
    Label3: TLabel;
    EdtTime: TEdit;
    EdtRenda: TEdit;
    EdtApelido: TEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EdtRendMae: TEdit;
    EdtRendPai: TEdit;
    EdtNomeMae: TEdit;
    EdtNomePai: TEdit;
    TabSheet3: TTabSheet;
    Label19: TLabel;
    MeLivre: TMemo;
    TabSheet1: TTabSheet;
    Label20: TLabel;
    BtnProcurarImg: TButton;
    BtnLimparImg: TButton;
    Panel1: TPanel;
    Image: TImage;
    EdtResultImg: TEdit;
    SbBuscarSefaz: TSpeedButton;
    ACBrValidador: TACBrValidador;
    Panel3: TPanel;
    QryCliente: TpFIBDataSet;
    TransCliente: TpFIBTransaction;

    procedure LimparCampos;
    procedure ProxCampoEnter(Sender: TEdit; Key: Word);
    function VerificarCampos(codOperacao: Integer): Boolean;
    procedure BuscarDados;
    procedure EscPresionado;
    procedure ControlarEdtCod(bol: Boolean);
    procedure FormataCampo(numCampo: Integer; strCampo: string);
    procedure SalvarRegistroDB;
    function VerificarUpdateDB: Boolean;
    procedure UpdateRegistroDB;
    function VerificarCidade: Boolean;

    procedure EdtCEPTyping(Sender: TObject);
    procedure EdtNomeTyping(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);

    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);

    procedure EdtCodKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtUFKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdtCepKeyPress(Sender: TObject; var Key: Char);
    procedure EdtEnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNumKeyPress(Sender: TObject; var Key: Char);
    procedure EdtBairroKeyPress(Sender: TObject; var Key: Char);
    procedure EdtLogradouroKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodExit(Sender: TObject);
    procedure MnCadCidadeClick(Sender: TObject);
    procedure SbListClientesClick(Sender: TObject);
    procedure CbSexoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure CbSexoEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbProcurarClick(Sender: TObject);
    procedure sbEditAddClick(Sender: TObject);
    procedure EdtCodCidadeExit(Sender: TObject);
    procedure CbIdadeEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnDeletarClick(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RbPFisicClick(Sender: TObject);
    procedure RbPJuridClick(Sender: TObject);
    procedure RbPFisicKeyPress(Sender: TObject; var Key: Char);
    procedure RbPJuridKeyPress(Sender: TObject; var Key: Char);
    procedure RbPFisicEnter(Sender: TObject);
    procedure BtnProcurarImgClick(Sender: TObject);
    procedure BtnLimparImgClick(Sender: TObject);
    procedure MaskEdtCpfCnpjExit(Sender: TObject);
    procedure MaskEdtRgIeExit(Sender: TObject);
    procedure GbTipoCadExit(Sender: TObject);
    procedure SbDownClick(Sender: TObject);
    procedure teste11Click(Sender: TObject);
    procedure IENORMA1Click(Sender: TObject);
    procedure EdtApelidoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtRendaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTimeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNomePaiKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNomeMaeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtRendPaiKeyPress(Sender: TObject; var Key: Char);
    procedure EdtRendMaeKeyPress(Sender: TObject; var Key: Char);
    procedure PageControlChange(Sender: TObject);
    procedure EdtRendaExit(Sender: TObject);
    procedure EdtRendPaiExit(Sender: TObject);
    procedure EdtRendMaeExit(Sender: TObject);
    procedure FormPrincipal1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SbBuscarSefazClick(Sender: TObject);
  private
    { Private declarations }
    function BuscarCidadeDB: Boolean;
    procedure mudarIconeSb(index: Integer);
    procedure abrirFormBuscador(index: Integer);
    procedure AddDadosCadCidade;
    function PromptUser(msg: string): Boolean;
    function PromptUserFull(msg: string; title: string; msgBtn1: string;
      msgBtn2: string; indxAction: Integer; indxSound: Integer): Boolean;
    function CodManual: Boolean;
    function CamposEmBranco: Boolean;
    procedure AjustarCadTipo;
    function EditarRgIe: Boolean;
    function ValidarCpfCnpj: Boolean;
    function ValidarIE: Boolean;
    procedure FocoEdtCod;
    procedure buscarFotoUser(indx: Integer);
    procedure MascaraDinheiro;
    function VerificarCodExiste: Boolean;
    function TiraMascara(MskEdit: TMaskEdit): String;
  public
    { Public declarations }
    procedure PrepararConsultaCid;
    procedure PrepararConsultaCli();
    procedure ShowModal(pCod: String); Overload;
  end;

var
  FormCadastroCliente: TFormCadastroCliente;
  iconIndex, indxTipoCad, sairIndex, indxSheet, indxAbrirCad: Integer;
  cpfCnpj, rgIe, RendaMae, RendaPai, Renda: string;

implementation

Uses Udm, UdmComponents, UnitBuscarCid, UnitPrincipal, UnitValidaCPF,
  UnitValidaCNPJ, UnitValidaInscricao, Unt_FrmCadProduto;
{$R *.dfm}

procedure TFormCadastroCliente.MascaraDinheiro;
begin
  if Length(Trim(EdtRenda.Text)) > 0 then
  begin
    Renda := EdtRenda.Text;
    EdtRenda.Text := FormatFloat('#,##0.00', StrToFloat(EdtRenda.Text));
  end;

  if Length(Trim(EdtRendPai.Text)) > 0 then
  begin
    RendaPai := EdtRendPai.Text;
    EdtRendPai.Text := FormatFloat('#,##0.00', StrToFloat(EdtRendPai.Text));
  end;

  if Length(Trim(EdtRendMae.Text)) > 0 then
  begin
    RendaMae := EdtRendMae.Text;
    EdtRendMae.Text := FormatFloat('#,##0.00', StrToFloat(EdtRendMae.Text));
  end;
end;

procedure TFormCadastroCliente.MaskEdtCepKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.MaskEdtCpfCnpjExit(Sender: TObject);
begin
  ValidarCpfCnpj;
end;

procedure TFormCadastroCliente.MaskEdtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    // FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
    CbSexo.SetFocus;
  end;
end;

procedure TFormCadastroCliente.MaskEdtRgIeExit(Sender: TObject);
begin
  ValidarIE;
end;

procedure TFormCadastroCliente.MnCadCidadeClick(Sender: TObject);
begin
  UnitCadCidade.indxTrigger := -1;
  UnitCadCidade.indxAddEdit := 0;
  UnitCadCidade.FormCadCidade.LimparCampos(0);
  FormCadCidade.ShowModal;
end;

procedure TFormCadastroCliente.mudarIconeSb(index: Integer);
begin
  // Index = 0 -> Add
  // Index = 1 -> Edit
  sbEditAdd.Glyph := nil;
  UdmComponents.udmComp.ImageList1.GetBitmap(index, sbEditAdd.Glyph);
  sbEditAdd.Transparent := True;
  sbEditAdd.Flat := True;
  iconIndex := index;
end;

function TFormCadastroCliente.EditarRgIe: Boolean;
begin
  if Length(Trim(MaskEdtRgIe.Text)) = 9 then
  begin
    // So para Rg
    rgIe := '';
    Result := False;
  end
  else if Length(Trim(MaskEdtRgIe.Text)) = 0 then
  begin
    // So para IE
    rgIe := '';
    Result := False;
  end
  else
  begin
    rgIe := MaskEdtRgIe.Text;
    // rgIe := StringReplace(MaskEdtRgIe.Text, '.', '',
    // [rfReplaceAll, rfIgnoreCase]);
    // rgIe := StringReplace(rgIe, '-', '', [rfReplaceAll, rfIgnoreCase]);
    Result := True;
  end;
  ValidarIE;
end;

procedure TFormCadastroCliente.EdtApelidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtBairroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtCEPTyping(Sender: TObject);
begin
  FormataCampo(1, MaskEdtCep.Text);
end;

procedure TFormCadastroCliente.EdtCodCidadeExit(Sender: TObject);
begin
  PrepararConsultaCid;
end;

procedure TFormCadastroCliente.EdtCodCidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
    abrirFormBuscador(1);
  end;

  if Key = VK_ADD then
  begin
    FormCadCidade.LimparCampos(0);
    FormCadCidade.ShowModal;
  end;
end;

procedure TFormCadastroCliente.EdtCodCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;

  if not(Key in [#8, '0' .. '9']) then
  begin
    // Discard the key
    Key := #0;
  end;
end;

procedure TFormCadastroCliente.EdtCodExit(Sender: TObject);
begin
  PrepararConsultaCli();
end;

procedure TFormCadastroCliente.EdtCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F3) then
  begin
    abrirFormBuscador(0);
  end;
end;

procedure TFormCadastroCliente.EdtCodKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;

  if not(Key in [#8, '0' .. '9']) then
  begin
    // Discard the key
    Key := #0;
  end;
end;

procedure TFormCadastroCliente.EdtEnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtLogradouroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.abrirFormBuscador(index: Integer);
begin
  if index = 0 then
  begin
    UnitBuscador.FormBuscador.Caption := 'Buscar Cliente';
    UnitBuscador.TipoBusca := 0;
    UnitBuscador.espCli := 0;

    if not EdtCod.Focused then
    begin
      UnitBuscador.CodEdtFocado := False;
    end
    else
    begin
      UnitBuscador.CodEdtFocado := True;
    end;

    UnitBuscador.FormBuscador.RbCliente.Visible := True;
    UnitBuscador.FormBuscador.RbCliente.Checked := True;

//    UnitBuscador.FormBuscador.GbStatement.Visible := False;
    UnitBuscador.FormBuscador.GbData.Visible := True;

    FormBuscador.ShowModal;
  end
  else if index = 1 then
  begin
    UnitBuscarCid.IndxCidade := 0;
    FormBuscarCid.ShowModal;
  end;
end;

procedure TFormCadastroCliente.AddDadosCadCidade;
begin
  // Alimentar os campos do FormCadCidade com os dados da cidade selecionada no EdtCodCidade do FormCadCliente
  FormCadCidade.EdtNomeCidade.Text := EdtNomeCidade.Text;
  FormCadCidade.MaskEdtCep.Text := MaskEdtCep.Text;
end;

procedure TFormCadastroCliente.AjustarCadTipo;
begin
  if RbPFisic.Checked = False then
  begin
    // Se o RbPFisic nao estiver check, entao o RbPJurid esta;
    MaskEdtCpfCnpj.Text := '';
    MaskEdtRgIe.Text := '';
    LbResultCpfCnpj.Caption := '';
    LbCpfCnpj.Caption := 'CNPJ:';
    LbRgIe.Caption := 'Inscrição Estadual:';
    MaskEdtCpfCnpj.EditMask := '##-###.###/####-##;0;_';
    MaskEdtRgIe.EditMask := '';
    MaskEdtRgIe.MaxLength := 15;
    SbDown.Enabled := True;
  end
  else if RbPJurid.Checked = False then
  begin
    // Se o RbPJurid nao estiver check, entao o RbPFisc esta;
    MaskEdtCpfCnpj.Text := '';
    MaskEdtRgIe.Text := '';
    LbResultRgIe.Caption := '';
    LbCpfCnpj.Caption := 'CPF:';
    LbRgIe.Caption := 'RG:';
    MaskEdtCpfCnpj.EditMask := '###.###.###-##;0;_';
    MaskEdtRgIe.EditMask := '###.###.###-##;0;_';
    SbDown.Enabled := False;
  end;
end;

procedure TFormCadastroCliente.BtnCancelarClick(Sender: TObject);
begin
  EscPresionado;
end;

procedure TFormCadastroCliente.BtnDeletarClick(Sender: TObject);
begin
  if ((AnsiCompareStr('Automático', EdtCod.Text) <> 0) and (EdtCod.Text <> ''))
  then
  begin
    if PromptUser('O cadastro será Excluído. ' + #13 + ' Deseja continuar?')
    then
    begin
      with Udm.dm.FdQuery do
      begin
        try
          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM cliente c WHERE c.id_cliente = :p1');
          ParamByName('p1').Value := EdtCod.Text;
          ExecSQL;
        Except
          On E: Exception do
            ShowMessage(E.ClassName + ' error raised, with ' + E.Message);
        end;
      end;
      LimparCampos;
    end;
  end;
end;

procedure TFormCadastroCliente.BtnLimparClick(Sender: TObject);
begin
  BtnLimpar.SetFocus;
  LimparCampos;

  if PageControl.ActivePageIndex = 0 then
  begin
    EdtCod.SetFocus;
  end;
end;

procedure TFormCadastroCliente.BtnLimparImgClick(Sender: TObject);
begin
  EdtResultImg.Text := '';
  Image.Picture := nil;
end;

procedure TFormCadastroCliente.BtnProcurarImgClick(Sender: TObject);
begin
  buscarFotoUser(0);
end;

procedure TFormCadastroCliente.BtnSalvarClick(Sender: TObject);
var
  ResultVerif, upt, jaExiste: Boolean;
begin
  BtnSalvar.SetFocus;

  if AnsiCompareText(EdtCod.Text, 'Automático') <> 0 then
  begin
    upt := VerificarUpdateDB;
  end;

  if (upt = True) then
  begin
    // Agora sei que os dados foram modificados, então verificar se os mesmos
    // Satisfazem os requisitos mínimos de preenchimento dos campos
    ResultVerif := VerificarCampos(1);
    // Se o VerificarCampos retornar False e porque algum dado obrigatorio do cadastro nao foi preenchido
    // Entao nao permitir update.
    if ResultVerif then
    begin
      // Antes, vamos verificar se o usuario quer realmente fazer o update
      if PromptUser('O perfil do usuário foi será atualizado. ' + #13 +
        ' Deseja continuar?') then
      begin
        // Agora que esta tudo ok, fazer Update no DB
        UpdateRegistroDB;
      end;
    end;
  end
  else
  begin
    if EdtCod.Text = 'Automático' then
    begin
      ResultVerif := VerificarCampos(1);
      if ResultVerif = True then
      begin
        SalvarRegistroDB;
        FocoEdtCod;
      end;
    end
    else
    begin
      LimparCampos;
      FocoEdtCod;
    end;
  end;
end;

procedure TFormCadastroCliente.SalvarRegistroDB;
var
  cpfCnpjEditado: String;
begin
  with Udm.dm.FdQuery do
  begin
    try
      Close;
      SQL.Clear;

      if CodManual = False then
      begin
        SQL.Add('INSERT INTO cliente (id_cidade, idade, nome_cliente, sexo, telefone, '
          + 'endereco, num, bairro, logradouro, tipo_cad_cliente, cnpj_cpf_cliente, '
          + 'rg_ie_cliente, apelido_cliente, renda_cliente, time_cliente, pai_cliente, '
          + 'mae_cliente, renda_pai_cliente, renda_mae_cliente, texto_cliente, foto_cliente) '
          + 'VALUES (:codCidPr, :idadePr, :nomePr, :sexoPr, :telefonePr, :enderecoPr, :numPr, '
          + ':bairroPr, :logradouroPr, :tipoCadPr, :cpfCnpjPr, :rgIePr, :apelidoPr, :rendaPr, '
          + ':timePr, :pai, :mae, :rendaPaiPr, :rendaMaePr, :textoPr, :fotoPr)');

        ParamByName('codCidPr').Value := StrToInt(EdtCodCidade.Text);
        ParamByName('idadePr').Value := CbIdade.Text;
        ParamByName('nomePr').Value := MaskEdtNome.Text;
        ParamByName('sexoPr').Value := CbSexo.Text;
        ParamByName('telefonePr').Value := EdtTelefone.Text;
        ParamByName('enderecoPr').Value := EdtEndereco.Text;
        ParamByName('numPr').Value := EdtNum.Text;
        ParamByName('bairroPr').Value := EdtBairro.Text;
        ParamByName('logradouroPr').Value := EdtLogradouro.Text;
        ParamByName('tipoCadPr').Value := indxTipoCad;
        ParamByName('cpfCnpjPr').Value := TiraMascara(MaskEdtCpfCnpj);
        ParamByName('rgIePr').Value := TiraMascara(MaskEdtRgIe);
        ParamByName('apelidoPr').Value := EdtApelido.Text;

        if Length(Trim(EdtRenda.Text)) > 0 then
        begin
          ParamByName('rendaPr').Value := Renda;
        end
        else
        begin
          ParamByName('rendaPr').Value := null;
        end;

        if Length(Trim(EdtRendMae.Text)) > 0 then
        begin
          ParamByName('rendaMaePr').Value := RendaMae;
        end
        else
        begin
          ParamByName('rendaMaePr').Value := null;
        end;

        if Length(Trim(EdtRendPai.Text)) > 0 then
        begin
          ParamByName('rendaPaiPr').Value := RendaPai;
        end
        else
        begin
          ParamByName('rendaPaiPr').Value := null;
        end;

        ParamByName('timePr').Value := EdtTime.Text;
        ParamByName('pai').Value := EdtNomePai.Text;
        ParamByName('mae').Value := EdtNomeMae.Text;
        ParamByName('textoPr').Value := MeLivre.Lines.Text;
        ParamByName('fotoPr').Value := EdtResultImg.Text;
        ExecSQL;
      end
      else
      begin
        SQL.Add('INSERT INTO cliente (id_cliente, id_cidade, idade, nome_cliente, sexo, telefone, '
          + 'endereco, num, bairro, logradouro, tipo_cad_cliente, cnpj_cpf_cliente, '
          + 'rg_ie_cliente, apelido_cliente, renda_cliente, time_cliente, pai_cliente, '
          + 'mae_cliente, renda_pai_cliente, renda_mae_cliente, texto_cliente, foto_cliente) '
          + 'VALUES (:codCli, :codCidPr, :idadePr, :nomePr, :sexoPr, :telefonePr, :enderecoPr, :numPr, '
          + ':bairroPr, :logradouroPr, :tipoCadPr, :cpfCnpjPr, :rgIePr, :apelidoPr, :rendaPr, '
          + ':timePr, :pai, :mae, :rendaPaiPr, :rendaMaePr, :textoPr, :fotoPr)');

        ParamByName('codCli').Value := StrToInt(EdtCod.Text);
        ParamByName('codCidPr').Value := StrToInt(EdtCodCidade.Text);
        ParamByName('idadePr').Value := CbIdade.Text;
        ParamByName('nomePr').Value := MaskEdtNome.Text;
        ParamByName('sexoPr').Value := CbSexo.Text;
        ParamByName('telefonePr').Value := EdtTelefone.Text;
        ParamByName('enderecoPr').Value := EdtEndereco.Text;
        ParamByName('numPr').Value := EdtNum.Text;
        ParamByName('bairroPr').Value := EdtBairro.Text;
        ParamByName('logradouroPr').Value := EdtLogradouro.Text;
        ParamByName('tipoCadPr').Value := indxTipoCad;
        ParamByName('cpfCnpjPr').Value := TiraMascara(MaskEdtCpfCnpj);
        ParamByName('rgIePr').Value := TiraMascara(MaskEdtRgIe);
        ParamByName('apelidoPr').Value := EdtApelido.Text;

        if Length(Trim(EdtRenda.Text)) > 0 then
        begin
          ParamByName('rendaPr').Value := Renda;
        end
        else
        begin
          ParamByName('rendaPr').Value := null;
        end;

        if Length(Trim(EdtRendMae.Text)) > 0 then
        begin
          ShowMessage('renda mae = ' + RendaMae);
          ParamByName('rendaMaePr').Value := RendaMae;
        end
        else
        begin
          ShowMessage('renda mae = ' + RendaMae);
          ParamByName('rendaMaePr').Value := null;
        end;

        if Length(Trim(EdtRendPai.Text)) > 0 then
        begin
          ParamByName('rendaPaiPr').Value := RendaPai;
        end
        else
        begin
          ParamByName('rendaPaiPr').Value := null;
        end;

        ParamByName('timePr').Value := EdtTime.Text;
        ParamByName('pai').Value := EdtNomePai.Text;
        ParamByName('mae').Value := EdtNomeMae.Text;
        ParamByName('textoPr').Value := MeLivre.Lines.Text;
        ParamByName('fotoPr').Value := EdtResultImg.Text;
        ExecSQL;
      end;
    Except
      On E: Exception do
      begin
        ShowMessage(E.ClassName + ' Error raised, with ' + E.Message);
        Exit;
      end;
    end;
    Close;
  end;
  // Clean the fields of the program
  LimparCampos;
end;

procedure TFormCadastroCliente.SbBuscarSefazClick(Sender: TObject);
begin
  //UnitCadProduto.FormCadProduto.ShowModal;
end;

procedure TFormCadastroCliente.SbDownClick(Sender: TObject);
var
  pnt: TPoint;
begin
  if GetCursorPos(pnt) then
    PopupMenu1.Popup(pnt.X, pnt.Y);
end;

procedure TFormCadastroCliente.LimparCampos;
var
  i, indx: Integer;
  bol: Boolean;
begin
  indx := PageControl.ActivePage.TabIndex;
  PageControl.ActivePageIndex := 0;

  EdtCod.Enabled := True;

  UnitCadCidade.FormCadCidade.LimparCampos(0);
  mudarIconeSb(0);

  LbResultCpfCnpj.Caption := '';
  LbResultRgIe.Caption := '';

  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) then // verifica se e do tipo EditBox
    begin
      try
        (Components[i] as TEdit).Text := '';
        // Faz o cast para EditBox e apaga o texto do campo
      Except
        ShowMessage('Error Cleaning up the TEdit');
      end;
    end
    else if (Components[i] is TMaskEdit) then
    begin
      try
        (Components[i] as TMaskEdit).Text := '';
      Except
        ShowMessage('Error Cleaning up the TMaskEdit');
      end;
    end
    else if (Components[i] is TComboBox) then
    begin
      try
        (Components[i] as TComboBox).ItemIndex := 0;
      Except
        ShowMessage('Error Cleaning up the TComboBox');
      end;
    end
    else if (Components[i] is TImage) then
    begin
      try
        (Components[i] as TImage).Picture := nil;
      Except
        ShowMessage('Error Cleaning up the TImage');
      end;
    end
    else if (Components[i] is TMemo) then
    begin
      try
        (Components[i] as TMemo).Lines.Clear;
      Except
        ShowMessage('Error Cleaning up the TMemo');
      end;
    end;
  end;
  EdtCod.Text := 'Automático';
  EdtCod.Enabled := True;
  EdtCod.SelectAll;
  EdtCod.SetFocus;

  RbPFisic.Checked := True;
  indxTipoCad := 0;
  Udm.dm.FdQuery.Close;

  // PageControl.ActivePageIndex := indx;
end;

procedure TFormCadastroCliente.SbListClientesClick(Sender: TObject);
begin
  FormListClientes.ShowModal;
end;

procedure TFormCadastroCliente.ShowModal(pCod: String);
begin
  EdtCod.Text := pCod;
  indxAbrirCad := 1;
  inherited ShowModal;
end;

procedure TFormCadastroCliente.SpeedButton1Click(Sender: TObject);
begin
  EdtCod.Enabled := True;
  abrirFormBuscador(0);
end;

procedure TFormCadastroCliente.teste11Click(Sender: TObject);
begin
  MaskEdtRgIe.Text := 'ISENTO';
  MaskEdtRgIe.SetFocus;
  MaskEdtRgIe.SelectAll;
end;

function TFormCadastroCliente.TiraMascara(MskEdit: TMaskEdit): String;
var
  Mask: string;
begin
  Mask := MskEdit.EditMask;
  MskEdit.EditMask := '';
  Result := MskEdit.Text;
  MskEdit.EditMask := Mask;
end;

procedure TFormCadastroCliente.sbProcurarClick(Sender: TObject);
begin
  abrirFormBuscador(1);
end;

procedure TFormCadastroCliente.sbEditAddClick(Sender: TObject);
begin

  // Indx para dizer q. qm esta abrindo o FromCadCidade e o FormCadCliente
  UnitCadCidade.indxTrigger := 0;

  if ((EdtCodCidade.Text = '') and (EdtNomeCidade.Text = '')) then
  begin
    UnitCadCidade.indxAddEdit := 0;
    FormCadCidade.ShowModal;
  end
  else if ((EdtCodCidade.Text <> '') and (EdtNomeCidade.Text = '')) then
  begin
    UnitCadCidade.indxAddEdit := 0;
    FormCadCidade.ShowModal;
  end
  else
  begin
    UnitCadCidade.indxAddEdit := 1;
    FormCadCidade.EdtCod.Text := EdtCodCidade.Text;
    FormCadCidade.ShowModal;
  end;
end;

procedure TFormCadastroCliente.UpdateRegistroDB;
var
  cpfCnpjEditado: String;
begin
  with Udm.dm.FdQuery do
  begin
    try
      Close;
      SQL.Clear;

      SQL.Add('UPDATE cliente SET idade = :p1, nome_cliente = :p2, sexo = :p3, '
        + 'telefone = :p4, endereco = :p5, num = :p6, bairro = :p7, logradouro = :p8, '
        + 'id_cidade = :p9, tipo_cad_cliente = :p10, cnpj_cpf_cliente = :p11, rg_ie_cliente = :p12, '
        + 'apelido_cliente = :p13, renda_cliente = :p14, time_cliente = :p15, pai_cliente = :p16, '
        + 'mae_cliente = :p17, renda_pai_cliente = :p18, renda_mae_cliente = :p19, texto_cliente = :p20, '
        + 'foto_cliente = :p21 WHERE id_cliente = :p22');

      if RbPFisic.Checked then
      begin
        cpfCnpjEditado := retiraMascaraCPF(MaskEdtCpfCnpj.Text);
      end
      else
      begin
        cpfCnpjEditado := MaskEdtCpfCnpj.Text;
      end;

      ParamByName('p1').Value := CbIdade.Text;
      ParamByName('p2').Value := MaskEdtNome.Text;
      ParamByName('p3').Value := CbSexo.Text;
      ParamByName('p4').Value := EdtTelefone.Text;
      ParamByName('p5').Value := EdtEndereco.Text;
      ParamByName('p6').Value := EdtNum.Text;
      ParamByName('p7').Value := EdtBairro.Text;
      ParamByName('p8').Value := EdtLogradouro.Text;
      ParamByName('p9').Value := StrToInt(EdtCodCidade.Text);
      ParamByName('p10').Value := IntToStr(indxTipoCad);
      ParamByName('p11').Value := TiraMascara(MaskEdtCpfCnpj);
      ParamByName('p12').Value := TiraMascara(MaskEdtRgIe);
      ParamByName('p13').Value := EdtApelido.Text;

      if Length(Trim(EdtRenda.Text)) > 0 then
      begin
        ParamByName('p14').Value := Renda;
      end
      else
      begin
        ParamByName('p14').Value := null;
      end;

      if Length(Trim(EdtRendMae.Text)) > 0 then
      begin
        ParamByName('p19').Value := RendaMae;
      end
      else
      begin
        ParamByName('p19').Value := null;
      end;

      if Length(Trim(EdtRendPai.Text)) > 0 then
      begin
        ParamByName('p18').Value := RendaPai;
      end
      else
      begin
        ParamByName('p18').Value := null;
      end;

      ParamByName('p15').Value := EdtTime.Text;
      ParamByName('p16').Value := EdtNomePai.Text;
      ParamByName('p17').Value := EdtNomeMae.Text;
      ParamByName('p20').Value := MeLivre.Text;
      ParamByName('p21').Value := EdtResultImg.Text;
      ParamByName('p22').Value := StrToInt(EdtCod.Text);
      ExecSQL;
    Except
      On E: Exception do
      begin
        ShowMessage(E.ClassName + ' error raised, with message: ' + E.Message);
        Exit;
      end;
    end;
  end;
  // Limpar os Campos
  LimparCampos;
end;

procedure TFormCadastroCliente.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 0 then
  begin
    indxSheet := 0;
  end
  else if PageControl.ActivePageIndex = 1 then
  begin
    EdtApelido.SetFocus;
  end
  else if PageControl.ActivePageIndex = 2 then
  begin
    MeLivre.SetFocus;
  end;
end;

procedure TFormCadastroCliente.PrepararConsultaCli();
begin
  if EdtCod.Text = '' then
  begin
    EdtCod.Text := 'Automático';
  end;

  EdtCod.Enabled := False;
  BuscarDados;

  if indxTipoCad = 0 then
  begin
    RbPFisic.Checked := True;
    RbPFisic.SetFocus;
  end
  else if indxTipoCad = 1 then
  begin
    RbPJurid.Checked := True;
    RbPJurid.SetFocus;
  end;
end;

procedure TFormCadastroCliente.PrepararConsultaCid;
begin
  if VerificarCidade then
  begin
    // mudar o icone para editar, pois uma cidade ja foi selecionada
    mudarIconeSb(1);
    AddDadosCadCidade;
  end
  else
  begin
    mudarIconeSb(0);
  end;
end;

function TFormCadastroCliente.PromptUser(msg: string): Boolean;
var
  td: TTaskDialog;
  tb: TTaskDialogBaseButtonItem;
begin
  td := TTaskDialog.Create(nil);
  try
    SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);
    // TIRAR O BEEP
    // SystemParametersInfo(SPI_SETBEEP, 1, nil, SPIF_SENDWININICHANGE); VOLTAR O BEET

    td.Caption := 'Aviso';
    td.Text := msg;
    td.MainIcon := tdiWarning;
    td.CommonButtons := [];

    tb := td.Buttons.Add;
    tb.Caption := 'Sim';
    tb.ModalResult := 100;

    tb := td.Buttons.Add;
    tb.Caption := 'Não';
    tb.ModalResult := 101;

    td.Execute;

    if td.ModalResult = 100 then
    begin
      Result := True;
    end
    else if td.ModalResult = 101 then
    begin
      Result := False;
    end
    else
    begin
      Result := False;
    end;

    td.Free;
  Except
    On E: Exception do
    begin
      ShowMessage(E.ClassName + ' Error raised, with ' + E.Message);
      Result := False;
    end;
  end;
end;

function TFormCadastroCliente.PromptUserFull(msg, title, msgBtn1,
  msgBtn2: string; indxAction: Integer; indxSound: Integer): Boolean;
var
  td: TTaskDialog;
  tb: TTaskDialogBaseButtonItem;
begin
  td := TTaskDialog.Create(nil);
  try
    // indxSound = 0 -> Tira o beep
    // indxSound = 1 -> Deixa o beep

    // indxAction = 0 -> TdiNone
    // indxAction = 1 -> TdiWarning
    // indxAction = 2 -> TdiError
    // indxAction = 3 -> TdiInformation

    SystemParametersInfo(SPI_SETBEEP, indxSound, nil, SPIF_SENDWININICHANGE);
    td.Caption := title;
    td.Text := msg;
    td.MainIcon := indxAction;
    td.CommonButtons := [];

    tb := td.Buttons.Add;
    tb.Caption := msgBtn1;
    tb.ModalResult := 100;

    tb := td.Buttons.Add;
    tb.Caption := msgBtn2;
    tb.ModalResult := 101;

    td.Execute;

    if td.ModalResult = 100 then
    begin
      Result := True;
    end
    else if td.ModalResult = 101 then
    begin
      Result := False;
    end
    else
    begin
      Result := False;
    end;

    td.Free;
  Except
    On E: Exception do
    begin
      ShowMessage(E.ClassName + ' Error raised, with ' + E.Message);
      Result := False;
    end;
  end;
end;

procedure TFormCadastroCliente.ProxCampoEnter(Sender: TEdit; Key: Word);
begin
  if (Ord(Key) = 13) then
  begin
    Sender.SetFocus;
  end;
end;

procedure TFormCadastroCliente.RbPFisicClick(Sender: TObject);
begin
  AjustarCadTipo;
end;

procedure TFormCadastroCliente.RbPFisicEnter(Sender: TObject);
begin
  RbPFisic.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadastroCliente.RbPFisicKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    MaskEdtCpfCnpj.SetFocus;
  end;
end;

procedure TFormCadastroCliente.RbPJuridClick(Sender: TObject);
begin
  AjustarCadTipo;
end;

procedure TFormCadastroCliente.RbPJuridKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    MaskEdtCpfCnpj.SetFocus;
  end;
end;

function TFormCadastroCliente.BuscarCidadeDB: Boolean;
var
  i: Integer;
  temNumero: Boolean;
begin
  // Cod. fragil
  for i := 1 to Length(Trim(EdtCodCidade.Text)) do
  begin
    if (EdtCodCidade.Text[i] in ['0' .. '9']) then
    begin
      temNumero := True;
    end
    else
    begin
      temNumero := False;
    end;
  end;

  with Udm.dm.FdQuery do
  begin
    try
      Close;
      SQL.Clear;
      SQL.Add('SELECT ' + 'c.id_cidade, ' + 'c.nome_cidade, ' + 'c.cep, ' +
        'e.uf, ' + 'p.nome_pais ' + 'FROM ' + 'cidade c inner join estado e on '
        + 'c.id_estado = e.id_estado ' + 'join pais p on ' +
        'e.id_pais = p.id_pais ' + 'WHERE ');

      if temNumero then
      begin
        SQL.Add('id_cidade = :p1');
        ParamByName('p1').AsInteger := StrToInt(EdtCodCidade.Text);
      end
      else
      // VERIFICAR COD. POSSIVELMENTE LOGICA ERRADA!!!
      begin
        Result := False;
        // SQL.Add('nome_cidade = :p2');
        // ParamByName('p2').AsString := EdtCodCidade.Text;
      end;

      // Abrir DB
      Open();

      // Recuperar dados e mostrar nos campos
      if not(FieldByName('nome_cidade').Value = null) and (temNumero) then
      begin
        EdtNomeCidade.Text := FieldByName('nome_cidade').Value;
        MaskEdtCep.Text := FieldByName('cep').Value;
      end
      else
      begin
        EdtNomeCidade.Text := '';
        MaskEdtCep.Text := '';
      end;
      Close;
    Except
      on E: Exception do
      begin
        ShowMessage(E.ClassName + 'Error raised, with message ' + E.Message);
        // Close;
        Exit;
      end;
    end;
  end;
end;

procedure TFormCadastroCliente.BuscarDados;
var
  i: Integer;
  cpf, rg: string;
begin
  if not(EdtCod.Text = 'Automático') then
  begin
    try
      with Udm.dm.FdQuery do
      begin
        Close;
        SQL.Clear;

        SQL.Add('SELECT id_cliente, c.id_cidade, idade, nome_cliente, sexo, telefone, '
          + 'endereco, num, bairro, logradouro, tipo_cad_cliente, cnpj_cpf_cliente, '
          + 'rg_ie_cliente, apelido_cliente, renda_cliente, time_cliente, pai_cliente, '
          + 'mae_cliente, renda_pai_cliente, renda_mae_cliente, texto_cliente, foto_cliente, '
          + 'ci.nome_cidade, ci.id_cidade, ci.cep, es.uf FROM cliente c inner join cidade ci on '
          + 'c.id_cidade = ci.id_cidade join estado es on ci.id_estado = es.id_estado '
          + 'WHERE id_cliente = :p1');
        ParamByName('p1').Value := StrToInt(EdtCod.Text);

        Open;

        if (FieldByName('id_cliente').AsInteger = StrToInt(EdtCod.Text)) then
        begin
          EdtCod.Text := FieldByName('id_cliente').AsString;
          if (FieldByName('tipo_cad_cliente').AsInteger = 0) then
          begin
            // PF
            RbPFisic.Checked := True;
            indxTipoCad := 0;
          end
          else if (FieldByName('tipo_cad_cliente').AsInteger = 1) then
          begin
            // PJ
            RbPJurid.Checked := True;
            indxTipoCad := 1;
          end;

          MaskEdtNome.Text := FieldByName('nome_cliente').AsString;
          CbSexo.ItemIndex := CbSexo.Items.IndexOf
            (FieldByName('sexo').AsString);
          CbIdade.ItemIndex :=
            (CbIdade.Items.IndexOf(FieldByName('idade').AsString));
          EdtTelefone.Text := FieldByName('telefone').AsString;
          EdtNomeCidade.Text := FieldByName('nome_cidade').AsString;
          EdtCodCidade.Text := FieldByName('id_cidade').AsString;
          MaskEdtCep.Text := FieldByName('cep').AsString;
          EdtEndereco.Text := FieldByName('endereco').AsString;
          EdtBairro.Text := FieldByName('bairro').AsString;
          EdtNum.Text := FieldByName('num').AsString;
          EdtLogradouro.Text := FieldByName('logradouro').AsString;
          MaskEdtCpfCnpj.Text := FieldByName('cnpj_cpf_cliente').AsString;
          MaskEdtRgIe.Text := FieldByName('rg_ie_cliente').AsString;
          EdtApelido.Text := FieldByName('apelido_cliente').AsString;
          EdtRenda.Text := FieldByName('renda_cliente').AsString;
          EdtTime.Text := FieldByName('time_cliente').AsString;
          EdtNomePai.Text := FieldByName('pai_cliente').AsString;
          EdtNomeMae.Text := FieldByName('mae_cliente').AsString;
          EdtRendPai.Text := FieldByName('renda_pai_cliente').AsString;
          EdtRendMae.Text := FieldByName('renda_mae_cliente').AsString;
          MeLivre.Text := FieldByName('texto_cliente').AsString;
          EdtResultImg.Text := FieldByName('foto_cliente').AsString;

          // So chega aqui se o cod do EdtCod realmente esta gravado no Db. Nesse caso:
          mudarIconeSb(1);
          AddDadosCadCidade;
          buscarFotoUser(1);
          MascaraDinheiro;

          // Validar Cpf/Cnpj e Rg/Ie
          ValidarCpfCnpj;
          // EditarCpfCnpj;
          // EditarRgIe;
        end;
        Close;
      end;
    Except
      on E: Exception do
      begin
        ShowMessage(E.ClassName + ' Erro raised, with ' + E.Message);
        Exit;
      end;
    end;
  end;
end;

procedure TFormCadastroCliente.buscarFotoUser(indx: Integer);
var
  caminho, Target, ButtonSelected: String;
  i, position: Integer;
  DoPrompt: Boolean;
begin
  if (indx = 0) then
  begin
    DoPrompt := True;
    try
      OpenPicture.Execute();
      caminho := OpenPicture.Files.GetText;

      Image.Picture.LoadFromFile(Trim(caminho));
    Except
      On E: Exception do
      begin
        Exit;
      end;
    end;

    if Length(Trim(EdtResultImg.Text)) > 0 then
    begin
      if (AnsiCompareStr(Trim(caminho), Trim(EdtResultImg.Text)) = 0) then
      begin
        OpenPicture.Files.Clear;
        DoPrompt := False;
      end;
    end;

    EdtResultImg.Text := ' ' + caminho;

    if (DoPrompt) then
    begin
      if PromptUser('Deseja copiar essa imagem para a pasta do sistema?') then
      begin
        position := LastDelimiter('\', Trim(caminho));
        Target := Copy(Trim(caminho), position + 1, Length(Trim(caminho)));

        if not FileExists('C:\Cadastro Clientes\Fotos\Clientes\' + Target) then
        begin
          CopyFile(PChar(Trim(caminho)),
            PChar('C:\Cadastro Clientes\Fotos\Clientes\' + Target), False);
          EdtResultImg.Text := 'C:\Cadastro Clientes\Fotos\Clientes\' + Target;
        end
        else
        begin
          if PromptUser('A imagem já existe no diretório do sistema.' + #13 +
            'Deseja substituir?') then
          begin
            CopyFile(PChar(Trim(caminho)),
              PChar('C:\Cadastro Clientes\Fotos\Clientes\' + Target), False);
            EdtResultImg.Text := 'C:\Cadastro Clientes\Fotos\Clientes\'
              + Target;
          end
          else
          begin
            EdtResultImg.Text := Trim(caminho);
          end;
        end;
      end;
    end;
  end
  else if (indx = 1) then
  begin
    try
      Image.Picture.LoadFromFile(Trim(EdtResultImg.Text));
    Except
      On E: Exception do
      begin
        // Do nothing...
      end;
    end;
  end;
end;

function TFormCadastroCliente.ValidarCpfCnpj: Boolean;
begin
  if RbPFisic.Checked then
  begin
    ACBrValidador.TipoDocto := docCPF;
    ACBrValidador.Documento := MaskEdtCpfCnpj.Text;

    if not ACBrValidador.Validar then
    begin
      LbResultCpfCnpj.Caption := 'CPF Inválido';
      LbResultCpfCnpj.Visible := True;
      Result := False;
    end
    else
    begin
      LbResultCpfCnpj.Caption := '';
      LbResultCpfCnpj.Visible := False;
      Result := True;
    end;
  end
  else
  begin
    ACBrValidador.TipoDocto := docCNPJ;
    ACBrValidador.Documento := MaskEdtCpfCnpj.Text;

    if not ACBrValidador.Validar then
    begin
      LbResultCpfCnpj.Caption := 'CNPJ Inválido';
      LbResultCpfCnpj.Visible := False;
      Result := False;
    end
    else
    begin
      LbResultCpfCnpj.Caption := '';
      LbResultCpfCnpj.Visible := False;
      Result := True;
    end;
  end;
end;

function TFormCadastroCliente.ValidarIE: Boolean;
begin
  if RbPJurid.Checked then
  begin
    if (AnsiCompareText('ISENTO', MaskEdtRgIe.Text) = 0) then
    begin
      LbResultRgIe.Caption := '';
      LbResultRgIe.Visible := False;
      Result := True;
      Exit;
    end;

    ACBrValidador.TipoDocto := docInscEst;
    ACBrValidador.Documento := MaskEdtRgIe.Text;

    if not ACBrValidador.Validar then
    begin
      LbResultRgIe.Caption := 'IE Inválida';
      LbResultRgIe.Visible := True;
      Result := False;
    end
    else
    begin
      LbResultRgIe.Caption := '';
      LbResultRgIe.Visible := False;
      Result := True;
    end;
  end;

  //
  // if (RbPFisic.Checked) then
  // begin
  // if ((Length(Trim(MaskEdtRgIe.Text)) <> 14) and
  // (Length(Trim(MaskEdtRgIe.Text)) <> 9)) then
  // begin
  // LbResultRgIe.Caption := 'RG Inválido';
  // LbResultRgIe.Visible := True;
  // Result := False;
  // end
  // else
  // begin
  // LbResultRgIe.Caption := '';
  // Result := True;
  // end;
  // end
  // else if (RbPJurid.Checked) then
  // begin
  // if ((Length(Trim(MaskEdtRgIe.Text)) <> 10) and
  // (Length(Trim(MaskEdtRgIe.Text)) <> 0) and
  // (LowerCase(Trim(MaskEdtRgIe.Text)) <> LowerCase('isento'))) then
  // begin
  // LbResultRgIe.Caption := 'IE Inválida';
  // LbResultRgIe.Visible := True;
  // Result := False;
  // end
  // else
  // begin
  // LbResultRgIe.Caption := '';
  // Result := True;
  // end;
  // end;
end;

function TFormCadastroCliente.VerificarCampos(codOperacao: Integer): Boolean;
var
  counter, indx: Integer;
  bol, indxStopFunc: Boolean;
  msg: String;
begin
  counter := 0;
  bol := False;
  indxStopFunc := False;

  if (Length(EdtCod.Text) = 0) then
  begin
    counter := 1;
    bol := True;
    msg := 'É obrigatório preencher o campo Código';
  end;

  if (Length(MaskEdtNome.Text) = 0) then
  begin
    counter := 2;
    bol := True;
    msg := 'É obrigatório preencher o campo Nome';
  end
  else if Length(EdtCodCidade.Text) = 0 then
  begin
    counter := 3;
    bol := True;
    msg := 'É obrigatório preencher o campo Cidade';
  end
  else if (Length(MaskEdtCep.Text) = 0) then
  begin
    counter := 5;
    bol := True;
    msg := 'É obrigatório preencher o campo CEP';
  end;

  if (bol = True) then
  begin
    ShowMessage(msg);
  end;

  // Somente para codOperacao = 1
  if (codOperacao = 1) then
  begin
    if (counter = 1) then
    begin
      PageControl.ActivePageIndex := 0;
      EdtCod.Enabled := True;
      EdtCod.SetFocus;
      Result := False;
      Exit;
    end
    else if (counter = 2) then
    begin
      PageControl.ActivePageIndex := 0;
      MaskEdtNome.SetFocus;
      Result := False;
      Exit;
    end
    else if (counter = 3) then
    begin
      PageControl.ActivePageIndex := 0;
      EdtCodCidade.SetFocus;
      Result := False;
      Exit;
    end
    else if (counter = 5) then
    begin
      PageControl.ActivePageIndex := 0;
      MaskEdtCep.SetFocus;
      Result := False;
      Exit;
    end
    else
    begin
      Result := True;
    end;
  end;

  if (RbPFisic.Checked) then
  begin
    if (MaskEdtCpfCnpj.Text = '') then
    begin
      if not PromptUser('O CPF está em branco. ' + #13 +
        'Deseja continuar mesmo assim?') then
      begin
        PageControl.ActivePageIndex := 0;
        MaskEdtCpfCnpj.SetFocus;
        Result := False;
      end;
    end
    else if not(ValidarCpfCnpj) then
    begin
      if not PromptUser('O CPF está inválido. ' + #13 +
        'Deseja continuar mesmo assim?') then
      begin
        PageControl.ActivePageIndex := 0;
        MaskEdtCpfCnpj.SetFocus;
        Result := False;
      end;
    end;
  end
  else if (RbPJurid.Checked) then
  begin
    if (MaskEdtCpfCnpj.Text = '') then
    begin
      if not PromptUser('O CNPJ está em branco. ' + #13 +
        'Deseja continuar mesmo assim?') then
      begin
        PageControl.ActivePageIndex := 0;
        MaskEdtCpfCnpj.SetFocus;
        Result := False;
      end;
    end
    else if ((not(ValidarCpfCnpj)) and (not(ValidarIE))) then
    begin
      if not PromptUser('O CNPJ e a IE estão inválidos. ' + #13 +
        'Deseja continuar mesmo assim?') then
      begin
        PageControl.ActivePageIndex := 0;
        MaskEdtCpfCnpj.SetFocus;
        Result := False;
      end;
    end
    else if not(ValidarCpfCnpj) then
    begin
      if not PromptUser('O CNPJ está inválido. ' + #13 +
        'Deseja continuar mesmo assim?') then
      begin
        PageControl.ActivePageIndex := 0;
        MaskEdtCpfCnpj.SetFocus;
        Result := False;
      end;
    end
    else if not(ValidarIE) then
    begin
      if not PromptUser('A Inscrição Estadual (IE) está inválido. ' + #13 +
        'Deseja continuar mesmo assim?') then
      begin
        PageControl.ActivePageIndex := 0;
        MaskEdtRgIe.SetFocus;
        Result := False;
      end;
    end;
  end;
end;

function TFormCadastroCliente.VerificarCidade: Boolean;
begin
  // Se tiver nome no campo EdtNomeCidade mas nao tiver cod no campo EdtCodCidade, o sistema busca no DB
  // o cod da cidade com o nome que esta no campo EdtNomeCidade e seta esse cod no campo EdtCodCidade;

  if ((Trim(EdtCodCidade.Text) = '') and (Trim(EdtNomeCidade.Text) <> '')) then
  begin
    with Udm.dm.FdQuery do
    begin
      try
        Close;
        SQL.Clear;
        SQL.Add('SELECT id_cidade FROM cidade WHERE trim(lower(nome_cidade)) LIKE '
          + Trim(LowerCase(QuotedStr('%' + EdtNomeCidade.Text + '%'))));
        Open();
        EdtCodCidade.Text := FieldByName('id_cidade').AsString;
        Close;
        Result := True;
      Except
        on E: Exception do
        begin
          ShowMessage(E.ClassName + 'Error raised, with message ' + E.Message);
          Result := False;
          Exit;
        end;
      end;
    end;
  end;

  if ((Length(Trim(EdtCodCidade.Text)) = 0) and
    (Length(Trim(EdtNomeCidade.Text)) = 0)) then
  begin
    Result := False;
    Exit;
  end;

  // Buscar cidade no banco pelo cod ou nome
  BuscarCidadeDB;

  // BuscarCidadeDB Nao encontrou cidade
  if ((Length(EdtCodCidade.Text) > 0) and (Length(EdtNomeCidade.Text) = 0)) then
  begin
    EdtCodCidade.SetFocus;
    EdtCodCidade.SelectAll;
    Result := False;
  end
  else if ((Length(EdtCodCidade.Text) > 0) and (Length(EdtNomeCidade.Text) > 0))
  then
  begin
    Result := True;
  end
end;

function TFormCadastroCliente.VerificarCodExiste: Boolean;
begin
  with Udm.dm.FdQuery do
  begin
    Close;
    SQL.Clear;

    SQL.Add('SELECT id_cliente FROM cliente WHERE id_cliente = :p1');
    ParamByName('p1').Value := StrToInt(EdtCod.Text);

    Open;

    if (Trim(FieldByName('id_cliente').AsString) = EdtCod.Text) then
    begin
      Result := True;
    end
    else
    begin
      Result := False;
    end;
  end;
end;

function TFormCadastroCliente.VerificarUpdateDB: Boolean;
var
  dbRenda: String;
  cpfCnpjEditado: String;
begin
  with Udm.dm.FdQuery do
  begin
    Close;
    SQL.Clear;

    SQL.Add('SELECT id_cliente, id_cidade, idade, nome_cliente, sexo, telefone, '
      + 'endereco, num, bairro, logradouro, tipo_cad_cliente, cnpj_cpf_cliente, '
      + 'rg_ie_cliente, apelido_cliente, renda_cliente, time_cliente, pai_cliente, '
      + 'mae_cliente, renda_pai_cliente, renda_mae_cliente, texto_cliente, foto_cliente '
      + 'FROM cliente WHERE id_cliente = :p1');

    ParamByName('p1').Value := StrToInt(EdtCod.Text);
    Open;

    if (Length(Trim(FieldByName('id_cliente').AsString)) = 0) then
    begin
      Result := False;
      Exit;
    end;

    if RbPFisic.Checked then
    begin
      cpfCnpjEditado := retiraMascaraCPF(MaskEdtCpfCnpj.Text);
    end
    else
    begin
      cpfCnpjEditado := MaskEdtCpfCnpj.Text;
    end;

    // Caso o cod do TEdit seja o mesmo do DB:
    if EdtCod.Text = FieldByName('id_cliente').AsString then
    begin
      if ((indxTipoCad <> FieldByName('tipo_cad_cliente').AsInteger) or
        (TiraMascara(MaskEdtCpfCnpj) <> FieldByName('cnpj_cpf_cliente')
        .AsString) or (TiraMascara(MaskEdtRgIe) <> FieldByName('rg_ie_cliente')
        .AsString) or (MaskEdtNome.Text <> FieldByName('nome_cliente').AsString)
        or (EdtEndereco.Text <> FieldByName('endereco').AsString) or
        (CbIdade.Text <> FieldByName('idade').AsString) or
        (CbSexo.Text <> FieldByName('sexo').AsString) or
        (EdtCodCidade.Text <> FieldByName('id_cidade').AsString) or
        (EdtBairro.Text <> FieldByName('bairro').AsString) or
        (EdtTelefone.Text <> FieldByName('telefone').AsString) or
        (EdtNum.Text <> FieldByName('num').AsString) or
        (EdtLogradouro.Text <> FieldByName('logradouro').AsString) or
        (EdtApelido.Text <> FieldByName('apelido_cliente').AsString) or
        (Renda <> FieldByName('renda_cliente').AsString) or
        (EdtTime.Text <> FieldByName('time_cliente').AsString) or
        (EdtNomePai.Text <> FieldByName('pai_cliente').AsString) or
        (EdtNomeMae.Text <> FieldByName('mae_cliente').AsString) or
        (RendaPai <> FieldByName('renda_pai_cliente').AsString) or
        (RendaMae <> FieldByName('renda_mae_cliente').AsString) or
        (MeLivre.Lines.Text <> FieldByName('texto_cliente').AsString) or
        (EdtResultImg.Text <> FieldByName('foto_cliente').AsString)) then
      begin
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    end
    else
    begin
      Result := False;
    end;
  end;
end;

function TFormCadastroCliente.CamposEmBranco: Boolean;
var
  i: Integer;
begin
  Result := True;
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TEdit) then
    begin
      if ((Components[i] as TEdit).Text = 'Automático') then
      begin
        Result := True;
      end
      else if not((Components[i] as TEdit).Text = '') then
      begin
        Result := False;
        Exit;
      end;
    end
    else if (Components[i] is TMaskEdit) then
    begin
      if ((Length(Trim((Components[i] as TMaskEdit).Text)) = 1) or
        (Length(Trim((Components[i] as TMaskEdit).Text)) = 9) or
        ((Length(Trim((Components[i] as TMaskEdit).Text)) = 14) and
        (RbPJurid.Checked)) or (Length(Trim((Components[i] as TMaskEdit).Text))
        = 0)) then
      begin
        Result := True;
      end
      else if not((Components[i] as TMaskEdit).Text = '') then
      begin
        Result := False;
        Exit;
      end;
    end
    else if (Components[i] is TComboBox) then
    begin
      if not(Length(Trim((Components[i] as TComboBox).Text)) = 0) then
      begin
        Result := False;
        Exit;
      end;
    end
    else if (Components[i] is TMemo) then
    begin
      if not(Length(Trim((Components[i] as TMemo).Lines.Text)) = 0) then
      begin
        Result := False;
        Exit;
      end;
    end
    else if (Components[i] is TImage) then
    begin
      if Assigned(Image.Picture.Graphic) then
      begin
        Result := False;
        Exit;
      end;
    end;
  end;
end;

procedure TFormCadastroCliente.CbIdadeEnter(Sender: TObject);
begin
  CbIdade.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
end;

procedure TFormCadastroCliente.CbSexoEnter(Sender: TObject);
begin
  CbSexo.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
  if CbSexo.ItemIndex = -1 then
  begin
    CbSexo.SetFocus;
  end;
end;

procedure TFormCadastroCliente.CbSexoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.Cidades1Click(Sender: TObject);
begin
  FormListCidades.ShowModal;
end;

function TFormCadastroCliente.CodManual: Boolean;
begin
  if AnsiCompareStr(EdtCod.Text, 'Automático') = 0 then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;

procedure TFormCadastroCliente.ControlarEdtCod(bol: Boolean);
begin
  if (bol = True) then
  begin
    EdtCod.Enabled := True;
  end
  else
  begin

  end;

end;

// procedure TcadastroForm.EdtCodExit(Sender: TObject);
// var
// tResult: Boolean;
// myResult: Boolean;
// mm: Boolean;
// ttCad: TcadastroForm;
// i : integer;
// begin
//
// mm := false;
//
// begin
// for i := 0 to ComponentCount-1 do
// begin
// if ((Components[i] is TEdit)) then
// begin
// if ((Components[i] as TEdit).Text.IsEmpty) then
// begin
// myResult := False;
// end;
// end;
// end;
// end;
//
// if not (StrToInt(EdtCod.Text) = Pessoa.Cod) then
// begin
//
// end;
//
// end;

procedure TFormCadastroCliente.EdtNomeExit(Sender: TObject);
var
  i: Integer;
  strCampo, format_str: string;
begin

  // GOTTA FINISH HERE@!!!!!!!!!

  //
  // strCampo:= EdtNome.Text;
  // EdtNome.Text:= UpperCase(Copy(strCampo, 1, 1)) + LowerCase(Copy(strCampo, 2, Length(strCampo)));
  // strCampo:= EdtNome.Text;
  //
  // for I := 3 to Length(strCampo) do
  // begin
  // if strCampo[i-1] = ' ' then
  // begin
  // //EdtNome.Text:= strCampo.Replace(strCampo[i], UpperCase(strCampo[i]));
  // EdtNome.Text:= UpperCase(Copy(strCampo, i, i)) + ' ' + LowerCase(Copy(strCampo, i+1, Length(strCampo)));
  // end else
  // begin
  // //EdtNome.Text:= strCampo + LowerCase(strCampo[i]);
  // end;
  // end;
end;

procedure TFormCadastroCliente.EdtNomeMaeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtNomePaiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtNomeTyping(Sender: TObject);
begin
  FormataCampo(2, MaskEdtNome.Text);
end;

procedure TFormCadastroCliente.EdtNumKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtRendaExit(Sender: TObject);
begin
  if (Length(Trim(EdtRenda.Text)) > 0) then
  begin
    if (Pos('.', EdtRenda.Text) = 0) or (Pos(',', EdtRenda.Text) = 0) then
    begin
      Renda := EdtRenda.Text;
      EdtRenda.Text := FormatFloat('#,##0.00', StrToFloat(EdtRenda.Text));
    end;
  end
  else
  begin
    Renda := EdtRenda.Text;
  end;
end;

procedure TFormCadastroCliente.EdtRendaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtRendMaeExit(Sender: TObject);
begin
  if Length(Trim(EdtRendMae.Text)) > 0 then
  begin
    if (Pos('.', EdtRendMae.Text) = 0) or (Pos(',', EdtRendMae.Text) = 0) then
    begin
      RendaMae := EdtRendMae.Text;
      EdtRendMae.Text := FormatFloat('#,##0.00', StrToFloat(EdtRendMae.Text));
    end;
  end
  else
  begin
    RendaMae := EdtRendMae.Text;
  end;
end;

procedure TFormCadastroCliente.EdtRendMaeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    BtnSalvar.SetFocus;
  end;
end;

procedure TFormCadastroCliente.EdtRendPaiExit(Sender: TObject);
begin
  if Length(Trim(EdtRendPai.Text)) > 0 then
  begin
    if (Pos('.', EdtRendPai.Text) = 0) or (Pos(',', EdtRendPai.Text) = 0) then
    begin
      RendaPai := EdtRendPai.Text;
      EdtRendPai.Text := FormatFloat('#,##0.00', StrToFloat(EdtRendPai.Text));
    end;
  end
  else
  begin
    RendaPai := EdtRendPai.Text;
  end;
end;

procedure TFormCadastroCliente.EdtRendPaiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtTelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtTimeKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EdtUFKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormCadastroCliente.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormCadastroCliente.EscPresionado;
var
  td: TTaskDialog;
  tb: TTaskDialogBaseButtonItem;

  i, c, canClose, ButtonSelected: Integer;
  str: string;
begin
  if not(EdtCod.Text = 'Automático') then
  begin
    with Udm.dm.FdQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ' + 'id_cliente, ' + 'id_cidade, ' + 'idade, ' +
        'nome_cliente, ' + 'sexo, ' + 'telefone, ' + 'endereco, ' + 'num, ' +
        'bairro, ' + 'logradouro ' + 'FROM cliente WHERE id_cliente = :p1');
      ParamByName('p1').Value := StrToInt(EdtCod.Text);
      Open;

      if ((FieldByName('id_cliente').AsInteger <> StrToInt(EdtCod.Text))) then
      begin
        if ((Length(MaskEdtNome.Text) > 0) or (Length(EdtCodCidade.Text) > 0))
        then
        begin
          if PromptUser('Todos os dados preenchidos serão perdidos' + #13 +
            'Deseja Continuar?') then
          begin
            LimparCampos;
          end
          else
          begin

          end;
        end
        else
        begin
          LimparCampos;
        end;
      end
      else
      begin
        // Caso o cod do TEdit seja o mesmo do DB:
        // 1) Verificar se foi dado update no cadastro

        if (VerificarUpdateDB) then
        begin
          // Foi dado Update no cadastro
          // Nesse Caso, Perguntar se quer sair sem salvar
          if (PromptUser('O cadastro foi modificado.' + #13 +
            'Deseja sair sem salvar?')) then
          begin
            // O Update do cadastro nao tera efeito;
            LimparCampos;
          end;
        end
        else
        begin
          LimparCampos;
        end;
      end;
    end;
  end
  else
  begin
    if ((Length(MaskEdtNome.Text) > 0) or (Length(EdtCodCidade.Text) > 0)) then
    begin
      if PromptUser('Todos os dados preenchidos serão perdidos' + #13 +
        'Deseja Continuar?') then
      begin
        LimparCampos;
      end;
    end
    else
    begin
      if (CamposEmBranco) then
      begin
        if PageControl.ActivePage.TabIndex <> 0 then
        begin
          // if not EdtCod.Enabled then
          // begin
          // Close;
          // // if PromptUser('Você realmente deseja sair do sistema?') then
          // // begin
          // // Application.Terminate;
          // // end;
          // end;
          if not EdtCod.Enabled then
          begin
            LimparCampos;
          end;
        end
        else
        begin
          if (BtnCancelar.Focused) and not(EdtCod.Enabled) then
          begin
            Close;
            // if PromptUser('Você realmente deseja sair do sistema?') then
            // begin
            // Application.Terminate;
            // end;
          end
          else if not(EdtCod.Enabled) then
          begin
            LimparCampos;
          end
          else
          begin
            Close;
            // if PromptUser('Você realmente deseja sair do sistema?') then
            // begin
            // Application.Terminate;
            // end;
          end;
        end;
      end
      else
      begin
        if PromptUser('Todos os dados preenchidos serão perdidos' + #13 +
          'Deseja Continuar?') then
        begin
          LimparCampos;
        end;
      end;
    end;
  end;
end;

procedure TFormCadastroCliente.FocoEdtCod;
begin
  PageControl.ActivePageIndex := 0;
  EdtCod.Enabled := True;
  EdtCod.SetFocus;
  EdtCod.SelectAll;
end;

procedure TFormCadastroCliente.FormataCampo(numCampo: Integer;
  strCampo: string);
var
  i: Integer;
begin

  // 1 FOR CEP VALIDATION AND FORMATING
  if numCampo = 1 then
  begin
    if Length(strCampo) = 5 then
    begin
      MaskEdtCep.Text := Copy(strCampo, 1, 5) + '-';
      // EdtCEP.SetFocus;
      MaskEdtCep.SelStart := 6;
    end;
  end
  else if numCampo = 2 then
  begin

  end;
end;

procedure TFormCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // EscPresionado;
  // Action := caNone;
end;

procedure TFormCadastroCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_INSERT then
  begin
    BtnSalvarClick(nil);
  end;
end;

procedure TFormCadastroCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    EscPresionado;
  end;
end;

procedure TFormCadastroCliente.FormPrincipal1Click(Sender: TObject);
begin
  UnitPrincipal.FormPrincipal.ShowModal;
end;

procedure TFormCadastroCliente.FormShow(Sender: TObject);
begin
  if indxAbrirCad <> 1 then
  begin
    EdtCod.Text := 'Automático';
    EdtCod.Enabled := True;
  end;

  PageControl.ActivePageIndex := 0;

  if (EdtCod.Enabled) and (PageControl.ActivePageIndex = 0) then
  begin
    EdtCod.SetFocus;
  end;

  FormCadastroCliente.Top :=
    (Screen.DesktopHeight - FormCadastroCliente.Height) DIV 2;
  FormCadastroCliente.Left :=
    (Screen.DesktopWidth - FormCadastroCliente.Width) DIV 2;

  // -------------
  mudarIconeSb(0);
  sairIndex := 0;

  // --------------
  MeLivre.Lines.Clear;
  SbDown.Enabled := False;
  indxTipoCad := 0;

  if indxAbrirCad = 1 then
  begin
    indxAbrirCad := -1;
    PrepararConsultaCli;
  end;
end;

procedure TFormCadastroCliente.GbTipoCadExit(Sender: TObject);
begin
  if RbPFisic.Checked then
    indxTipoCad := 0
  else
    indxTipoCad := 1;
end;

procedure TFormCadastroCliente.IENORMA1Click(Sender: TObject);
begin
  MaskEdtRgIe.Enabled := True;
  MaskEdtRgIe.Text := '';
  MaskEdtRgIe.EditMask := '##########;1;_';
  MaskEdtRgIe.SetFocus;
end;

end.
