unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCLTee.TeEngine, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, Vcl.Menus, Vcl.StdCtrls, VCLTee.Series;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    MainMenu1: TMainMenu;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Timer1: TTimer;
    Button1: TButton;
    Series1: TLineSeries;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Ym1,W1,Ym2,W2:double; t, Dt:word;

implementation

{$R *.dfm}



procedure TForm2.Button1Click(Sender: TObject);
begin
t:=0; {начальное значение времени}
Ym1:=StrToFloat(Edit3.Text);
W1:=StrToFloat(Edit1.Text);
Ym2:=StrToFloat(Edit5.Text);
W2:=StrToFloat(Edit4.Text);
Dt:=StrToInt(Edit2.Text);
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then timer1.Enabled:=true else timer1.Enabled:=not true;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
var x:integer; Y1:double;
begin Series1.Clear; t:=t+dt;
for x:=-360 to 360 do begin  {*****Ќачало блока*****}
Y1:=Ym1*cos(x*pi/180+w1*t);
Series1.AddXY(X,Y1,'');
end;

end.
