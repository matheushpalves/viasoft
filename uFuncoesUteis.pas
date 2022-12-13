unit uFuncoesUteis;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  TFuncoesUteis = class

  private

  public

  procedure LimpaEdits(form : TForm);
  end;

implementation

{ TFuncoesUteis }

procedure TFuncoesUteis.LimpaEdits(form: TForm);
var
  aux : integer;
begin
  for aux := 0 to Form.ComponentCount -1 do
  begin
    if Form.Components[aux] is TEdit then
      TEdit(Form.Components[aux]).Clear;
  end;

end;

end.
