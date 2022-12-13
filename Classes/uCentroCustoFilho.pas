unit uCentroCustoFilho;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uCentroCustoPai, Vcl.StdCtrls;

Type
  TCentroCustoFilho = Class(TCentroCustoPai)

  Private

  Public
    DescricaoFilho   : String;
    CodigoFilho : String;
    function ValidaFormatoFilho(valor : String) : String;
  End;


implementation

{ TCentroCustoFilho }

function TCentroCustoFilho.ValidaFormatoFilho(valor: String): String;
begin
  if Length(valor) > 4 then
  begin
    ShowMessage('Valor Invalido...');
  end else
  begin
    if Length(valor) = 4 then
    begin
      result := Valor;
    end else
    begin
      while Length(valor) < 4 do
      begin
        valor := '0' + valor;
      end;
      result := Valor;
    end;
  end;
end;

end.
