unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.Mask,
  Vcl.DBCtrls;

type
  TForm4 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    DBEdit1: TDBEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin

var i, ix :integer;
begin
StringGrid1.ColCount:=10;
StringGrid1.RowCount:=10;

for I := 0 to 10 do
for Ix := 0 to 10 do
  with StringGrid1 do
  begin

  Cells[i,ix] := 'Col - ' + inttostr(i) + ', Row - ' + inttostr(ix);
  ColWidths[i-1]:=100;

  end;

end;
end;

end.
