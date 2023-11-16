object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 336
  Width = 498
  object Conexion: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\noriega\Documents\Embarcadero\Studio\Projects\' +
        'PROYECTO\Win32\Debug\Proyecto1.mdb'
      'DriverID=MSAcc'
      'User_Name=Admin')
    Left = 32
    Top = 32
  end
  object FDConnection2: TFDConnection
    Left = 144
    Top = 40
  end
end
