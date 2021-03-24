unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCLTee.TeEngine, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, Vcl.Menus;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    MainMenu1: TMainMenu;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
