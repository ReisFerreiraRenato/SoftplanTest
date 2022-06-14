unit uMyThread_Controller;

interface

uses
  System.Threading, System.Classes, System.SysUtils, Vcl.Forms, Vcl.ComCtrls;

type
  TThreadObject = class(TThread)
  private
    FThreadIndex, FCont: integer;


    procedure SetThreadIndex(const Value: integer);
    Function GetThreadIndex:integer;

  public
    property ThreadIndex :integer read GetThreadIndex write SetThreadIndex;
    procedure Execute; override;
    procedure UpdateProgressBar;
  end;

implementation

{ TThreadObject }

uses Vcl.StdCtrls, uFTarefa2, Winapi.Windows;

procedure TThreadObject.Execute;
var
  tempo, i: Integer;
begin
  inherited;
  tempo := StrToInt(fTarefa2.FTimeEdt[FThreadIndex].Text);

  for i := 0 to 100 do
  begin
    Sleep(tempo);
    Synchronize(UpdateProgressBar);
    FCont := i + 1;
  end;

end;

function TThreadObject.GetThreadIndex: integer;
begin
  Result := FThreadIndex;
end;

procedure TThreadObject.SetThreadIndex(const Value: integer);
begin
  FThreadIndex := Value;
end;

procedure TThreadObject.UpdateProgressBar;
begin
  fTarefa2.FProgressBar[FThreadIndex].Progress := FCont;
  Application.ProcessMessages;
end;

end.
