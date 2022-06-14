unit uOperacoesEmLote_Calculos_Controller;

interface

uses
  uOperacoesEmLote_Calculos_Interface, Data.DB;
type
  TController_OperacoesEmLote_Calculos = class(TInterfacedObject, iController_OperacoesEmLote_Calculos)
    FDataSet :TDataSet;

    class
      function New : iController_OperacoesEmLote_Calculos;
      function SetDataSet(DataSet:TDataSet):iController_OperacoesEmLote_Calculos;
      function SumValues:Double;
      function DivideValues:Double;
end;

implementation

{ TController_OperacoesEmLote_Calculos }

function TController_OperacoesEmLote_Calculos.DivideValues: Double;
var
  valor_numerador, valor_denominador, total :Double;
  i: Integer;
begin
  //Calculos de Divisão
  valor_denominador := 1;
  valor_numerador := 1;
  total := 0;

  FDataSet.First;
  for i := 1 to FDataSet.RecordCount - 1 do
  begin
    valor_denominador := valor_numerador;
    valor_numerador := FDataSet.FindField('Valor').AsFloat;
    if i > 1  then
    begin
      total := total + ( valor_numerador / valor_denominador);
    end;

    FDataSet.Next;
  end;

  Result := total;
end;

class function TController_OperacoesEmLote_Calculos.New: iController_OperacoesEmLote_Calculos;
begin
  Result := Self.Create;
end;

function TController_OperacoesEmLote_Calculos.SetDataSet(
  DataSet: TDataSet): iController_OperacoesEmLote_Calculos;
begin
  Result   := Self;
  FDataSet := DataSet;
end;

function TController_OperacoesEmLote_Calculos.SumValues: Double;
var
  total: Double;
begin
  //Calculos de soma
  total := 0;
  FDataSet.First;

  while not FDataSet.Eof do
  begin
    total := Total + FDataSet.FindField('Valor').AsFloat;
    FDataSet.Next;
  end;

  Result := total;
end;

end.
