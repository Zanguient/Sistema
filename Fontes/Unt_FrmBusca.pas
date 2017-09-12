unit Unt_FrmBusca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, FIBDataSet, pFIBDataSet;

type
  TBusca = (tpGrupo, tpSubgrupo);

type
  TFrm_Busca = class(TForm)
    dbgBusca: TDBGrid;
    dsBusca: TDataSource;
    Panel3: TPanel;
    LbRegistros: TLabel;
    LbTxtRegistros: TLabel;
    Panel4: TPanel;
    pnlButtons: TPanel;
    pgControl: TPageControl;
    tbGrupo: TTabSheet;
    tbSubgrupo: TTabSheet;
    Panel1: TPanel;
    BtnBusca: TBitBtn;
    EdtBusca: TEdit;
    rbGrupo: TRadioButton;
    rbCodGrupo: TRadioButton;
    rbGrupoPai: TRadioButton;
    rbSubgrupo: TRadioButton;
    rbCodSubgrupo: TRadioButton;
    qryBusca: TpFIBDataSet;
    btnSelecionar: TBitBtn;
    btnCacnelar: TBitBtn;

    procedure BtnBuscaClick(Sender: TObject);
    procedure EdtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgBuscaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnCacnelarClick(Sender: TObject);
    procedure dbgBuscaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    procedure PreencherGrid;
    procedure RetornoForm(encontrou: Boolean);

  var
    tipoBusca: TBusca;

  public
    constructor Create(AOwner: TComponent; tipoBusca: TBusca; busca: String); overload;

  end;

var
  Frm_Busca: TFrm_Busca;
  retorno: Integer;

implementation

uses
  Unt_DM, UnitFuncoes, Unt_FrmPrincipal;

{$R *.dfm}

procedure TFrm_Busca.btnCacnelarClick(Sender: TObject);
begin
  RetornoForm(False);
end;

procedure TFrm_Busca.btnSelecionarClick(Sender: TObject);
begin
  RetornoForm(True);
end;

constructor TFrm_Busca.Create(AOwner: TComponent; tipoBusca: TBusca; busca: String);
begin
  Create(AOwner);
  self.tipoBusca := tipoBusca;
  EdtBusca.Text := busca;
end;

procedure TFrm_Busca.RetornoForm(encontrou: Boolean);
begin
  if (encontrou = True) then retorno := dbgBusca.Columns[0].Field.AsInteger
  else retorno := 0;
end;

procedure TFrm_Busca.dbgBuscaDblClick(Sender: TObject);
begin
  btnSelecionar.Click;
end;

procedure TFrm_Busca.dbgBuscaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then begin
    btnSelecionar.Click;
  end;
end;

procedure TFrm_Busca.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
var i: integer;
begin
  if (Key = #13) then
  begin
    Key := #0;
    BtnBusca.Click;

  end else if Length(Trim(EdtBusca.Text)) = 0 then begin
    if not (Key in ['0' .. '9']) then begin
      if tipoBusca = tpGrupo then rbGrupo.Checked := True
      else if tipoBusca = tpGrupo then rbSubgrupo.Checked := True;
    end else begin
      if tipoBusca = tpGrupo then rbCodGrupo.Checked := True
      else if tipoBusca = tpGrupo then rbCodSubgrupo.Checked := True;
    end;
  end else if Length(Trim(EdtBusca.Text)) > 0 then begin
    if (rbCodGrupo.Checked) or (rbCodSubgrupo.Checked) then begin
      for i := 1 to Length(Trim(EdtBusca.Text)) do begin
        if not(EdtBusca.Text[i] in ['0' .. '9']) then begin
          if tipoBusca = tpGrupo then rbGrupo.Checked := True
          else if tipoBusca = tpGrupo then rbSubgrupo.Checked := True;
        end;
      end;
    end;
  end;
end;

procedure TFrm_Busca.FormCreate(Sender: TObject);
var page: Integer;
  I: Integer;
begin
  Frm_principal.ImgListIcons.GetBitmap(0, BtnBusca.Glyph);

  for page := 0 to pgControl.PageCount - 1 do pgControl.Pages[page].TabVisible := false;

  if (tipoBusca = tpGrupo) then begin
    tbGrupo.Visible := True;
  end else if (tipoBusca = tpSubgrupo) then begin
    tbSubgrupo.Visible := True;
  end;

  if (StrToIntDef(EdtBusca.Text, 0) = 0) then begin
    if (tipoBusca = tpGrupo) then rbCodGrupo.Checked := True
    else if (tipoBusca = tpSubgrupo) then rbCodSubgrupo.Checked := True;
  end else begin
    if (tipoBusca = tpGrupo) then rbGrupo.Checked := True
    else if (tipoBusca = tpSubgrupo) then rbSubgrupo.Checked := True;
  end;
//  PreencherGrid();
end;

procedure TFrm_Busca.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then Perform(WM_NEXTDLGCTL, 0, 0)
  else if (Key = #27) then Close;
end;

procedure TFrm_Busca.FormShow(Sender: TObject);
begin
  if (EdtBusca.Text = '') then begin
    EdtBusca.SelectAll;
    EdtBusca.SetFocus;
  end else BtnBusca.Click;
end;

procedure TFrm_Busca.PreencherGrid;
var i, aux: Integer;
begin
  aux := 0;
  for i := 0 to qryBusca.FieldsCount-1 do begin
    if ((dbgBusca.Columns[i].FieldName = 'COD_SUBCLASSE') or (dbgBusca.Columns[0].FieldName = 'COD_CLASSE')) then begin
      dbgBusca.Columns[i].Title.Caption := 'Código';
      dbgBusca.Columns[i].Title.Alignment := taRightJustify;
      dbgBusca.Columns[i].Alignment := taRightJustify;
      dbgBusca.Columns[i].Width := 50;
    end;

    if ((dbgBusca.Columns[i].FieldName = 'NOME_CLASSE') or (dbgBusca.Columns[i].FieldName = 'NOME_SUBCLASSE')) then begin
      if (tipoBusca = tpGrupo) then dbgBusca.Columns[i].Title.Caption := 'Grupo'
      else if (tipoBusca = tpSubgrupo) then begin
        if aux = 0 then dbgBusca.Columns[i].Title.Caption := 'Subgrupo'
        else dbgBusca.Columns[i].Title.Caption := 'Grupo Pai';
        Inc(aux);
      end;
      dbgBusca.Columns[i].Title.Alignment := taLeftJustify;
      dbgBusca.Columns[i].Alignment := taLeftJustify;
      dbgBusca.Columns[i].Width := 150;
    end;

    if (dbgBusca.Columns[i].FieldName = 'DESCRICAO_CLASSE') then begin
      dbgBusca.Columns[i].Title.Caption := 'Descrição';
      dbgBusca.Columns[i].Title.Alignment := taLeftJustify;
      dbgBusca.Columns[i].Alignment := taLeftJustify;
      dbgBusca.Columns[i].Width := 150;
    end;
  end;
end;

procedure TFrm_Busca.BtnBuscaClick(Sender: TObject);
begin
  with qryBusca do begin
    if (tipoBusca = tpGrupo) then begin
      try
        Close;
        SQL.Clear;

        SQL.Add('SELECT C.COD_CLASSE, C.NOME_CLASSE, C.DESCRICAO_CLASSE FROM CLASSES C');

        if Length(Trim(EdtBusca.Text)) > 0 then begin
          if rbCodGrupo.Checked then begin
            SQL.Add('WHERE C.COD_CLASSE = ' + EdtBusca.Text);
          end else if rbGrupo.Checked then begin
            SQL.Add('WHERE C.NOME_CLASSE LIKE ' + QuotedStr('%' + EdtBusca.Text + '%'));
          end;
        end;

        Open;

        if (RecordCount <= 0) then begin
          EdtBusca.SelectAll;
          EdtBusca.SetFocus;
        end;

      except
        on e: exception do begin
          Transaction.Rollback;
          MsgErro('Erro ao executar Busca ' + #13 + e.Message);
        end;
      end;

    end else if (tipoBusca = tpSubgrupo) then begin
      try
        Close;
        SQL.Clear;

        SQL.Add('SELECT S.COD_SUBCLASSE, S.NOME_SUBCLASSE, C.NOME_CLASSE FROM SUBCLASSE S');
        SQL.Add('JOIN CLASSES C ON S.CODCLASSE_SUBCLASSE = C.COD_CLASSE');

        if Length(Trim(EdtBusca.Text)) > 0 then begin
          if rbCodSubgrupo.Checked then begin
            SQL.Add('WHERE S.COD_SUBCLASSE = ' + EdtBusca.Text);
          end else if rbSubgrupo.Checked then begin
            SQL.Add('WHERE S.NOME_SUBCLASSE = ' + QuotedStr('%' + EdtBusca.Text + '%'));
          end else if rbGrupoPai.Checked then begin
            SQL.Add('WHERE C.NOME_CLASSE = ' + QuotedStr('%' + EdtBusca.Text + '%'));
          end;
        end;
        Open;
      except
        on e: exception do begin
          Transaction.Rollback;
          MsgErro('Erro ao executar Busca ' + #13 + e.Message);
        end;
      end;
    end;
  end;
  PreencherGrid;
end;

end.
