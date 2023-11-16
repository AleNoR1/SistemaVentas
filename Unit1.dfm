object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 208
  Width = 277
  object Conexión: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\noriega\Documents\Embarcadero\Studio\Projects\' +
        'PROYECTO\Win32\Debug\Proyecto1.mdb'
      'User_Name=noriega'
      'DriverID=FB')
    Left = 24
    Top = 32
  end
  object DdeClientConv1: TDdeClientConv
    Left = 240
    Top = 152
  end
  object FDConnection1: TFDConnection
    Left = 112
    Top = 80
  end
end
