unit Unit2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Vcl.Dialogs,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef;


type
  TDataModule2 = class(TDataModule)
    Conexion: TFDConnection;
    FDConnection2: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    RutaDatos : string;
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
RutaDatos := ExtractFilePath(ParamStr(0)) + '\';
        if FileExists(RutaDatos+'Proyecto1.mdb') then
        begin
              Conexion.Params.Database :=RutaDatos+'Proyecto1.mdb';
              Conexion.DriverName := 'MSAcc';
              Conexion.Connected := True;
        end
            else
        begin
              ShowMessage('La base de datos no existe');
        end;
end;

end.
