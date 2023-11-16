unit inventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls;

type
  TForm6 = class(TForm)
    MainMenu1: TMainMenu;
    Regresar1: TMenuItem;
    Regresar2: TMenuItem;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDConnectionInventario: TFDConnection;
    FDQuery1: TFDQuery;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Regresar1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var x:string;
   // 39 para comilla
begin
x:='Select * From inventario where Artículo='+chr(39)+Edit1.Text+chr(39);
FDQuery1.SQL.Clear;
FDQuery1.SQL.add(x);
FDQUERY1.Active:=True;

end;

procedure TForm6.Button2Click(Sender: TObject);
begin
FdQuery1.insert;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
FdQuery1.refresh;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
FdQuery1.insert;
end;

procedure TForm6.Button5Click(Sender: TObject);
var x:string;
   // 39 para comilla
begin
x:='Select * From inventario';
FDQuery1.SQL.Clear;
FDQuery1.SQL.add(x);
FDQUERY1.Active:=True;

end;

procedure TForm6.FormCreate(Sender: TObject);
begin
width:= 1200;
height:= 860;
position:= poscreencenter;
end;

procedure TForm6.Regresar1Click(Sender: TObject);
begin
Close;
end;

end.
