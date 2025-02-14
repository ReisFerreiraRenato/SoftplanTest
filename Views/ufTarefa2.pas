unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Gauges, System.Threading;

type
  TfTarefa2 = class(TForm)
    Gauge1: TGauge;
    Gauge2: TGauge;
    eThread1: TEdit;
    eThread2: TEdit;
    btProcessar: TButton;
    lbThread1: TLabel;
    lbThread2: TLabel;
    procedure btProcessarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniciarProcesso;
  private
    { Private declarations }
    FProcessed: Boolean;
  public
    { Public declarations }
    FProgressBar: TArray<TGauge>;
    FTimeEdt: TArray<TEdit>;
    FLabelsPbar: TArray<TLabel>;
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

uses uMyThread_Controller;

procedure TfTarefa2.btProcessarClick(Sender: TObject);
begin
  if (eThread1.Text = '') then
  begin
    ShowMessage('Informe o tempo em milissegundos');
    eThread1.SetFocus;
    Exit;
  end;

  if (eThread2.Text = '') then
  begin
    ShowMessage('Informe o tempo em milissegundos');
    eThread2.SetFocus;
    Exit;
  end;

  IniciarProcesso;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (not FProcessed) then
  begin
    ShowMessage('Espere at� o t�rmino dos processos.');
    Abort;
  end;

  fTarefa2.Free;
end;
 
procedure TfTarefa2.FormCreate(Sender: TObject);
begin
  FProcessed := True;
end;

procedure TfTarefa2.FormShow(Sender: TObject);
begin
  FProcessed := True;
end;

procedure TfTarefa2.IniciarProcesso;
begin
  FTimeEdt     := [eThread1, eThread2];
  FProgressBar := [Gauge1,Gauge2];
  FProcessed := False;
  TTask.Run(
  procedure
  begin
    TParallel.For(0,1,
      procedure(ThreadCount:Int64)
      var
        MyThread: TThreadObject;
       begin
         MyThread := TThreadObject.Create;
         try
           MyThread.ThreadIndex := ThreadCount;
           MyThread.Execute;
         finally
           FreeAndNil(MyThread);
         end;
       end
    );
    ShowMessage('Processo conclu�do!');
    Sleep(100);
    Gauge1.Progress := 0;
    Sleep(100);
    Gauge2.Progress := 0;
    FProcessed      := True;
  end);
end;

end.
