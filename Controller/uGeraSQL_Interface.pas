unit uGeraSQL_Interface;

interface

uses Vcl.StdCtrls;

Type
  iController_GeraSQL = interface
    ['{81088476-F382-441B-9AD1-CCD61E759076}']
    function SetColunas(Colunas: TMemo):iController_GeraSQL;
    function SetTabela(Tabela: TMemo):iController_GeraSQL;
    function SetCondicao(Condicao: TMemo):iController_GeraSQL;
    function GeraSQL : String;
  end;

implementation

end.
