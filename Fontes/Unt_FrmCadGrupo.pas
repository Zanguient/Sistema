unit Unt_FrmCadGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, FIBDataSet, pFIBDataSet, StrUtils, Unt_FrmBusca;

type
  TCadastro = TBusca;
  TFrm_CadGrupo = class(TForm)
    lbOperacao: TLabel;
    Panel1: TPanel;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnDeletar: TBitBtn;
    qryGrupo: TpFIBDataSet;
    qrySubgrupo: TpFIBDataSet;
    qrySubgrupoCOD_SUBCLASSE: TFIBIntegerField;
    qrySubgrupoCODCLASSE_SUBCLASSE: TFIBIntegerField;
    qrySubgrupoNOME_SUBCLASSE: TFIBStringField;
    qrySubgrupoDTUPDATE_SUBCLASSE: TFIBDateTimeField;
    qryGrupoCOD_CLASSE: TFIBIntegerField;
    qryGrupoNOME_CLASSE: TFIBStringField;
    qryGrupoDESCRICAO_CLASSE: TFIBStringField;
    qryGrupoDTUPDATE_CLASSE: TFIBDateTimeField;
    GroupBox1: TGroupBox;
    pnlCod: TPanel;
    btnGp: TSpeedButton;
    lbCod: TLabel;
    edtCod: TEdit;
    pnlNome: TPanel;
    lbNome: TLabel;
    edtNome: TEdit;
    pnlDescricao: TPanel;
    lbDescricao: TLabel;
    edtDescricao: TEdit;
    pnlGrupoSgp: TPanel;
    btnSbg: TSpeedButton;
    lbSgp: TLabel;
    edtSgNome: TEdit;
    edtSgCod: TEdit;
    qrySubgrupoNOME_CLASSE: TFIBStringField;

    procedure btnDeletarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGpClick(Sender: TObject);
    procedure edtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSbgClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtSgCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSgCodExit(Sender: TObject);

  private
    procedure findCod(cod: Integer);
    procedure findGpPai(cod: Integer);
    procedure limparCampos;
    procedure AbreTelaBusca(TipoBusca: TBusca; FieldRetorno: TEdit; TxtBusca: String = '');

  public
    var
      cadastro: TCadastro;
      cod: Integer;

  end;

var
  Frm_CadGrupo : TFrm_CadGrupo;

implementation

uses
  Unt_DM, UnitFuncoes, Unt_FrmPrincipal;

{$R *.dfm}

procedure TFrm_CadGrupo.AbreTelaBusca(TipoBusca: TBusca; FieldRetorno: TEdit; TxtBusca: String = '');
var Frm_Busca: TFrm_Busca;
begin
  try
    Frm_Busca := TFrm_Busca.Create(Self, TipoBusca, txtBusca);
    Frm_Busca.ShowModal;

    if (Frm_Busca.ModalResult = mrOk) then begin
      FieldRetorno.Enabled := True;
      FieldRetorno.Text := retorno.ToString;
      FieldRetorno.SelectAll;
      FieldRetorno.SetFocus;

      if (FieldRetorno = edtSgCod) then findGpPai(retorno) else findCod(retorno);
    end;

  finally
    FreeAndNil(Frm_Busca);
  end;
end;

procedure TFrm_CadGrupo.btnGpClick(Sender: TObject);
begin
  AbreTelaBusca(cadastro, edtCod);
end;

procedure TFrm_CadGrupo.btnSbgClick(Sender: TObject);
begin
  AbreTelaBusca(cadastro, edtSgCod);
end;

procedure TFrm_CadGrupo.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CadGrupo.findGpPai(cod: Integer);
var nomeGp: String;
begin
  edtSgCod.Enabled := True;
  edtSgNome.Enabled := True;
  nomeGp := getCampoSelect('SELECT NOME_CLASSE FROM CLASSES WHERE COD_CLASSE = ' + edtSgCod.Text);

  if not nomeGp.IsEmpty then begin
    edtSgNome.Text := nomeGp;
  end else begin
    edtSgNome.Text := '';
    edtSgCod.SelectAll;
  end;
end;

procedure TFrm_CadGrupo.findCod(cod: Integer);
begin
   if (cadastro = tpGrupo) then begin
    with qryGrupo do begin
      try
        Close;
        ParamByName('COD').AsInteger := cod;
        Open;

        if (RecordCount < 1) then begin
          Insert;
          limparCampos();
        end else begin
          Edit;
          edtCod.Text := qryGrupoCOD_CLASSE.AsString;
          edtNome.Text := qryGrupoNOME_CLASSE.AsString;
          edtDescricao.Text := qryGrupoDESCRICAO_CLASSE.AsString;
          lbOperacao.Caption := 'Editando Grupo ' + qryGrupoCOD_CLASSE.AsString;
        end;
      except
        on E: exception do begin
          MsgErro('Erro ao buscar Grupo. ' + #13 + e.Message);
          Transaction.Rollback;
        end;
      end;
    end;
  end else if (cadastro = tpSubgrupo) then begin
    with qrySubgrupo do begin
      try
        Close;
        ParamByName('COD').AsInteger := cod;

        Open;

        if (RecordCount < 1) then begin
          Insert;
          limparCampos;
        end else begin
          Edit;
          edtCod.Text := qrySubgrupoCOD_SUBCLASSE.AsString;
          edtNome.Text := qrySubgrupoNOME_SUBCLASSE.AsString;
          edtSgCod.Text := qrySubgrupoCODCLASSE_SUBCLASSE.AsString;
          edtSgNome.Text := qrySubgrupoNOME_CLASSE.AsString;
          lbOperacao.Caption := 'Editando Subgrupo ' + qrySubgrupoCOD_SUBCLASSE.AsString;
        end;
        except
          on E: exception do begin
            MsgErro('Erro ao buscar Subgrupo. ' + #13 + e.Message);
            Transaction.Rollback;
          end;
      end;
    end;
  end;
end;

procedure TFrm_CadGrupo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not edtCod.Enabled then begin
    CanClose := False;
    findCod(0);
    Exit;
  end;

  if (cadastro = tpGrupo) then begin
    if qryGrupo.State = dsEdit then begin
      CanClose := False;
      findCod(0);
    end;
  end else if (cadastro = tpSubgrupo) then begin
    if qrySubgrupo.State = dsEdit then begin
      CanClose := False;
      findCod(0);
    end;
  end;
end;

procedure TFrm_CadGrupo.FormCreate(Sender: TObject);
begin
  with Frm_principal.ImgListIcons do begin
    GetBitmap(0, btnGp.Glyph);
    GetBitmap(0, btnSbg.Glyph);
  end;
end;

procedure TFrm_CadGrupo.FormDestroy(Sender: TObject);
begin
  if cadastro = tpGrupo then begin
    if qryGrupo.UpdateTransaction.InTransaction then LiberarTrans(qryGrupo.UpdateTransaction.Name);
  end else if cadastro = tpSubgrupo then begin
    if qrySubgrupo.UpdateTransaction.InTransaction then LiberarTrans(qrySubgrupo.UpdateTransaction.Name);
  end;
end;

procedure TFrm_CadGrupo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then Perform(WM_NEXTDLGCTL, 0, 0)
  else if (Key = #27) then Close;
end;

procedure TFrm_CadGrupo.FormShow(Sender: TObject);
begin
  if (cadastro = tpGrupo) then begin
    qryGrupo.UpdateTransaction := getNewTrans;
    qryGrupo.Transaction := dm.Trans;

    lbSgp.Caption := 'Grupo:';
    pnlDescricao.Visible := True;
    pnlGrupoSgp.Enabled := False;

  end else if (cadastro = tpSubgrupo) then begin
    qrySubgrupo.UpdateTransaction := getNewTrans;
    qrySubgrupo.Transaction := dm.Trans;

    lbSgp.Caption := 'Subgrupo:';
    pnlDescricao.Visible := False;
    pnlGrupoSgp.Enabled := True;
  end;
  findCod(cod);
end;

procedure TFrm_CadGrupo.limparCampos;
begin
  edtDescricao.Clear;
  edtSgNome.Clear;
  edtSgCod.Clear;
  edtNome.Clear;
  if cadastro = tpGrupo then lbOperacao.Caption := 'Cadastrando Grupo'
  else if cadastro = tpSubgrupo then lbOperacao.Caption := 'Cadastrando Subgrupo';

  edtCod.Enabled := True;
  edtCod.Text := 'Automático';
  edtCod.SelectAll;
  edtCod.SetFocus;
end;

procedure TFrm_CadGrupo.btnDeletarClick(Sender: TObject);
begin
  if (cadastro = tpGrupo) then begin
    with qryGrupo do begin
      try
        ParamByName(':COD').AsInteger := StrToInt(edtCod.Text);
        Delete;
        Transaction.Commit;
      except
        on E: exception do begin
          MsgErro('Erro ao deletar Grupo. ' + #13 + e.Message);
          Transaction.Rollback;
        end;
      end;
    end;
  end else if (cadastro = tpSubgrupo) then begin
    with qrySubgrupo do begin
      try
        ParamByName(':COD').AsInteger := StrToInt(edtCod.Text);
        Delete;
        Transaction.Commit;
        except
          on E: exception do begin
            MsgErro('Erro ao deletar Subgrupo. ' + #13 + e.Message);
            Transaction.Rollback;
          end;
      end;
    end;
  end;
end;

procedure TFrm_CadGrupo.btnGravarClick(Sender: TObject);
begin
  if (cadastro = tpGrupo) then begin
    with qryGrupo do begin
      try
        if State = dsInsert then begin
          qryGrupoCOD_CLASSE.AsInteger := StrToInt(getCampoSelect('SELECT GEN_ID(ID_CLASSES, 1) FROM RDB$DATABASE'));
        end else if State = dsEdit then begin
          qryGrupoCOD_CLASSE.AsInteger := StrToInt(edtCod.Text);
        end;
        qryGrupoNOME_CLASSE.AsString := edtNome.Text;
        qryGrupoDESCRICAO_CLASSE.AsString := edtDescricao.Text;
        qryGrupoDTUPDATE_CLASSE.AsDateTime := Now;

        Post;
        qryGrupo.UpdateTransaction.Commit;
      except
        on E: exception do begin
          MsgErro('Erro ao gravar Grupo. ' + #13 + e.Message);
          Transaction.Rollback;
        end;
      end;
    end;
  end else if (cadastro = tpSubgrupo) then begin
    with qrySubgrupo do begin
      try
        if State = dsInsert then begin
          qrySubgrupoCOD_SUBCLASSE.AsInteger := StrToInt(getCampoSelect('SELECT GEN_ID(ID_SUBCLASSE, 1) FROM RDB$DATABASE'));
        end else if State = dsEdit then begin
          qrySubgrupoCOD_SUBCLASSE.AsInteger := StrToInt(edtCod.Text);
        end;
        qrySubgrupoNOME_SUBCLASSE.AsString := edtNome.Text;
        qrySubgrupoCODCLASSE_SUBCLASSE.AsInteger := StrToInt(edtSgCod.Text);
        qrySubgrupoDTUPDATE_SUBCLASSE.AsDateTime := Now;

        Post;
        qrySubgrupo.UpdateTransaction.Commit;
      except
        on E: exception do begin
          MsgErro('Erro ao gravar Subgrupo. ' + #13 + e.Message);
          Transaction.Rollback;
        end;
      end;
    end;
  end;
  findCod(0);
end;

procedure TFrm_CadGrupo.edtCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then begin
    AbreTelaBusca(cadastro, edtCod);
  end else if (Key = VK_RETURN) then begin
    findCod(StrToIntDef(edtCod.Text,0));
  end;
end;

procedure TFrm_CadGrupo.edtSgCodExit(Sender: TObject);
var vlrBusca: Integer;
begin
  if (Length(edtSgCod.Text) > 0) and (Length(edtSgNome.Text) > 0) then begin
    AbreTelaBusca(tpGrupo, (Sender as TEdit), edtSgCod.Text);
  end;
end;

procedure TFrm_CadGrupo.edtSgCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then begin
    AbreTelaBusca(tpGrupo,(sender as TEdit));
  end;
end;

end.
