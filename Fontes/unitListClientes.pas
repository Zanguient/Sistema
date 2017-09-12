unit Unt_FrmListaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.ComCtrls, Vcl.Buttons, Vcl.Menus,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FIBDataSet, pFIBDataSet;

type
  TFormListClientes = class(TForm)
    DBGridListagem: TDBGrid;
    DsListaClientes: TDataSource;
    pMenu: TPopupMenu;
    teste11: TMenuItem;
    teste21: TMenuItem;
    teste31: TMenuItem;
    PSheet: TPanel;
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
    SbBuscarCid: TSpeedButton;
    SbBuscarCli: TSpeedButton;
    DtData: TDateTimePicker;
    BtnAtualizar: TButton;
    BtnLimpar: TButton;
    LbTxtRegistros: TLabel;
    LbRegistros: TLabel;
    btnCancelar: TButton;
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
    SbImprimir: TSpeedButton;
    SbRelatorios: TSpeedButton;
    QryListaClientes: TpFIBDataSet;
    QryListaClientesCOD_CLIENTE: TFIBIntegerField;
    QryListaClientesNOME_CLIENTE: TFIBStringField;
    QryListaClientesENDER_CLIENTE: TFIBStringField;
    QryListaClientesBAIRRO_CLIENTE: TFIBStringField;
    QryListaClientesSEXO_CLIENTE: TFIBSmallIntField;
    QryListaClientesDTNASC_CLIENTE: TFIBDateField;
    QryListaClientesFONER_CLIENTE: TFIBStringField;
    QryListaClientesCELULAR_CLIENTE: TFIBStringField;
    QryListaClientesCPF_CLIENTE: TFIBStringField;
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
    QryListaClientesTIPO_PESSOA: TFIBStringField;
    QryListaClientesENQUADRAMENTO_CLIENTE: TFIBSmallIntField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SbBuscarCliClick(Sender: TObject);
    procedure EdtCodClienteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodCidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnLimparClick(Sender: TObject);
    procedure DBGridListagemDblClick(Sender: TObject);
    procedure DBGridListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure teste11Click(Sender: TObject);
    procedure teste21Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure EdtCodClienteKeyPress(Sender: TObject; var Key: Char);
    procedure EdtUfKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure DtDataKeyPress(Sender: TObject; var Key: Char);
    procedure EdtRendaExit(Sender: TObject);
    procedure EdtRendaP2Exit(Sender: TObject);
    procedure CbTipoPessoaKeyPress(Sender: TObject; var Key: Char);
    procedure CbTipoPessoaEnter(Sender: TObject);
    procedure FdQuery_ListCliTIPO_CAD_CLIENTEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure OnMyGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure OnMySetText(Sender: TField; const Text: String);
    procedure SbBuscarCidClick(Sender: TObject);
  private
    { Private declarations }
    function ConsultarDB(index: Integer): Boolean;
    procedure LimparCampos;
    procedure AddImgSb;
    procedure abrirFormBuscador(index: Integer);
    procedure RowSelecionada;
    function SelectCodIdRow: String;
    procedure AbrirCadCliente;
  public
    { Public declarations }
  end;

var
  FormListClientes: TFormListClientes;
  IndxCounter: Integer;
  RendaP1, RendaP2: String;

implementation

uses Unt_DM, UdmComponents, Unt_FrmBuscaCliente, UnitBuscarCid, Unt_FrmCadCliente, Unt_FrmBuscaCidade;

{$R *.dfm}

procedure TFormListClientes.AbrirCadCliente;
begin
//  Unt_FrmCadCliente.FormCadastroCliente.EdtCod.Text := SelectCodIdRow;
//  UnitCadUnt_FrmCadClienteCliente.indxAbrirCad := 1;
//  Unt_FrmCadCliente.FormCadastroCliente.ShowModal;
end;

procedure TFormListClientes.abrirFormBuscador(index: Integer);
begin
//  if index = 0 then
//  begin
//    Unt_FrmBuscaCliente.FormBuscador.Caption := 'Buscar Cliente';
//    Unt_FrmBuscaCliente.tipoBusca := 0;
////    Unt_FrmBuscaCliente.espCli := 1;
//    Unt_FrmBuscaCliente.FormBuscador.RbNomeCliente.Visible := True;
//    Unt_FrmBuscaCliente.FormBuscador.RbNomeCliente.Checked := True;
//
////    UnitBuscador.FormBuscador.GbStatement.Visible := False;
//    Unt_FrmBuscaCliente.FormBuscador.GbData.Visible := True;
//
//    FormBuscador.ShowModal;
//  end
//  else if index = 1 then
//  begin
    // UnitBuscador.FormBuscador.Caption := 'Buscar Cidade';
    //
    // UnitBuscador.TipoBusca := 1;
    // UnitBuscador.espCid := 2;
    //
    // UnitBuscador.FormBuscador.RbCliente.Visible := False;
    // UnitBuscador.FormBuscador.RbCidade.Checked := True;
    //
    // UnitBuscador.FormBuscador.GbStatement.Visible := True;
    // UnitBuscador.FormBuscador.GbData.Visible := False;

//    UnitBuscarCid.IndxCidade := 2;
//    FormBuscarCid.ShowModal;
//  end;
end;

procedure TFormListClientes.AddImgSb;
begin
  SbBuscarCli.Glyph := nil;
  UdmComponents.udmComp.ImageList1.GetBitmap(2, SbBuscarCli.Glyph);
  SbBuscarCli.Transparent := True;
  SbBuscarCli.Flat := True;

  SbBuscarCid.Glyph := nil;
  UdmComponents.udmComp.ImageList1.GetBitmap(2, SbBuscarCid.Glyph);
  SbBuscarCid.Transparent := True;
  SbBuscarCid.Flat := True;
end;

procedure TFormListClientes.BtnAtualizarClick(Sender: TObject);
begin
  with QryListaClientes do begin
    SQLs.SelectSQL.Add('SELECT');
    SQLs.SelectSQL.Add('CLIENTES.COD_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.NOME_CLIENTE,');
    SQLs.SelectSQL.Add('COALESCE(CLIENTES.ENDER_CLIENTE || '+QuotedStr(',')+' || CLIENTES.NUM_CLIENTE, CLIENTES.ENDER_CLIENTE) AS ENDER_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.BAIRRO_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.SEXO_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.DTNASC_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.FONER_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.CELULAR_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.CPF_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.CGC_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.RG_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.CODCIDADE_CLIENTE,');
    SQLs.SelectSQL.Add('CIDADES.NOME_CIDADE || '+QuotedStr(',')+' || CIDADES.UF_CIDADE AS NOME_CIDADE,');
    SQLs.SelectSQL.Add('CIDADES.CEP_CIDADE,');
    SQLs.SelectSQL.Add('CLIENTES.DEPENDENTES_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.DTCADASTRO_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.CEP_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.ESTADOCIVIL_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.EMAIL_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.CLASSIFICACAO_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.INSCRICAO_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.APELIDO_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.NOMEMAE_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.NOMEPAI_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.DTADMISSAO_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.DTALTERACAO_CLIENTE,');
    SQLs.SelectSQL.Add('CLIENTES.TIPO_PESSOA,');
    SQLs.SelectSQL.Add('CLIENTES.ENQUADRAMENTO_CLIENTE');
    SQLs.SelectSQL.Add('FROM');
    SQLs.SelectSQL.Add('CLIENTES INNER JOIN CIDADES ON');
    SQLs.SelectSQL.Add('CLIENTES.CODCIDADE_CLIENTE = CIDADES.COD_CIDADE');

    try
      if Length(Trim(EdtCodCliente.Text)) > 0 then Conditions.Add('WHERE CLIENTES.COD_CLIENTE = ' + EdtCodCliente.Text);
      if Length(Trim(EdtCodCidade.Text)) > 0 then Conditions.Add('WHERE CIDADES.COD_CIDADE = ' + EdtCodCidade.Text);
      if Length(Trim(EdtUf.Text)) > 0 then Conditions.Add('WHERE CIDADES.UF = ' + EdtUf.Text);

      if CbTipoPessoa.Items[CbTipoPessoa.ItemIndex].Equals('Pessoa Física') then Conditions.Add('WHERE CLIENTES.TIPO_PESSOA = '+QuotedStr('F'))
      else if CbTipoPessoa.Items[CbTipoPessoa.ItemIndex].Equals('Pessoa Jurídica') then Conditions.Add('WHERE CLIENTES.TIPO_PESSOA = '+QuotedStr('J'));

    except
      on E: exception do begin
        ShowMessage('Erro ao executar busca. Erro: '+e.Message);
        Transaction.Rollback;
        Close;
        Exit;
      end;
    end;

    Open;

    // Contar Registros
    LbRegistros.Caption := QryListaClientes.RecordCount.ToString;

    // Foco na primeira linha
    QryListaClientes.First;
    DBGridListagem.SelectedField := DBGridListagem.Columns[0].Field;
    DBGridListagem.SetFocus;
  end;
end;

procedure TFormListClientes.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormListClientes.BtnLimparClick(Sender: TObject);
begin
  QryListaClientes.Close;
end;

procedure TFormListClientes.CbTipoPessoaEnter(Sender: TObject);
begin
  CbTipoPessoa.Perform(WM_UPDATEUISTATE, MakeWParam(UIS_CLEAR, UISF_HIDEFOCUS), 0);
  if CbTipoPessoa.ItemIndex = 0 then
  begin
    CbTipoPessoa.SetFocus;
  end;
end;

procedure TFormListClientes.CbTipoPessoaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormListClientes.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

function TFormListClientes.ConsultarDB(index: Integer): Boolean;
var
  i: Integer;
  hasComma, hasDot, preWhere: Boolean;
  Source, TargetIni, TargetFim: String;
begin
  // Buscar por Cliente
  if index = 0 then
  begin
    preWhere := False;

    try
      with Unt_DM.dm.FDQuery_List do
      begin
        DsListaClientes.Enabled := True;
        Close;
        SQL.Clear;

        SQL.Add('SELECT c.id_cliente, c.nome_cliente, ' + 'ci.nome_cidade || ' +
          QuotedStr('-') + ' || es.uf, c.telefone, c.idade, c.tipo_cad_cliente '
          + 'FROM cliente c inner join cidade ci on ' +
          'c.id_cidade = ci.id_cidade ' + 'join estado es on ' +
          'ci.id_estado = es.id_estado ');

        if Length(Trim(EdtCodCliente.Text)) > 0 then
        begin
          hasComma := False;
          hasDot := False;
          for i := 0 to Length(Trim(EdtCodCliente.Text)) do
          begin
            if (Pos(',', EdtCodCliente.Text) <> 0) then
            begin
              hasComma := True;
              // Break;
            end
            else if (Pos('..', EdtCodCliente.Text) <> 0) then
            begin
              hasDot := True;
            end;
          end;

          if hasComma then
          begin
            if preWhere then
            begin
              SQL.Add(' AND c.id_cliente IN (' + EdtCodCliente.Text + ') ');
            end
            else
            begin
              SQL.Add('WHERE c.id_cliente IN (' + EdtCodCliente.Text + ') ');
              preWhere := True;
            end;
          end
          else if (hasComma = False) and (hasDot) then
          begin
            // Tratar String;
            Source := EdtCodCliente.Text;
            for i := 0 to Length(Trim(Source)) do
            begin
              if Source[i] = '.' then
              begin
                if Source[i + 1] = '.' then
                begin
                  TargetIni := Copy(Source, 1, i - 1);
                  TargetFim := Copy(Source, i + 2, Length(Source));

                  if preWhere then
                  begin
                    SQL.Add(' AND c.id_cliente BETWEEN ' + TargetIni + ' AND ' +
                      TargetFim);
                    ShowMessage('Prewhere = true');
                  end
                  else
                  begin
                    SQL.Add('WHERE c.id_cliente BETWEEN ' + TargetIni + ' AND '
                      + TargetFim);
                    preWhere := True;
                  end;
                  break;
                end;
              end;
            end;
          end
          else
          begin
            if preWhere then
            begin
              SQL.Add(' AND c.id_cliente = ' + EdtCodCliente.Text + ' ');
            end
            else
            begin
              SQL.Add('WHERE c.id_cliente = ' + EdtCodCliente.Text + ' ');
              preWhere := True;
            end;
          end;
        end;

        if Length(Trim(EdtCodCidade.Text)) > 0 then
        begin
          hasComma := False;
          hasDot := False;
          for i := 0 to Length(Trim(EdtCodCidade.Text)) do
          begin
            if (Pos(',', EdtCodCidade.Text) <> 0) then
            begin
              hasComma := True;
              // Break;
            end
            else if (Pos('..', EdtCodCidade.Text) <> 0) then
            begin
              hasDot := True;
            end;
          end;

          if hasComma then
          begin
            if preWhere then
            begin
              SQL.Add(' AND c.id_cidade IN (' + EdtCodCidade.Text + ') ');
            end
            else
              SQL.Add('WHERE c.id_cidade IN (' + EdtCodCidade.Text + ') ');
            preWhere := True;
          end
          else if (hasComma = False) and (hasDot) then
          begin
            // Tratar String;
            Source := EdtCodCidade.Text;
            for i := 0 to Length(Trim(Source)) do
            begin
              if Source[i] = '.' then
              begin
                if Source[i + 1] = '.' then
                begin
                  TargetIni := Copy(Source, 1, i - 1);
                  TargetFim := Copy(Source, i + 2, Length(Source));

                  if preWhere then
                  begin
                    SQL.Add(' AND c.id_cidade BETWEEN ' + TargetIni + ' AND ' +
                      TargetFim);
                  end
                  else
                  begin
                    SQL.Add('WHERE c.id_cidade BETWEEN ' + TargetIni + ' AND ' +
                      TargetFim);
                    preWhere := True;
                  end;
                  break;
                end;
              end;
            end;
          end
          else
          begin
            if preWhere then
            begin
              SQL.Add(' AND c.id_cidade = ' + EdtCodCidade.Text + ' ');
            end
            else
            begin
              preWhere := True;
              SQL.Add('WHERE c.id_cidade = ' + EdtCodCidade.Text + ' ');
            end;
          end;
        end;

        if (Length(Trim(EdtUf.Text)) >= 1) then
        begin
          if preWhere then
          begin
            SQL.Add(' AND es.uf = ' + QuotedStr(Trim(UpperCase(EdtUf.Text))) + ' ');
          end
          else
          begin
            SQL.Add('WHERE es.uf = ' + QuotedStr(Trim(UpperCase(EdtUf.Text))) + ' ');
            preWhere := True;
          end;
        end;

        if Length(Trim(EdtIdade.Text)) > 0 then
        begin
          hasDot := False;
          for i := 0 to Length(Trim(EdtIdade.Text)) do
          begin
            if (Pos('..', EdtIdade.Text) <> 0) then
            begin
              hasDot := True;
            end;
          end;

          if (hasDot) then
          begin
            // Tratar String;
            Source := EdtIdade.Text;
            for i := 0 to Length(Trim(Source)) do
            begin
              if Source[i] = '.' then
              begin
                if Source[i + 1] = '.' then
                begin
                  TargetIni := Copy(Source, 1, i - 1);
                  TargetFim := Copy(Source, i + 2, Length(Source));

                  if preWhere then
                  begin
                    SQL.Add(' AND c.idade BETWEEN ' + QuotedStr(TargetIni) + ' AND ' +
                      QuotedStr(TargetFim));
                  end
                  else
                  begin
                    SQL.Add('WHERE c.idade BETWEEN ' + QuotedStr(TargetIni) + ' AND ' +
                      QuotedStr(TargetFim));
                    preWhere := True;
                  end;
                  break;
                end;
              end;
            end;
          end
          else
          begin
            if preWhere then
            begin
              SQL.Add(' AND c.idade = ' + QuotedStr(EdtIdade.Text) + ' ');
            end
            else
            begin
              SQL.Add('WHERE c.idade = ' + QuotedStr(EdtIdade.Text) + ' ');
              preWhere := True;
            end;
          end;
        end;

        if ((Length(Trim(RendaP1)) > 0) and (Length(Trim(RendaP2)) > 0)) then
        begin
          if preWhere then
          begin
            SQL.Add(' AND c.renda_cliente BETWEEN ' + RendaP1 + ' AND ' + RendaP2);
          end
          else
          begin
            SQL.Add('WHERE c.renda_cliente BETWEEN ' + RendaP1 + ' AND ' + RendaP2);
            preWhere := True;
          end;
        end
        else if (Length(Trim(RendaP1)) > 0) then
        begin
          if preWhere then
          begin
            SQL.Add(' AND c.renda_cliente >= ' + RendaP1 + ' ');
          end
          else
          begin
            SQL.Add('WHERE c.renda_cliente >= ' + RendaP1 + ' ');
            preWhere := True;
          end;
        end
        else if (Length(Trim(RendaP2)) > 0) then
        begin
          if preWhere then
          begin
            SQL.Add(' AND c.renda_cliente <= ' + RendaP2 + ' ');
          end
          else
          begin
            SQL.Add('WHERE c.renda_cliente <= ' + RendaP2 + ' ');
            preWhere := True;
          end;
        end;

        if (Length(Trim(EdtTime.Text)) > 0) then
        begin
          if preWhere then
          begin
            SQL.Add(' AND c.time_cliente = ' + QuotedStr(EdtTime.Text) + ' ');
          end
          else
          begin
            SQL.Add('WHERE c.time_cliente = ' + QuotedStr(EdtTime.Text) + ' ');
            preWhere := True;
          end;
        end;

        if (CbTipoPessoa.ItemIndex <> 0) then
        begin
          if preWhere then
          begin
            if (CbTipoPessoa.ItemIndex = 1) then
            begin
              SQL.Add(' AND c.tipo_cad_cliente = 0 ');
            end
            else if (CbTipoPessoa.ItemIndex = 2) then
            begin
              SQL.Add(' AND c.tipo_cad_cliente = 1 ');
            end;
          end
          else
          begin
            if (CbTipoPessoa.ItemIndex = 1) then
            begin
              SQL.Add('WHERE c.tipo_cad_cliente = 0 ');
            end
            else if (CbTipoPessoa.ItemIndex = 2) then
            begin
              SQL.Add('WHERE c.tipo_cad_cliente = 1 ');
            end;
            preWhere := True;
          end;
        end;

        SQL.Add('ORDER BY id_cliente');

        Open();

        // Editar e alimentar o DBGrid
        FieldByName('id_cliente').DisplayLabel := 'Código';
        FieldByName('nome_cliente').DisplayLabel := 'Nome Cliente';
        FieldByName('Concatenation').DisplayLabel := 'Cidade';
        FieldByName('telefone').DisplayLabel := 'Telefone';
        FieldByName('idade').DisplayLabel := 'Idade';
        FieldByName('tipo_cad_cliente').DisplayLabel := 'Tipo';

        DBGridListagem.DataSource := DsListaClientes;

        DBGridListagem.DataSource.DataSet.FieldByName('tipo_cad_cliente').OnGetText := Unt_dm.dm.TipoCadGetText;

        for i := 0 to DBGridListagem.Columns.Count - 1 do
        begin
          if (i in [0,4,5]) then
          begin
            DBGridListagem.Columns[i].Width :=
              5 + DBGridListagem.Canvas.TextWidth
              (DBGridListagem.Columns[i].title.Caption);
          end;
        end;

        DBGridListagem.DataSource.DataSet.Last;

        // Quantidade de registros
        LbRegistros.Caption :=
          IntToStr(DBGridListagem.DataSource.DataSet.RecordCount) +
          ' Registros';

        DBGridListagem.DataSource.DataSet.First;

        DBGridListagem.SelectedField := DBGridListagem.Columns[0].Field;
        DBGridListagem.SetFocus;
      end;

    Except
      On E: Exception do
      begin
        ShowMessage(E.ClassName + ' Error raised on ' + E.Message);
        Result := False;
      end;
    end;
  end
  // Buscar Cidade
  else if index = 1 then
  begin
    try
      with Unt_DM.dm.FdQuery do
      begin
        DsListaClientes.Enabled := True;
        Close;
        SQL.Clear;
        SQL.Add('SELECT ci.id_cidade, ci.nome_cidade || ' + QuotedStr('-') +
          ' || es.uf, ci.cep ' + 'FROM cidade ci inner join estado es on ' +
          'ci.id_estado = es.id_estado ORDER BY c.id_cidade');

        Open();

        // Editar e alimentar o DBGrid
        FieldByName('id_cidade').DisplayLabel := 'Código';
        FieldByName('Concatenation').DisplayLabel := 'Cidade';
        FieldByName('cep').DisplayLabel := 'CEP';

        DBGridListagem.DataSource := DsListaClientes;

        // Dar foco na primeira linha
        DBGridListagem.DataSource.DataSet.First;
        DBGridListagem.SelectedField := DBGridListagem.Columns[0].Field;
        DBGridListagem.SetFocus;
      end;
    Except
      On E: Exception do
      begin
        ShowMessage(E.ClassName + ' Error raised on ' + E.Message);
        Result := False;
      end;
    end;
  end;
end;

procedure TFormListClientes.DBGridListagemDblClick(Sender: TObject);
begin
  AbrirCadCliente;
end;

procedure TFormListClientes.DBGridListagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_SPACE then
  begin
    RowSelecionada;
  end;
end;

procedure TFormListClientes.EdtCodCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormListClientes.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormListClientes.EdtCodCidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
    abrirFormBuscador(1);
  end;
end;

procedure TFormListClientes.EdtCodClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormListClientes.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormListClientes.EdtCodClienteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
    abrirFormBuscador(0);
  end;
end;

procedure TFormListClientes.EdtRendaExit(Sender: TObject);
begin
  if Length(Trim(EdtRenda.Text)) > 0 then
  begin
    RendaP1 := EdtRenda.Text;
    EdtRenda.Text := FormatFloat('#,##0.00', StrToFloat(EdtRenda.Text));
  end;
end;

procedure TFormListClientes.EdtRendaP2Exit(Sender: TObject);
begin
  if Length(Trim(EdtRendaP2.Text)) > 0 then
  begin
    RendaP2 := EdtRendaP2.Text;
    EdtRendaP2.Text := FormatFloat('#,##0.00', StrToFloat(EdtRendaP2.Text));
  end;
end;

procedure TFormListClientes.EdtUfKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormListClientes.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormListClientes.FdQuery_ListCliTIPO_CAD_CLIENTEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if Sender.AsBoolean then
   begin
    Text := 'SL';
   end else
   begin
     Text := 'MC';
   end;

end;

procedure TFormListClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  strFocus: String;
begin
  ShowMessage('KeyDown!')
//  if Key = VK_F5 then
//  begin
//    strFocus := ActiveControl.Name;
//
//    ConsultarDB(0);
//
//    if EdtCodCidade.Name = strFocus then
//    begin
//      EdtCodCidade.SetFocus;
//    end
//    else if EdtCodCliente.Name = strFocus then
//    begin
//      EdtCodCliente.SetFocus;
//    end
//    else if EdtUf.Name = strFocus then
//    begin
//      EdtUf.SetFocus;
//    end;
//  end;
end;

procedure TFormListClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  ShowMessage('KeyPress');
//  if (Key = #27) then
//  begin
//    Key := #0;
//
//    if ((EdtCodCidade.Text <> '') or (EdtUf.Text <> '') or (EdtCodCliente.Text <> '')
//      or (DsListaClientes.Enabled)) then
//    begin
//      LimparCampos;
//    end
//    else
//    begin
//      Close;
//    end;
//  end;
end;

procedure TFormListClientes.LimparCampos;
var
  indxControl: Integer;
begin
    indxControl := PageControl.ActivePageIndex;
    PageControl.ActivePageIndex := 0;
    EdtCodCliente.Text := '';
    EdtUf.Text := '';
    EdtRenda.Text := '';
    EdtRendaP2.Text := '';
    RendaP1 := '';
    RendaP2 := '';
    CbTipoPessoa.ItemIndex := 0;
    EdtIdade.Text := '';
    EdtCodCidade.Text := '';
    LbRegistros.Caption := '';
    EdtCodCliente.SetFocus;
    Unt_DM.dm.FDQuery_List.Close;
    DsListaClientes.Enabled := False;
    PageControl.ActivePageIndex := indxControl;
end;

procedure TFormListClientes.OnMyGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    0:
      Text := 'PF';
    1:
      Text := 'PJ';
  end;
end;

procedure TFormListClientes.OnMySetText(Sender: TField; const Text: String);
begin
  if Text = 'PF' then
    Sender.Value := 0
  else if Text = 'PJ' then
    Sender.Value := 1;
end;

procedure TFormListClientes.RowSelecionada;
var
  i: Integer;
  cod: String;
begin
  cod := SelectCodIdRow;

//  for i := 0 to DBGridListagem.Columns.Count - 1 do
//  begin
//    if DBGridListagem.Columns[i].FieldName = 'ID_CLIENTE' then
//    begin
//      try
//        cod := DBGridListagem.Columns[i].Field.Value;
//      Except
//        cod := '';
//      end;
//    end;
//  end;

  if Length(Trim(EdtCodCliente.Text)) = 0 then
  begin
    EdtCodCliente.Text := EdtCodCliente.Text + cod;
  end
  else
  begin
    EdtCodCliente.Text := EdtCodCliente.Text + ',' + cod;
  end;

end;

procedure TFormListClientes.SbBuscarCidClick(Sender: TObject);
begin
  try
    with Unt_FrmBuscaCidade.Frm_BuscaCidade do begin
      if (Frm_BuscaCidade = nil) then Application.CreateForm(TFrm_BuscaCidade, Frm_BuscaCidade);
      ShowModal();

      if (Frm_BuscaCidade.ModalResult = mrOk) then begin
        EdtCodCidade.Text := Unt_FrmBuscaCidade.retorno.ToString;
        EdtCodCidade.SelectAll;
      end;
    end;
  finally
    FreeAndNil(Frm_BuscaCidade);
  end;
end;

procedure TFormListClientes.SbBuscarCliClick(Sender: TObject);
begin
  try
    with Unt_FrmBuscaCliente.FormBuscador do begin
      if (FormBuscador = nil) then Application.CreateForm(TFormBuscador, FormBuscador);
      ShowModal();

      if FormBuscador.ModalResult = mrOk then begin
        EdtCodCliente.Text := Unt_FrmBuscaCliente.retorno.ToString;
        EdtCodCliente.SelectAll;
      end;
    end;
  finally
    FreeAndNil(FormBuscador);
  end;
end;

function TFormListClientes.SelectCodIdRow: String;
var
  i: Integer;
begin
  for i := 0 to DBGridListagem.Columns.Count - 1 do
  begin
    if DBGridListagem.Columns[i].FieldName = 'ID_CLIENTE' then
    begin
      try
        Result := DBGridListagem.Columns[i].Field.Value;
      Except
        Result := '';
      end;
    end;
  end;
end;

procedure TFormListClientes.teste11Click(Sender: TObject);
begin
  AbrirCadCliente;
end;

procedure TFormListClientes.teste21Click(Sender: TObject);
begin
  RowSelecionada;
end;

procedure TFormListClientes.DtDataKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    FormListClientes.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

end.
