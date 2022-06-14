unit uTestes;

interface
  type
  TGeneralTest = class
  public
     function Add(x,y:Integer):Integer;
     function Sub(x,y:Integer):Integer;
  end;
implementation
{ TGeneralTest }
function TGeneralTest.Add(x, y: Integer): Integer;
begin
  Result := x + y;
end;
function TGeneralTest.Sub(x, y: Integer): Integer;
begin
  Result := x - y;
end;
end.
