program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufPrincipal in 'Views\ufPrincipal.pas' {fPrincipal},
  uspQuery in 'Component\uspQuery.pas',
  ufTarefa1 in 'Views\ufTarefa1.pas' {fTarefa1},
  ufTarefa2 in 'Views\ufTarefa2.pas' {fTarefa2},
  ufTarefa3 in 'Views\ufTarefa3.pas' {fTarefa3},
  uGeraSQL_Controller in 'Controller\uGeraSQL_Controller.pas',
  uGeraSQL_Interface in 'Controller\uGeraSQL_Interface.pas',
  uMyThread_Controller in 'Controller\uMyThread_Controller.pas',
  uOperacoesEmLote_Calculos_Controller in 'Controller\uOperacoesEmLote_Calculos_Controller.pas',
  uOperacoesEmLote_Calculos_Interface in 'Controller\uOperacoesEmLote_Calculos_Interface.pas',
  uOperacoesEmLote_DataSet_Intertface in 'Controller\uOperacoesEmLote_DataSet_Intertface.pas',
  uOperacoesEmLote_DataSet_Controller in 'Controller\uOperacoesEmLote_DataSet_Controller.pas',
  uOperacoesEmLote_Model in 'Model\uOperacoesEmLote_Model.pas',
  uOperacoesEmLote_Interface in 'Model\uOperacoesEmLote_Interface.pas',
  uCheckException_Controller in 'Controller\uCheckException_Controller.pas',
  uTestes in 'Test\uTestes.pas',
  uTestesUnit in 'Test\uTestesUnit.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Prova Delphi App';
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
