unit DMPrincipal;

interface

uses
  System.SysUtils, System.Classes, UniProvider, PostgreSQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS;

type
  TDM1Principal = class(TDataModule)
    uConexaoBanco: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    qListaRegistros: TUniQuery;
    dsListaRegistros: TUniDataSource;
    TabCentroDeCustoPai: TUniQuery;
    TabCentroDeCustoFilho: TUniQuery;
    TabLancamentos: TUniQuery;
    qListaRegistrosnumerolancamento: TIntegerField;
    qListaRegistrosdescricaopai: TStringField;
    qListaRegistrosdescricaofilho: TStringField;
    qListaRegistroscodigopai: TStringField;
    qListaRegistroscodigofilho: TStringField;
    qListaRegistrosvalor: TFloatField;
    qRetornaCodPai: TUniQuery;
    qRetornaCodPaiultimopai: TIntegerField;
    qRetornaCodFilho: TUniQuery;
    qRetornaCodFilhoultimofilho: TIntegerField;
    TabCentroDeCustoPaiid_centrodecustopai: TIntegerField;
    TabCentroDeCustoPaidescricao: TStringField;
    TabCentroDeCustoPaicodigopai: TStringField;
    TabCentroDeCustoFilhoid_centrodecustofilho: TIntegerField;
    TabCentroDeCustoFilhodescricao: TStringField;
    TabLancamentosid_lancamento: TIntegerField;
    TabLancamentosvalor: TFloatField;
    TabLancamentosid_centrodecustopai: TIntegerField;
    TabLancamentosid_centrodecustofilho: TIntegerField;
    TabCentroDeCustoFilhocodigofilho: TStringField;
    qCalculaTotal: TUniQuery;
    qCalculaTotaltotal: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure pesquisa(campo, texto: string);
    function retornavalor(value : double) : string;
    procedure dsListaRegistrosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1Principal: TDM1Principal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM1Principal.DataModuleCreate(Sender: TObject);
begin
  TabCentroDeCustoPai.Open;
  TabCentroDeCustoFilho.Open;
  TabLancamentos.Open;
  qListaRegistros.Open;
  qCalculaTotal.Open;
end;

procedure TDM1Principal.DataModuleDestroy(Sender: TObject);
begin
  TabCentroDeCustoPai.Close;
  TabCentroDeCustoFilho.Close;
  TabLancamentos.Close;
  qListaRegistros.Close;
  qCalculaTotal.Close;
end;

procedure TDM1Principal.dsListaRegistrosDataChange(Sender: TObject;
  Field: TField);
begin
//  retornavalor(
end;

procedure TDM1Principal.pesquisa(campo, texto: string);
begin
  qListaRegistros.locate(campo, texto, [loCaseInsensitive, loPartialKey]);
end;

function TDM1Principal.retornavalor(value: double): string;
begin
  RESULT := qCalculaTotaltotal.AsString;
end;

end.
