unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var cislo,zvysok,nove:integer;
begin
  cislo:=strtoint(edit1.text);                 //načíta pôvodné číslo
  nove:=0;

   repeat                                      //otáčanie
   zvysok:=cislo mod 10;                       //odtrhne poslednú cifru čísla
   nove:=nove*10 + zvysok;
   cislo:=cislo div 10;                        //za číslo doasadí číslo, ktoré vznikne po delení 10 bez zvyšku
  until cislo=0;

 label3.caption:='Opačné číslo: ' + inttostr(nove);   //vypíše opačné číslo
end;


end.

