unit uOperacoesEmLote_Calculos_Interface;

interface

uses
  Data.DB;
Type
 iController_OperacoesEmLote_Calculos = interface
   ['{5B4A13D2-C8E7-4E16-92B6-571729A2195D}']
   function SetDataSet(DataSet:TDataSet):iController_OperacoesEmLote_Calculos;
   function SumValues:Double;
   function DivideValues:Double;
 end;

implementation

end.
