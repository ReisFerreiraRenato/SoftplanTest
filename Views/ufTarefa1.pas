unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, uGeraSQL_Controller,
  FireDAC.Phys.MSAccDef, FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.MSAcc;

type
  TfTarefa1 = class(TForm)
    lbColunas: TLabel;
    lbTabelas: TLabel;
    Label3: TLabel;
    lbSQLGerado: TLabel;
    mColunas: TMemo;
    mTabelas: TMemo;
    mCondicoes: TMemo;
    mSQLGerado: TMemo;
    btGerarSQL: TBitBtn;
    btLimpar: TBitBtn;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    procedure btGerarSQLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.btGerarSQLClick(Sender: TObject);
var
  sql: string;
begin
  if Trim(mColunas.Text) = '' then
  begin
    ShowMessage('O campo "Colunas" não pode ficar vazio!');
    mColunas.SetFocus;
    Exit;
  end;

  if Trim(mTabelas.Text) = '' then
  begin
    ShowMessage('O campo "Tabela" não pode ficar vazio!');
    mTabelas.SetFocus;
    Exit;
  end;

  if mTabelas.Lines.Count > 1 then
  begin
    ShowMessage('A consulta só pode utilizar uma tabela!');
    mTabelas.SetFocus;
    Exit;
  end;

  if Trim(mCondicoes.Text) = '' then
  begin
    ShowMessage('O campo "Condições" não pode ficar vazio!');
    mCondicoes.SetFocus;
    Exit;
  end;

  mSQLGerado.Clear;

  sql :=  TController_GeraSQL.New
                             .SetColunas(mColunas)
                             .SetTabela(mTabelas)
                             .SetCondicao(mCondicoes)
                             .GeraSQL;

  mSQLGerado.Lines.Add(sql);
end;

procedure TfTarefa1.btLimparClick(Sender: TObject);
var
  i: Integer;
begin
  for i:= 0 to Self.ControlCount - 1 do
  begin
    if (Self.Controls[i] is TMemo) then
      (Controls[i] as TMemo).Clear;
  end;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fTarefa1.Free;
end;

end.
