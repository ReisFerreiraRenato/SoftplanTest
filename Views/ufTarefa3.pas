unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.DBClient;

type
  TfTarefa3 = class(TForm)
    pnBotoesValores: TPanel;
    EdtTotalSoma: TLabeledEdit;
    btTotalDivisoes: TButton;
    btTotal: TButton;
    EdtTotalDivisao: TLabeledEdit;
    gdDados: TDBGrid;
    procedure btTotalClick(Sender: TObject);
    procedure btTotalDivisoesClick(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    FDatasource : TDatasource;
    FDataSet    : TCLientDataset;
    procedure LoadGrid;
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

uses uOperacoesEmLote_Model, uOperacoesEmLote_DataSet_Controller,
  uOperacoesEmLote_Calculos_Controller;

{ TfTarefa3 }

procedure TfTarefa3.btTotalClick(Sender: TObject);
var
  total: Double;
begin
  total := TController_OperacoesEmLote_Calculos.New
                                               .SetDataSet(gdDados.DataSource.DataSet)
                                               .SumValues;
  EdtTotalSoma.Text := FormatFloat('0.00', total);
end;

procedure TfTarefa3.btTotalDivisoesClick(Sender: TObject);
var
  total: Double;
begin
  total := TController_OperacoesEmLote_Calculos.New
                                               .SetDataSet(gdDados.DataSource.DataSet)
                                               .DivideValues;
  EdtTotalDivisao.Text := FormatFloat('0.00', total);
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDatasource.Free;
  FDataset.Free;
  fTarefa3.Free;
end;

procedure TfTarefa3.LoadGrid;
begin
  TController_OperacoesEmLote.New
                             .PopulateDataSet;

  TFloatField(FDataSet.FieldByName('Valor')).DisplayFormat := 'R$###,###,##0.00';

  gdDados.DataSource := FDatasource;
end;

end.
