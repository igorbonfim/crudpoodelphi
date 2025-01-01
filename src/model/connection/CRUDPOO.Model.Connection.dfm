object Connection: TConnection
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Projetos\Clube dos Programadores\CRUD POO Delphi\dat' +
        'abase\dados'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 64
    Top = 24
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 168
    Top = 24
  end
end
