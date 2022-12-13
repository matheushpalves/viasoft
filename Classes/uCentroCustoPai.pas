unit uCentroCustoPai;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

Type
  TCentroCustoPai = Class

  private

  public
    CodigoPai : String;
    DescricaoPai : String;

    function ValidaFormatoPai(Valor : String) : String;
    procedure InserirDados(CodigoPai : String; Tipo : String; Descricao : String);

  End;

implementation

{ TCentroCustoPai }

uses DMPrincipal;

procedure TCentroCustoPai.InserirDados(CodigoPai, Tipo, Descricao: String);
begin

end;

function TCentroCustoPai.ValidaFormatoPai(Valor: String): String;
begin
  if Length(valor) > 2 then
  begin
    ShowMessage('Valor Invalido...');
  end else
  begin
    if Length(valor) = 2 then
    begin
      result := Valor;
    end else
    begin
      result := '0' + Valor;
    end;
  end;
end;

end.
