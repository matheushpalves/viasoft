program ViaSoft;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FPrincipal},
  DMPrincipal in 'ModulodeDados\DMPrincipal.pas' {DM1Principal: TDataModule},
  uCentroCustoPai in 'Classes\uCentroCustoPai.pas',
  uCentroCustoFilho in 'Classes\uCentroCustoFilho.pas',
  uLancamentos in 'Classes\uLancamentos.pas',
  uFuncoesUteis in 'uFuncoesUteis.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDM1Principal, DM1Principal);
  Application.Run;
end.
