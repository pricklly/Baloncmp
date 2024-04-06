unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  MaskEdit, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    OK: TButton;
    cb: TComboBox;
    ed1: TEdit;
    ed2: TEdit;
    me1: TMaskEdit;
    me2: TMaskEdit;
    mm: TMemo;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure OKClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.OKClick(Sender: TObject);
var
  a,b : Integer;
  rezult: Longint;
  begin
   a:=StrToInt(Trim(ed1.Text));
   b:=StrToInt(Trim(ed2.Text));
      case Trim(cb.Text)  of
      '*': rezult:=a*b;
      '/': rezult:=a div b;
      '+':rezult:=a+b;
      '-':rezult:=a-b;
      else mm.Lines.Add('Incorect Input');
      end;
      mm.Lines.Add(IntToStr(rezult));
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  a,b: Integer;
  rezult: Longint;
begin
  a:=StrToInt(Trim(me1.Text));
  b:=StrToInt(Trim(me2.Text));
   rezult:=a+b;
    mm.Lines.Add(IntToStr(rezult));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  a,b: Integer;
  rezult: Longint;
begin
   a:=StrToInt(Trim(me1.Text));
  b:=StrToInt(Trim(me2.Text));
   rezult:=a-b;
    mm.Lines.Add(IntToStr(rezult));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  a,b: Integer;
  rezult: Longint;
begin
   a:=StrToInt(Trim(me1.Text));
  b:=StrToInt(Trim(me2.Text));
   rezult:=a*b;
    mm.Lines.Add(IntToStr(rezult));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  a,b: Integer;
  rezult: Longint;
begin
     a:=StrToInt(Trim(me1.Text));
  b:=StrToInt(Trim(me2.Text));
   rezult:=a mod b;
    mm.Lines.Add(IntToStr(rezult));
end;

end.

