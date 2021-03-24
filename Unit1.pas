unit Unit1;

interface

uses
  Unit2,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCLTee.TeEngine, VCLTee.Series,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SpeedButton1: TSpeedButton;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Button5: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Save1: TMenuItem;
    N1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 Series1.AddXY(10,10,'Hello');
 Series1.AddXY(20,20,'World');
 Series1.AddXY(30,30,'Russia');
 Series1.AddXY(40,40,'Belarus');
 Series1.AddXY(50,50,'Ukraine');
end;

procedure TForm1.Button2Click(Sender: TObject);
var x:integer; y:double;
begin Series1.clear; {очищаем график}
 for x:=-10 to 10 do begin y:=sqr(x); { рассчитываем значение y=x2}
 Series1.AddXY(x,y); {отображаем на диаграмме}
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var x:integer; y:double;
 begin Series2.clear; {очищаем график}
 for x:=-100 to 100 do
 begin y:=sqr(x);{ рассчитываем значение y=x2}
  Series2.AddXY(x,y); {отображаем на диаграмме}
 end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var x:integer; y:double;
 begin Series3.clear; {очищаем график}
 for x:=-360 to 360 do
 begin y:=2*cos(x*Pi/180);{ рассчитываем значение y=x2}
  Series2.AddXY(x,y); {отображаем на диаграмме}
 end;

end;

procedure TForm1.Button5Click(Sender: TObject);
var x:integer; y:double;
 begin Series4.clear; {очищаем график}
 for x:=1 to 100 do
 begin y:=Ln(x*0.1);{ рассчитываем значение y=x2}
  Series4.AddXY(x,y); {отображаем на диаграмме}
 end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
Form2.Show;
end;



procedure TForm1.Save1Click(Sender: TObject);
begin
chart1.SaveToBitmapFile('graphic.bmp');
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
Series1.clear ;
end;

end.
