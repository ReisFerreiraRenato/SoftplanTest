unit uspQuery;

interface

uses
  System.Classes, FireDac.DApt, SysUtils, FireDAC.Comp.Client;

type
  TNotifyEvent = procedure (Sender: TObject) of Object;

  TspQuery = class(TFDQuery)
  private
    FspColunas: TStringList;
    FspTabelas: TStringList;
    FspCondicoes: TStringList;
    FStatus: TNotifyEvent;

    procedure SetspColunas(const Valor: TStringList);
    procedure SetspTabelas(const Valor: TStringList);
    procedure SetspCondicoes(const Valor: TStringList);
    procedure SetStatus(const Valor: TNotifyEvent);
  public
    function GeraSQL: string;
    procedure OnStatus;
  published
    property spColunas: TStringList read FspColunas write SetspColunas;
    property spTabelas: TStringList read FspTabelas write SetspTabelas;
    property spCondicoes: TStringList read FspCondicoes write SetspCondicoes;
    property Status: TNotifyEvent read FStatus write SetStatus;
  end;

implementation

{ TspQuery }

function TspQuery.GeraSQL: string;
var
  campos: String;
  i: Integer;
begin

  try
    if spTabelas.Count > 1 then
      Raise Exception.Create('É permitido informar apenas uma tabela para a geração do SQL');

    for i := 0 to spColunas.Count - 1 do
      campos := campos + spColunas.Strings[i] + ',';

    Result :=
    'Select ' + #13 +
       Copy(campos, 1, (Length(campos) - 1) ) +  #13 +
    ' From ' + spTabelas.Text + ' ' + #13 +
    ' Where ' + spCondicoes.Text;

    //SQl.Add(Result);
  finally
    Onstatus;
  end;
end;

procedure TspQuery.OnStatus;
begin
  if Assigned(Status) then
    Status(Self);
end;

procedure TspQuery.SetspColunas(const Valor: TStringList);
begin
  FspColunas := Valor;
end;

procedure TspQuery.SetspCondicoes(const Valor: TStringList);
begin
  FspCondicoes := Valor;
end;

procedure TspQuery.SetspTabelas(const Valor: TStringList);
begin
  FspTabelas := Valor;
end;

procedure TspQuery.SetStatus(const Valor: TNotifyEvent);
begin
  FStatus := Valor;
end;

end.
