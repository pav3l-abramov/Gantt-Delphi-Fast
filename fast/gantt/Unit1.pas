unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.Menus, Vcl.ComCtrls, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.GanttCh, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.StdCtrls, DateUtils, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Chart1: TChart;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Chart2: TChart;
    Chart3: TChart;
    Series2: TGanttSeries;
    Series3: TGanttSeries;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Chart4: TChart;
    Label6: TLabel;
    Series4: TGanttSeries;
    Series1: TGanttSeries;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Button3: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
  procedure gantt1(AStart,AEnd:TDateTime;i:integer; Text:string);
  procedure gantt2(AStart,AEnd:TDateTime;i:integer; Text:string);
  procedure gantt3(AStart,AEnd:TDateTime;i:integer; Text:string);
  procedure gantt4(AStart,AEnd:TDateTime;i:integer; Text:string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   int: integer;
implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm1.Button1Click(Sender: TObject);
var
 F: TextFile;
 S: string;
 StartDate, EndDate: TDateTime;
 Text: string;
 i,k,number : integer;
begin
i:=1;
OpenDialog1.Filter:='текстовые|*.txt';
OpenDialog1.Execute;
AssignFile(F, OpenDialog1.FileName);
Reset(F);
while (not EOF(F)) do begin
  Readln(F, S);
  k:=0;
if Pos('StartDate=',S)>0 then
  begin
  delete(S,1,10);
  StartDate:=StrToDateTime(S);
  end;

if Pos('EndDate=',S)>0 then
  begin
  delete(S,1,8);
  EndDate:=StrToDateTime(S);
  end;

if Pos('Text=',S)>0 then
  begin
  delete(S,1,5);
  Text:=S;
  end;

if Pos('Line number:',S)>0 then
  begin
  k:=1;
  delete(S,1,12);
  number:= StrToInt(S);
  end;

if i=k then
  begin
   gantt4(StartDate, EndDate,number, Text);
  end;
end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var MasStartDate,MasEndDate : array [1..10] of TDateTime;Text : array [1..10] of string; ValueDateStart,ValueTimeStart : TDateTime ;
begin
int:=int+1;

DateTimePicker1.Kind:=dtkDate;
ValueDateStart := DateOf(DateTimePicker1.Date);
DateTimePicker1.Kind:=dtkTime;
ValueTimeStart := TimeOf(DateTimePicker1.Time);
ShowMessage(DateTimeToStr(ValueDateStart)+DateTimeToStr(ValueTimeStart));
     //ShowMessage(      DateTimePicker1.);
MasStartDate[int]:=DateTimePicker1.DateTime;
MasEndDate[int]:= DateTimePicker2.DateTime;
Text[int]:= Edit1.Text;
gantt4(MasStartDate[int], MasEndDate[int],int, Text[int]);
DateTimePicker1.Format:='dd.MM.yyyy HH:mm';
DateTimePicker2.Format:='dd.MM.yyyy HH:mm';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Series4.Clear;
int:=0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  PageControl1.Pages[0].Caption:= 'Diploma';
  PageControl1.Pages[1].Caption:= 'Feature release';
  PageControl1.Pages[2].Caption:= 'Plan for the day';
  PageControl1.Pages[3].Caption:= 'Custom Data';
end;


procedure TForm1.gantt1(AStart,AEnd:TDateTime;i:integer; Text:string);
begin
Series1.AddGantt(AStart,AEnd, i,Text);
end;

procedure TForm1.gantt2(AStart,AEnd:TDateTime;i:integer; Text:string);
begin
Series2.AddGantt(AStart,AEnd, i,Text);
end;

procedure TForm1.gantt3(AStart, AEnd: TDateTime; i: integer; Text: string);
begin
Series3.AddGantt(AStart,AEnd, i,Text);
end;

procedure TForm1.gantt4(AStart, AEnd: TDateTime; i: integer; Text: string);
begin
Series4.AddGantt(AStart,AEnd, i,Text);
end;

procedure TForm1.PageControl1Change(Sender: TObject);
var StartDate, EndDate: TDateTime; Text: string; W: string;
begin

DateTimePicker1.Format:='dd.MM.yyyy HH:mm';
DateTimePicker2.Format:='dd.MM.yyyy HH:mm';

StartDate := EncodeDateTime(2020,10,1,0,0,0,0);
EndDate:=    EncodeDateTime(2020,10,15,0,0,0,0);
Text:='Collecting requirements';
gantt1(StartDate, EndDate,0, Text);

StartDate := EncodeDateTime(2020,10,16,0,0,0,0);
EndDate:=    EncodeDateTime(2020,11,1,0,0,0,0);
Text:='Requirements analysis';
gantt1(StartDate, EndDate,1, Text);

StartDate := EncodeDateTime(2020,11,1,0,0,0,0);
EndDate:=    EncodeDateTime(2020,11,15,0,0,0,0);
Text:='Drawing up the technical task';
gantt1(StartDate, EndDate,2, Text);

StartDate := EncodeDateTime(2020,11,16,0,0,0,0);
EndDate:=    EncodeDateTime(2020,12,1,0,0,0,0);
Text:='Design';
gantt1(StartDate, EndDate,3, Text);

StartDate := EncodeDateTime(2021,01,1,0,0,0,0);
EndDate:=    EncodeDateTime(2021,01,15,0,0,0,0);
Text:='Developing a news parser';
gantt1(StartDate, EndDate,4, Text);

StartDate := EncodeDateTime(2021,03,15,0,0,0,0);
EndDate:=    EncodeDateTime(2021,03,18,0,0,0,0);
Text:='Design';
gantt2(StartDate, EndDate,0, Text);

StartDate := EncodeDateTime(2021,03,18,0,0,0,0);
EndDate:=    EncodeDateTime(2021,03,23,0,0,0,0);
Text:='Writing code';
gantt2(StartDate, EndDate,1, Text);

StartDate := EncodeDateTime(2021,03,23,0,0,0,0);
EndDate:=    EncodeDateTime(2021,03,26,0,0,0,0);
Text:='Writing tests';
gantt2(StartDate, EndDate,2, Text);

StartDate := EncodeDateTime(2021,03,26,0,0,0,0);
EndDate:=    EncodeDateTime(2021,03,30,0,0,0,0);
Text:='Writing documentation';
gantt2(StartDate, EndDate,3, Text);

StartDate := EncodeDateTime(2021,03,30,0,0,0,0);
EndDate:=    EncodeDateTime(2021,03,31,0,0,0,0);
Text:='Release';
gantt2(StartDate, EndDate,4, Text);

StartDate := EncodeDateTime(2021,03,15,15,0,0,0);
EndDate:=    EncodeDateTime(2021,03,15,16,0,0,0);
Text:='Cook salads';
gantt3(StartDate, EndDate,0, Text);

StartDate := EncodeDateTime(2021,03,15,16,0,0,0);
EndDate:=    EncodeDateTime(2021,03,15,18,30,0,0);
Text:='Cook main dish';
gantt3(StartDate, EndDate,1, Text);

StartDate := EncodeDateTime(2021,03,15,18,30,0,0);
EndDate:=    EncodeDateTime(2021,03,15,19,30,0,0);
Text:='Cook snack';
gantt3(StartDate, EndDate,2, Text);

StartDate := EncodeDateTime(2021,03,15,19,30,0,0);
EndDate:=    EncodeDateTime(2021,03,15,22,30,0,0);
Text:='Get a sleep';
gantt3(StartDate, EndDate,3, Text);

StartDate := EncodeDateTime(2021,03,15,22,30,0,0);
EndDate:=    EncodeDateTime(2021,03,15,23,30,0,0);
Text:='Set the table';
gantt3(StartDate, EndDate,4, Text);
end;

end.
