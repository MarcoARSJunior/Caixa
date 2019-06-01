object DM: TDM
  OldCreateOrder = False
  Height = 335
  Width = 536
  object DBCAIXA: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Caixa;Data Source=localhost\SQLEXPRESS;' +
      'Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096' +
      ';Workstation ID=L01M04;Use Encryption for Data=False;Tag with co' +
      'lumn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 16
  end
  object TUsuario: TADOQuery
    Connection = DBCAIXA
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP (1000) [IdUsuario]'
      '      ,[NomeUsuario]'
      '      ,[Periodo]'
      '      ,[senha]'
      '      ,[login]'
      '  FROM [Caixa].[dbo].[Usuario]')
    Left = 40
    Top = 88
    object TUsuarioIdUsuario: TAutoIncField
      FieldName = 'IdUsuario'
      ReadOnly = True
    end
    object TUsuarioNomeUsuario: TStringField
      FieldName = 'NomeUsuario'
      Size = 80
    end
    object TUsuarioPeriodo: TStringField
      FieldName = 'Periodo'
      Size = 30
    end
    object TUsuariosenha: TStringField
      FieldName = 'senha'
    end
    object TUsuariologin: TStringField
      FieldName = 'login'
    end
  end
  object dsUsuario: TDataSource
    DataSet = TUsuario
    Left = 112
    Top = 88
  end
end
