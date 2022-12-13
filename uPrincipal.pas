unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  RxCurrEdit, Data.DB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, uLancamentos, uFuncoesUteis;

type
  TFPrincipal = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtCodPai: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtDescPai: TEdit;
    RGPESQUISA: TRadioGroup;
    edtPesquisa: TEdit;
    lblTipo: TLabel;
    edtCodFilho: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtDescFilho: TEdit;
    edtValor: TCurrencyEdit;
    Label3: TLabel;
    btnGravar: TButton;
    btnInserir: TButton;
    btnCancelar: TButton;
    gb: TGroupBox;
    lblValor: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure LimpaEdits(form : TForm);
  procedure modoformulario(modo : string);
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses DMPrincipal, uCentroCustoFilho, uCentroCustoPai;

procedure TFPrincipal.btnInserirClick(Sender: TObject);
begin
  modoformulario('Insert')
end;

procedure TFPrincipal.edtPesquisaChange(Sender: TObject);
begin
  case RGPESQUISA.ItemIndex of
   0:
      DM1Principal.pesquisa('CODIGOPAI', edtPesquisa.Text);
   1:
      DM1Principal.pesquisa('DESCRICAO', edtPesquisa.Text);
   2:
      DM1Principal.pesquisa('CODIGOFILHO', edtPesquisa.Text);
   3:
      DM1Principal.pesquisa('DESCRICAO', edtPesquisa.Text);
   4:
      DM1Principal.pesquisa('VALOR', edtPesquisa.TEXT);
  end;

end;

procedure TFPrincipal.btnCancelarClick(Sender: TObject);
begin
  LimpaEdits(FPrincipal);
  modoformulario('Browser');
end;

procedure TFPrincipal.btnGravarClick(Sender: TObject);
var
  Lancamentos : TLancamento;
begin
  Lancamentos := TLancamento.Create;
  try
    with Lancamentos do
    begin
      Valor           := StrToFloat(edtValor.Text);
      CodigoPai       := ValidaFormatoPai(edtCodPai.Text);
      CodigoFilho     := ValidaFormatoPai(edtCodPai.Text) + ValidaFormatoFilho(edtCodFilho.Text);
      DescricaoPai    := edtDescPai.Text;
      DescricaoFilho  := edtDescFilho.Text;
      GravaDados(CodigoPai,CodigoFilho,DescricaoPai,DescricaoFilho,Valor);
    end;

    showmessage('Dados Salvos');
    LimpaEdits(FPrincipal);
    modoformulario('Browser');
    lblValor.Caption := 'R$' + DM1Principal.retornavalor(DM1Principal.qCalculaTotaltotal.Value);
  finally
    Lancamentos.DisposeOf;
  end;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  modoformulario('Browser');
  lblValor.Caption := 'R$ ' + DM1Principal.retornavalor(DM1Principal.qCalculaTotaltotal.Value);
end;

procedure TFPrincipal.LimpaEdits(form: TForm);
var
  aux : integer;
begin
  for aux := 0 to Form.ComponentCount -1 do
  begin
    if Form.Components[aux] is TEdit then
      TEdit(Form.Components[aux]).Clear;

    if Form.Components[aux] is TCurrencyEdit then
      TCurrencyEdit(Form.Components[aux]).Clear;
  end;

end;

procedure TFPrincipal.modoformulario(modo : string);
begin

  if modo = 'Insert' then
  begin
    edtValor.Enabled      := true;
    edtCodPai.Enabled     := true;
    edtCodFilho.Enabled   := true;
    edtDescPai.Enabled    := true;
    edtDescFilho.Enabled  := true;
    btnInserir.Enabled    := False;
    btnCancelar.Enabled   := true;
    btnGravar.Enabled     := true;
  end;

  if modo = 'Browser' then
  begin
    edtValor.Enabled      := False;
    edtCodPai.Enabled     := False;
    edtCodFilho.Enabled   := False;
    edtDescPai.Enabled    := False;
    edtDescFilho.Enabled  := False;
    btnInserir.Enabled    := True;
    btnCancelar.Enabled   := False;
    btnGravar.Enabled     := False;
  end;

end;

end.
