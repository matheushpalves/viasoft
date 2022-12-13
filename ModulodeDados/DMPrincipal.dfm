object DM1Principal: TDM1Principal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 383
  Width = 546
  object uConexaoBanco: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'Centrodecusto'
    Username = 'postgres'
    Server = '127.0.0.1'
    Connected = True
    Left = 64
    Top = 24
    EncryptedPassword = 'ADFFB0FFB0FFABFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 64
    Top = 80
  end
  object qListaRegistros: TUniQuery
    Connection = uConexaoBanco
    SQL.Strings = (
      'select '
      'l.id_lancamento as NumeroLancamento,'
      'cp.descricao as DescricaoPai,'
      'cf.descricao as DescricaoFilho,'
      'cp.CODIGOPAI as CodigoPai,'
      'cf.CODIGOFILHO as CodigoFilho,'
      'l.valor'
      'from RESUMOLANCAMENTOS l'
      
        'inner join CENTRODECUSTOPAI cp on cp.ID_CENTRODECUSTOPAI = l.ID_' +
        'CENTRODECUSTOPAI'
      
        'inner join CENTRODECUSTOFILHO cf on cf.ID_CENTRODECUSTOFILHO = l' +
        '.ID_CENTRODECUSTOFILHO')
    Left = 64
    Top = 216
    object qListaRegistrosnumerolancamento: TIntegerField
      DisplayLabel = 'N'#186'  Lancamento'
      FieldName = 'numerolancamento'
      Required = True
    end
    object qListaRegistrosdescricaopai: TStringField
      DisplayLabel = 'Descri'#231#227'ao Pai'
      DisplayWidth = 35
      FieldName = 'descricaopai'
      ReadOnly = True
      Size = 45
    end
    object qListaRegistroscodigopai: TStringField
      DisplayLabel = 'Centro de Custo Pai'
      FieldName = 'codigopai'
      ReadOnly = True
      Size = 2
    end
    object qListaRegistrosdescricaofilho: TStringField
      DisplayLabel = 'Descri'#231#227'o Filho'
      DisplayWidth = 35
      FieldName = 'descricaofilho'
      ReadOnly = True
      Size = 45
    end
    object qListaRegistroscodigofilho: TStringField
      DisplayLabel = 'Centro de Custo Filho'
      FieldName = 'codigofilho'
      ReadOnly = True
      Size = 4
    end
    object qListaRegistrosvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
  end
  object dsListaRegistros: TUniDataSource
    DataSet = qListaRegistros
    OnDataChange = dsListaRegistrosDataChange
    Left = 64
    Top = 264
  end
  object TabCentroDeCustoPai: TUniQuery
    Connection = uConexaoBanco
    SQL.Strings = (
      'SELECT * FROM CENTRODECUSTOPAI')
    CachedUpdates = True
    Options.DefaultValues = True
    Left = 224
    Top = 24
    object TabCentroDeCustoPaiid_centrodecustopai: TIntegerField
      DefaultExpression = 'nextval('#39'centrodecustopai_id_centrodecustopai_seq'#39'::regclass)'
      FieldName = 'id_centrodecustopai'
    end
    object TabCentroDeCustoPaidescricao: TStringField
      FieldName = 'descricao'
      Size = 45
    end
    object TabCentroDeCustoPaicodigopai: TStringField
      FieldName = 'codigopai'
      Size = 2
    end
  end
  object TabCentroDeCustoFilho: TUniQuery
    Connection = uConexaoBanco
    SQL.Strings = (
      'select * from CENTRODECUSTOFILHO')
    CachedUpdates = True
    Options.DefaultValues = True
    Left = 344
    Top = 23
    object TabCentroDeCustoFilhoid_centrodecustofilho: TIntegerField
      AutoGenerateValue = arAutoInc
      DefaultExpression = 
        'nextval('#39'centrodecustofilho_id_centrodecustofilho_seq'#39'::regclass' +
        ')'
      FieldName = 'id_centrodecustofilho'
    end
    object TabCentroDeCustoFilhodescricao: TStringField
      FieldName = 'descricao'
      Size = 45
    end
    object TabCentroDeCustoFilhocodigofilho: TStringField
      FieldName = 'codigofilho'
      Size = 6
    end
  end
  object TabLancamentos: TUniQuery
    Connection = uConexaoBanco
    SQL.Strings = (
      'select * from resumolancamentos')
    CachedUpdates = True
    Options.DefaultValues = True
    Left = 448
    Top = 22
    object TabLancamentosid_lancamento: TIntegerField
      FieldName = 'id_lancamento'
    end
    object TabLancamentosvalor: TFloatField
      FieldName = 'valor'
    end
    object TabLancamentosid_centrodecustopai: TIntegerField
      FieldName = 'id_centrodecustopai'
    end
    object TabLancamentosid_centrodecustofilho: TIntegerField
      FieldName = 'id_centrodecustofilho'
    end
  end
  object qRetornaCodPai: TUniQuery
    Connection = uConexaoBanco
    SQL.Strings = (
      'SELECT'
      ' max(ID_CENTRODECUSTOPAI) as ultimopai '
      'FROM centrodecustopai')
    CachedUpdates = True
    Options.DefaultValues = True
    Left = 224
    Top = 75
    object qRetornaCodPaiultimopai: TIntegerField
      FieldName = 'ultimopai'
      ReadOnly = True
    end
  end
  object qRetornaCodFilho: TUniQuery
    Connection = uConexaoBanco
    SQL.Strings = (
      'select'
      ' max(ID_CENTRODECUSTOFILHO) ultimoFilho '
      'from centrodecustofilho ')
    CachedUpdates = True
    Options.DefaultValues = True
    Left = 344
    Top = 77
    object qRetornaCodFilhoultimofilho: TIntegerField
      FieldName = 'ultimofilho'
      ReadOnly = True
    end
  end
  object qCalculaTotal: TUniQuery
    Connection = uConexaoBanco
    SQL.Strings = (
      'select '
      ' sum(valor) as total '
      'from RESUMOLANCAMENTOS')
    Left = 440
    Top = 74
    object qCalculaTotaltotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      currency = True
    end
  end
end
