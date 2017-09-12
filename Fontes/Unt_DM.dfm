object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 352
  Width = 508
  object DB: TpFIBDatabase
    DBName = 'C:\Users\DS14\Documents\LinSoft\DB\DATABASE.FDB'
    DBParams.Strings = (
      'lc_ctype=WIN1252'
      'sql_role_name='
      'user_name=SUPS'
      'password=maps3880')
    DefaultTransaction = Trans
    SQLDialect = 3
    Timeout = 0
    DesignDBOptions = []
    WaitForRestoreConnect = 0
    Left = 80
    Top = 90
  end
  object Trans: TpFIBTransaction
    DefaultDatabase = DB
    TRParams.Strings = (
      'read'
      'nowait'
      'rec_version'
      'read_committed')
    TPBMode = tpbDefault
    Left = 80
    Top = 138
  end
  object Qry: TpFIBDataSet
    Transaction = Trans
    Database = DB
    Left = 120
    Top = 92
  end
end
