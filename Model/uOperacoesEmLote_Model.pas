unit uOperacoesEmLote_Model;

interface

uses uOperacoesEmLote_Interface, Datasnap.DBClient, Data.DB, System.SysUtils,
  ufTarefa3, Vcl.Forms;

type
  TModel_OperacoesEmlote = class(TInterfacedObject, iModel_OperacoesEmLote)
  public
    FForm :TForm;
    class function New: iModel_OperacoesEmLote;
    function PopulateDataSet: String;
    function CreateDataSet: TClientDataSet;
    function CreateDataSource :TDataSource;
  end;

implementation

uses
  FireDAC.Comp.Client;

{ TOperacoesEmlote }

function TModel_OperacoesEmlote.CreateDataSource: TDataSource;
begin
  Result:= TDataSource.Create(nil);
end;

function TModel_OperacoesEmlote.CreateDataSet: TClientDataSet;
begin
  Result := TClientDataSet.Create(nil);
  Result.FieldDefs.Add('IdProjeto', ftInteger);
  Result.FieldDefs.Add('NomeProjeto', ftString, 75);
  Result.FieldDefs.Add('Valor', ftFloat);
  Result.CreateDataSet;
end;

class function TModel_OperacoesEmlote.New: iModel_OperacoesEmLote;
begin
  Result := Self.Create;
end;

function TModel_OperacoesEmlote.PopulateDataSet: String;
var
  i, Valor: integer;
begin
  fTarefa3.FDataSet    := CreateDataSet;
  fTarefa3.FDataSource := CreateDataSource;

  Valor := 10;
  fTarefa3.FDataSet.DisableControls;

  for i := 1 to 10 do
  begin
    fTarefa3.FDataSet.Append;
    fTarefa3.FDataSet.FindField('IdProjeto').AsInteger  := i;
    fTarefa3.FDataSet.FindField('NomeProjeto').AsString := 'Projeto ' + i.ToString;
    fTarefa3.FDataSet.FindField('Valor').AsFloat        := Valor;
    fTarefa3.FDataSet.Post;
    Valor := Valor + 10;
  end;

  fTarefa3.FDataSet.EnableControls;
  fTarefa3.FDataSource.DataSet := fTarefa3.FDataSet;

  Result := '';
end;

end.
