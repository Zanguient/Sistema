unit Unt_FrmBck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  IB_Services, JvBaseDlg, JvSelectDirectory, ZipMstr, IdBaseComponent,
  IdIntercept, IdCompressionIntercept, Vcl.Mask, JvExMask, JvToolEdit,
  System.ImageList, Vcl.ImgList;

type
  TFrm_Bck = class(TForm)
    LbArqvBck: TLabel;
    lbTitulo: TLabel;
    pFIBBackupService1: TpFIBBackupService;
    IdCompressionIntercept1: TIdCompressionIntercept;
    pFIBRestoreService1: TpFIBRestoreService;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    JvDirectoryEdit1: TJvDirectoryEdit;
    Shape1: TShape;
    ImageList1: TImageList;
    btnBck: TBitBtn;
    btnOtimiza: TBitBtn;
    Label1: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBckClick(Sender: TObject);
    procedure btnOtimizaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Bck: TFrm_Bck;

implementation

uses
  Unt_DM, FileCtrl, ZLIB;

var
  saveDialog: TSaveDialog;
  chosenDir: String;

{$R *.dfm}

procedure TFrm_Bck.btnBckClick(Sender: TObject);
var
  dia, mes, ano, hora, min, seg, mseg: Word;
  data, pathBCK, nomeBCK: String;
  Zip: TCompressionStream;
  FileIni, FileOut: TFileStream;
begin
  if dm.DB.Connected then begin
    dm.DB.Connected := False;
    btnBck.Default := True;
  end else exit;

  Label1.Caption := 'Realizando backup... Aguarde!';

  DecodeTime(Time, hora, min, seg, mseg);
  DecodeDate(Date, ano, mes, dia);

  data := dia.ToString + '_' +
          mes.ToString + '_' +
          ano.ToString + '_' +
          hora.ToString + '_' +
          min.ToString + '_' +
          seg.ToString;

  nomeBCK := '\BCK_' + Application.Title + '_' + data;
  pathBCK := JvDirectoryEdit1.Text;

  with pFIBBackupService1 do begin
    Params.Clear;
    Params.Add('user_name=SUPS');
    Params.Add('password=maps3880');
    DatabaseName := Unt_DM.pathDB + '\DATABASE.FDB';
    BackupFile.Add(pathFolderBck + nomeBCK + '.fdb');

    Attach;

    try
      ServiceStart;
      LbArqvBck.Caption := 'Gerando backup...';

      while not Eof do begin
        LbArqvBck.Caption := Trim(StringReplace(GetNextLine, 'gbak:', '', [rfReplaceAll, rfIgnoreCase]));
        Application.ProcessMessages;
        Next;
      end;

    Except
      on E: Exception do ShowMessage('Erro ao realizar backup. Erro: ' + E.Message);
    end;

    (*Compactar*)
    LbArqvBck.Caption := 'Comprimindo Backup...';
    Application.ProcessMessages;
    try
      FileIni := TFileStream.Create(pathBCK + nomeBCK + '.fdb', fmOpenRead and fmShareExclusive);
      FileOut := TFileStream.Create(pathBCK + nomeBCK + '.zip', fmCreate or fmShareExclusive);
      Zip := TCompressionStream.Create(clMax, FileOut);
      Zip.CopyFrom(FileIni, FileIni.Size);

      Zip.Free;
      FileOut.Free;
      FileIni.Free;
    finally
      DeleteFile(pathBCK + nomeBCK + '.fdb');
      LbArqvBck.Caption := 'Backup Finalizado!';
    end;
    Detach;
    dm.DB.Connected := True;
  end;
  btnBck.Default := True;
  Label1.Caption := '';
end;

procedure TFrm_Bck.btnOtimizaClick(Sender: TObject);
var
  i: Integer;
begin
  if dm.DB.Connected then begin
    dm.DB.Connected := False;
    btnOtimiza.Default := True;
  end else exit;

  Label1.Caption := 'Otimizando base de dados... Aguarde!';

  try
   (*Backup*)
    with pFIBBackupService1 do begin

      Params.Clear;

      Params.Add('user_name=SUPS');
      Params.Add('password=maps3880');

      DatabaseName := Unt_DM.pathDB + '\DATABASE.FDB';
      BackupFile.Add(Unt_DM.pathDB + '\BCK_LinSoft_Otimz.fdb');

      try
        Attach;
        ServiceStart;
        LbArqvBck.Caption := 'Iniciando backup para otimização...';

        while not Eof do begin
          LbArqvBck.Caption := Trim(StringReplace(GetNextLine, 'gbak:', '', [rfReplaceAll, rfIgnoreCase]));
          Application.ProcessMessages;
          Next;
        end;

      finally
        Detach;
        Free;
      end;
    end;

    (*Restaurar*)
    with pFIBRestoreService1 do begin

      Params.Clear;
      BackupFile.Clear;
      DatabaseName.Clear;

      Params.Add('user_name=SUPS');
      Params.Add('password=maps3880');

      DatabaseName.Add(Unt_DM.pathDB + '\DATABASE.FDB');
      BackupFile.Add(Unt_DM.pathDB + '\BCK_LinSoft_Otimz.fdb');

      try
        Active := True;
        ServiceStart;
        LbArqvBck.Caption := 'Restaurando base de dados otimizada...';

      finally
        Active := False;
      end;
    end;

  finally
    for i := 0 to 5 do begin
      try
        dm.DB.Connected := True;
        Application.ProcessMessages;
        if dm.DB.Connected then break;
      except
        Sleep(500);
      end;
    end;
    LbArqvBck.Caption := 'Otimização Concluída com Sucesso!';
  end;
  DeleteFile(Unt_DM.pathDB + '\BCK_LinSoft_Otimz.fdb');
  btnOtimiza.Default := True;
  Label1.Caption := '';
end;

procedure TFrm_Bck.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Bck.FormCreate(Sender: TObject);
begin
  JvDirectoryEdit1.Text := Unt_DM.pathFolderBck;
  Label1.Caption := '';
end;

end.
