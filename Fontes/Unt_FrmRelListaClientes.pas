unit Unt_FrmRelListaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, Data.DB,
  QRCtrls, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Datasnap.Provider, pFIBClientDataSet,
  Datasnap.DBClient, Unt_FrmListaClientes;

type
  TFrm_RelListaClientes = class(TForm)
    QrepRelListaClientes: TQuickRep;
    qrBandCabecalho: TQRBand;
    qrBandTitulo: TQRBand;
    qrBandColunas: TQRBand;
    qrLbCod: TQRLabel;
    QrLbNome: TQRLabel;
    qrBandDados: TQRBand;
    qrDbCod: TQRDBText;
    qrDbNome: TQRDBText;
    qrBandRodape: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    qrSysData: TQRSysData;
    lbNomeEmpresa: TQRLabel;
    lbEnderecoEmpresa: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    qrGrupUfCidade: TQRGroup;
    QRDBText1: TQRDBText;
    qrGrupCidadeUf: TQRGroup;
    QRDBText4: TQRDBText;
    CdsAux: TpFIBClientDataSet;
    DspAux: TpFIBDataSetProvider;
    CdsAuxCOD_CLIENTE: TIntegerField;
    CdsAuxNOME_CLIENTE: TStringField;
    CdsAuxENDER_CLIENTE: TStringField;
    CdsAuxBAIRRO_CLIENTE: TStringField;
    CdsAuxSEXO_CLIENTE: TSmallintField;
    CdsAuxDTNASC_CLIENTE: TDateField;
    CdsAuxFONER_CLIENTE: TStringField;
    CdsAuxCELULAR_CLIENTE: TStringField;
    CdsAuxCPF_CLIENTE: TStringField;
    CdsAuxCGC_CLIENTE: TStringField;
    CdsAuxRG_CLIENTE: TStringField;
    CdsAuxCODCIDADE_CLIENTE: TIntegerField;
    CdsAuxNOME_CIDADE: TStringField;
    CdsAuxCEP_CIDADE: TStringField;
    CdsAuxDEPENDENTES_CLIENTE: TStringField;
    CdsAuxDTCADASTRO_CLIENTE: TDateField;
    CdsAuxCEP_CLIENTE: TStringField;
    CdsAuxESTADOCIVIL_CLIENTE: TSmallintField;
    CdsAuxEMAIL_CLIENTE: TStringField;
    CdsAuxCLASSIFICACAO_CLIENTE: TSmallintField;
    CdsAuxINSCRICAO_CLIENTE: TStringField;
    CdsAuxAPELIDO_CLIENTE: TStringField;
    CdsAuxNOMEMAE_CLIENTE: TStringField;
    CdsAuxNOMEPAI_CLIENTE: TStringField;
    CdsAuxDTADMISSAO_CLIENTE: TDateField;
    CdsAuxDTALTERACAO_CLIENTE: TDateTimeField;
    CdsAuxTIPO_PESSOA: TStringField;
    CdsAuxENQUADRAMENTO_CLIENTE: TSmallintField;
    CdsAuxCIDADE_UF: TStringField;
    CdsAuxUF_CIDADE: TStringField;
    procedure QrepRelListaClientesBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelListaClientes: TFrm_RelListaClientes;
  var tipoRel: Integer;

implementation

Uses Unt_Dados, UnitFuncoes;

{$R *.dfm}

procedure TFrm_RelListaClientes.QrepRelListaClientesBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  //  tipoRel = 1: Rel. Clientes por UF
  //  tipoRel = 2: Rel. Clientes por UF e por Cidade

  try
    if not CdsAux.Active then CdsAux.Open;
    CdsAux.Refresh;

    if  (tipoRel = 1) then begin
      qrGrupUfCidade.Enabled := true;
      qrGrupCidadeUf.Enabled := False;
      cdsAux.IndexName := 'IDX_UF_CLI';
    end else if (tipoRel = 2) then begin
      qrGrupUfCidade.Enabled := true;
      qrGrupCidadeUf.Enabled := True;
      cdsAux.IndexName := 'IDX_UF_CID_CLI';
    end;

    lbNomeEmpresa.Caption := UnitFuncoes.FormataPalavra(Unt_Dados.nomeEmpresa);
    lbEnderecoEmpresa.Caption := Unt_Dados.enderecoEmpresa + ', ' +
                                 Unt_Dados.numEmpresa + ', ' +
                                 Unt_Dados.bairroEmpresa + '. ' +
                                 Unt_Dados.cidadeUfEmpresa + '   CEP: ' +
                                 UnitFuncoes.FormataCEP(Unt_Dados.cepEmpresa)
  finally
    CdsAux.Close;
  end;
end;

end.
