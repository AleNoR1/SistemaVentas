program Project1;

uses
  Vcl.Forms,
  inicio in 'inicio.pas' {Form1},
  clientes in 'clientes.pas' {Form2},
  vendedores in 'vendedores.pas' {Form3},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  proveedores in 'proveedores.pas' {Form5},
  inventario in 'inventario.pas' {Form6},
  registroventas in 'registroventas.pas' {Form7},
  cobranza in 'cobranza.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
