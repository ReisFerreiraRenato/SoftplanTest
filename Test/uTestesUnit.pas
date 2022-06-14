unit uTestesUnit;

interface

uses
  TestFrameWork, uTestes;
 type
  TGeneralTest_Unit = class(TTestCase)
    strict private
    aTGeneralTest :TGeneralTest;
    public
      procedure SetUp; override;
      procedure TearDown; override;
    published
      procedure TestAdd;
      procedure TestSub;
  end;

implementation

{ TGeneralTest_Unit }

procedure TGeneralTest_Unit.SetUp;
begin
  inherited;
  aTGeneralTest := TGeneralTest.Create;
end;

procedure TGeneralTest_Unit.TearDown;
begin
  inherited;
  aTGeneralTest := nil;
end;

procedure TGeneralTest_Unit.TestAdd;
var
 _result: System.Integer;
 y: System.Integer;
 x: System.Integer;
begin
 _result := aTGeneralTest.Add(x,y);
 {adicionar codigo de teste aqui}
end;

procedure TGeneralTest_Unit.TestSub;
var
 _result: System.Integer;
 y: System.Integer;
 x: System.Integer;
begin
 _result := aTGeneralTest.Sub(x, y);
 {adicionar código de teste aqui}
end;

Initialization
 {Register any test cases with the test runner}
 RegisterTest(TGeneralTest_Unit.Suite);
end.
