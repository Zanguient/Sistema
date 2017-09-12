unit Unt_FrmBuscaOperador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls, FIBDataSet, pFIBDataSet, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.StdActns, FIBQuery, pFIBQuery,
  FIBDatabase, pFIBDatabase, Unt_DM;

type
  TBusca = (Operador);
  TFrm_BuscaGen = class(TForm)

    rbgFiltro: TRadioGroup;
    DBGrid1: TDBGrid;
    pnlBotton: TPanel;
    pnlBusca: TPanel;
    pnlBtnTop: TPanel;
    pnlWrapBtnTop: TPanel;
    pnlWrapBtn2: TPanel;
    btnBusca: TSpeedButton;
    btnAtualizar: TBitBtn;
    btnLimpar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSelecionar: TBitBtn;
    edtBusca: TEdit;
    qryBuscaOperador: TpFIBDataSet;
    qryBuscaOperadorCOD_VENDEDOR: TFIBIntegerField;
    qryBuscaOperadorNOME_VENDEDOR: TFIBStringField;
    qryBuscaOperadorSTATUS: TFIBStringField;
    dsDbgOperador: TDataSource;

    private
      procedure preencheDbg(fields: Array of String);

    public
      Function buscar(filtro: String): Boolean;
      Constructor Create(pCadBusca: TBusca; filtro: String = '');

    published

  end;

var
  Frm_BuscaGen: TFrm_BuscaGen;


implementation

Uses
  UnitFuncoes;

{$R *.dfm}

function TFrm_BuscaGen.buscar(filtro: String): Boolean;
begin
  with getNewQuery(False) do begin
    try
      Close;
      SQL.Clear;



      if not (filtro.IsEmpty) then begin
        if (rbgFiltro.ItemIndex = 0) then begin
          Conditions.AddMyCondition('COD_VENDEDOR', Format('V.COD_VENDEDOR = %d', [StrToInt(filtro)]))
        end else if (rbgFiltro.ItemIndex = 1) then begin
          Conditions.AddMyCondition('NOME_VENDEDOR', Format('V.NOME_VENDEDOR = %%s%', [filtro]));
        end;
      end;

      ExecQuery;

      if (RecordCount <= 0) then Exit;


    except
      on e: Exception do begin
        Transaction.Rollback;
        raise Exception.Create('Erro ao efetuar Busca #13 ERRO: ' + e.Message);
      end;
    end;
  end;
end;

constructor TFrm_BuscaGen.Create(pCadBusca: TBusca; filtro: String = '');
begin
  if not (filtro.IsEmpty) then begin
    edtBusca.Text := filtro;
  end;
  FTipoCadBusca := pCadBusca;
end;

procedure TFrm_BuscaGen.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then begin
    Close;
  end else if (Key = VK_F5) then begin
    btnAtualizar.Click;
  end;
end;

procedure TFrm_BuscaGen.preencheDbg(fields: array of String);
var
  I: Integer;
begin
  if (FTipoCadBusca = TBusca.Operador) then begin
    for I := 0 to Length(fields) do begin
      if (fields[i].Equals('COD_VENDEDOR')) then begin
        DBGrid1.Columns.Add();


      end;
    end;
  end;
end;

end.
