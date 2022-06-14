unit uOperacoesEmLote_DataSet_Controller;

interface

uses uOperacoesEmLote_DataSet_Intertface, Data.DB, Vcl.Forms;

Type
  TController_OperacoesEmLote = class(TinterfacedObject, iController_OperacoesEmlote)
   class
     function New :iController_OperacoesEmlote;
     function PopulateDataSet : String;
  end;

implementation

uses
  uOperacoesEmLote_Model;

{ TController_OperacoesEmLote }

class function TController_OperacoesEmLote.New: iController_OperacoesEmlote;
begin
  Result := Self.Create;
end;

function TController_OperacoesEmLote.PopulateDataSet: String;
begin
  Result := TModel_OperacoesEmlote.New
                                  .PopulateDataSet;
end;

end.
