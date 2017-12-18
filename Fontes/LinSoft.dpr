program LinSoft;

uses
  Vcl.Forms, GifImg, Vcl.Dialogs, Vcl.Controls, Vcl.Themes, Vcl.Styles, SysUtils,
  Unt_FrmRelListaClientes in 'Unt_FrmRelListaClientes.pas' {Frm_RelListaClientes},
  Unt_FrmListaClientes in 'Unt_FrmListaClientes.pas' {FormListClientes},
  Unt_FrmCadCliente in 'Unt_FrmCadCliente.pas' {FormCadastroCliente},
  Unt_FrmBuscaCidade in 'Unt_FrmBuscaCidade.pas' {Frm_BuscaCidade},
  Unt_FrmConfigGeral in 'Unt_FrmConfigGeral.pas' {Frm_ConfigGeral},
  Unt_FrmBuscaCliente in 'Unt_FrmBuscaCliente.pas' {FormBuscador},
  Unt_FrmCadProduto in 'Unt_FrmCadProduto.pas' {FormCadProduto},
  UnitTrocaOperador in 'UnitTrocaOperador.pas' {FormTrocaOper},
  Unt_FrmPrincipal in 'Unt_FrmPrincipal.pas' {Frm_principal},
  Unt_FrmCadCidade in 'Unt_FrmCadCidade.pas' {FormCadCidade},
  UnitListCidades in 'UnitListCidades.pas' {FormListCidades},
  Unt_FrmCadGrupo in 'Unt_FrmCadGrupo.pas' {Frm_CadGrupo},
  Unt_FrmStrings in 'Unt_FrmStrings.pas' {Frm_Strings},
  UnitCarregar in 'UnitCarregar.pas' {FormCarregar},
  UnitBuscarOp in 'UnitBuscarOp.pas' {FormBuscarOp},
  Unt_FrmCadOperador in 'Unt_FrmCadOperador.pas' {FrmCadOperador},
  Unt_FrmBusca in 'Unt_FrmBusca.pas' {Frm_Busca},
  Unt_FrmBck in 'Unt_FrmBck.pas' {Frm_Bck},
  Unt_DM in 'Unt_DM.pas' {dm: TDataModule},
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  Unt_Dados in 'Unt_Dados.pas' {$R *.res},
  UnitConstants in 'UnitConstants.pas',
  Unt_PDV in 'Unt_PDV.pas' {Frm_PDV},
  UntFuncoes in '..\Outros\UntFuncoes.pas' {$R *.res},
  Unt_FrmBuscaGenerica in 'Unt_FrmBuscaGenerica.pas' {Frm_BuscaGen},
  Unt_FrmBuscaOperador in 'Unt_FrmBuscaOperador.pas' {Frm_BuscaOperador};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  try
    dm := Tdm.Create(Application);

    if (dm.DB.Connected = True) then begin

      FormLogin := TFormLogin.Create(Application, True);
      FormLogin.ShowModal;

      if (FormLogin.ModalResult = mrOK) then begin
        FormLogin.Free;
        FormLogin := nil;

        Application.CreateForm(TFrm_principal, Frm_principal);
        Application.Run;
      end;

    end;

  Except
    on E: Exception do begin
      MsgErro('Não foi Possível Abrir o Sistema. ' + #13 + 'Erro: ' + e.Message);
    end;
  end;

end.
