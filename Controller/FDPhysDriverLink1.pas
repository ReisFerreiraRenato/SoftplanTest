unit FDPhysDriverLink1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Phys;

type
  TFDPhysDriverLink1 = class(TFDPhysDriverLink)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TFDPhysDriverLink1]);
end;

end.
