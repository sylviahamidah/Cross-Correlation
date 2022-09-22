unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, Series;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Chart2: TChart;
    Chart3: TChart;
    ListBox1: TListBox;
    Button1: TButton;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Edit1: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    procedure BacaData;
    procedure Korelasi;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Normalisasi;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  filename          : TextFile;
  x,y,yn,Rxy,Norm   : array[-100000..100000] of Extended;
  sample            : Integer;

implementation

{$R *.dfm}

procedure TForm1.BacaData;
var
 i        :integer;

begin
 i:=0;

 AssignFile(filename,'Heel123.txt');
 Reset(filename);
 while not Eof(filename) do
 begin
  Readln(filename,x[i]);
  i:=i+1;
 end;
 sample:= i-1;
 CloseFile(filename);

 i:=0;
 AssignFile(filename,'Toe123.txt');
 Reset(filename);
 while not Eof(filename) do
 begin
  Readln(filename,y[i]);
  i:=i+1;
 end;
 sample:= i-1;
 CloseFile(filename);

end;

procedure TForm1.Korelasi;
var
  L, n    :integer;
  sigmaL  :real;
begin
  for L:=0 to sample do
    begin
      sigmaL:=0;
      for n:=0 to sample do
      begin
        sigmaL:=sigmaL+x[n]*yn[n-L];
      end;
      Rxy[L]:=sigmaL;
      Series3.AddXY(L,Rxy[L]);
    end;
end;

procedure TForm1.Normalisasi;
var
  L :integer;
begin
  for L:= 0 to sample-1 do
  begin
    //If (rxx1[0]=0 then Norml[L]:=0 else Norml[L]:= (rxx1[L]/rxx1[0]);
    Norm[L]:= Rxy[L]/(sample-L);
    Series4.Add(Norm[L]);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i     :integer;
  s1, s2, s3: string;
begin
  ListBox1.Clear;

  for i:= 0 to sample do
  begin
    Str(x[i]:3:3, s1);
    Str(yn[i]:3:3, s2);
    Str(Rxy[i]:3:3, s3);
    ListBox1.Items.Add('x['+inttostr(i)+']= '+s1+'           '+
                   'y['+inttostr(i)+']= '+s2+'           '+
                 'rxy['+inttostr(i)+']= '+s3);
  end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i, geser: Integer;
begin
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;

  geser:= StrToInt(Edit1.Text);
  for i:= 0 to sample do
  begin
    yn[i]:= y[i-geser];
    Series1.Add(x[i]);
    Series2.Add(yn[i]);
  end;
  Korelasi;
  Normalisasi;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i, geser: Integer;
begin
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;

  for i:= -100000 to 100000 do
  begin
    x[i]:= 0;
    y[i]:= 0;
  end;
  BacaData;

  geser:= 0;
  for i:= 0 to sample do
  begin
    yn[i]:= y[i+geser];
  end;
  Korelasi;
  Normalisasi;
end;


end.
