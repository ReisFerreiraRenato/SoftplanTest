unit ufPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mmTarefas: TMenuItem;
    mnOpcoes: TMenuItem;
    mnSair: TMenuItem;
    mnTarefa1: TMenuItem;
    mnTarefa2: TMenuItem;
    mnTarefa3: TMenuItem;
    procedure mnSairClick(Sender: TObject);
    procedure mnTarefa1Click(Sender: TObject);
    function fcFormExists(fmForm: TForm): Boolean;
    procedure CreateForm(TForm: TFormClass; Form:TForm);
    procedure mnTarefa2Click(Sender: TObject);
    procedure mnTarefa3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, ufTarefa3;

procedure TfPrincipal.CreateForm(TForm: TFormClass; Form: TForm);
begin
  if not Assigned(Form) then
    Application.CreateForm(TForm, Form);
  Form.Show;
end;

function TfPrincipal.fcFormExists(fmForm: TForm): Boolean;
var
  inIdx: Integer;
begin
  fcFormExists := False;

  for inIdx := 0 to MDIChildCount - 1 do
    if MDIChildren[inIdx] = fmForm then
    begin
      fcFormExists := True;
      Exit;
    end;
end;


procedure TfPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (fcFormExists(fTarefa1 as TForm)) or (fcFormExists(fTarefa2 as TForm)) or (fcFormExists(fTarefa3 as TForm)) then
  begin
    ShowMessage('� obrigat�rio fechar as janelas do sistema');
    Action := TCloseAction.caNone;
    Abort;
  end;
end;

procedure TfPrincipal.mnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfPrincipal.mnTarefa1Click(Sender: TObject);
begin
  if fcFormExists(fTarefa1 as TForm) then
    fTarefa1.Show
  else
    fTarefa1 := TfTarefa1.Create(Self);
end;

procedure TfPrincipal.mnTarefa2Click(Sender: TObject);
begin
  if fcFormExists(fTarefa2 as TForm) then
     fTarefa2.Show
  else
     fTarefa2 := TfTarefa2.Create(Self);
end;

procedure TfPrincipal.mnTarefa3Click(Sender: TObject);
begin
  if fcFormExists(fTarefa3 as TForm) then
     fTarefa3.Show
  else
     fTarefa3 := TfTarefa3.Create(Self);
  fTarefa3.LoadGrid;
end;

end.
