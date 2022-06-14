unit uspComponentesRegistro;

interface

uses System.Classes, uspQuery;

type
  TspQueryDT = class(TspQuery)

end;

  procedure register;

implementation

procedure register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

end.
