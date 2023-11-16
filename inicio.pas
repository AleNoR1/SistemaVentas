unit inicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Vededores1: TMenuItem;
    Inventario1: TMenuItem;
    Proveedores1: TMenuItem;
    Salir1: TMenuItem;
    N1: TMenuItem;
    Vendedores1: TMenuItem;
    Vendedores2: TMenuItem;
    NuevaVenta1: TMenuItem;
    Historial1: TMenuItem;
    Inventario2: TMenuItem;
    Paquetes1: TMenuItem;
    Clientes1: TMenuItem;
    unudad41: TMenuItem;
    procedure Salir1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Vendedores2Click(Sender: TObject);
    procedure Inventario2Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Historial1Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure NuevaVenta1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses  vendedores, proveedores, inventario, clientes, registroventas, cobranza,
  Unit4;
   


procedure TForm1.Clientes1Click(Sender: TObject);
begin
          Form2.visible:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
width:= 1200;
height:= 860;
position:= poscreencenter;
end;

procedure TForm1.Historial1Click(Sender: TObject);
begin
                    Form7.visible:=true; //*Historial ventas
end;

procedure TForm1.Inventario2Click(Sender: TObject);
begin
        Form6.visible:=true;              //*Inventario
end;




procedure TForm1.NuevaVenta1Click(Sender: TObject);
begin
     Form8.visible:=true;
end;

procedure TForm1.Salir1Click(Sender: TObject);
begin
     Close;                                  //*cerrar sistema
end;




procedure TForm1.Vendedores1Click(Sender: TObject);
begin
  Form3.visible:=true;                      //*vendedores
end;

procedure TForm1.vendedores2Click(Sender: TObject);
begin
Form5.visible:=true;                        //*    proveedores
end;

end.
