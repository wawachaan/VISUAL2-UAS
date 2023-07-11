unit tabel_riwayatpoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    DBGrid1: TDBGrid;
    cbb1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    btn6: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Button1: TButton;
    procedure btn6Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses menu;

{$R *.dfm}

procedure TForm8.bersih;
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;
edit7.Clear;
cbb1.Text:='';
end;

procedure TForm8.btn6Click(Sender: TObject);
begin
form9.show;
end;

procedure TForm8.posisiawal;
begin
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
btn6.Enabled:= True;
edit1.Enabled:= False;
edit2.Enabled:= False;
edit3.Enabled:= False;
edit4.Enabled:= False;
edit5.Enabled:= False;
edit6.Enabled:= False;
edit7.Enabled:= False;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
btn6.Enabled:= True;
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
edit4.Enabled:= True;
edit5.Enabled:= True;edit6.Enabled:= True;edit7.Enabled:= True;end;

procedure TForm8.btn2Click(Sender: TObject);
begin
if Edit1.Text ='' then
begin
ShowMessage('ID TIDAK BOLEH KOSONG!');
end else
if Edit2.Text ='' then
begin
ShowMessage('SISWA ID TIDAK BOLEH KOSONG!');
end else
if Edit3.Text ='' then
begin
ShowMessage('POIN ID TIDAK BOLEH KOSONG!');
end else
if Edit4.Text ='' then
begin
ShowMessage('WALI ID TIDAK BOLEH KOSONG!');
end else
if Edit5.Text ='' then
begin
ShowMessage('ORTU ID TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('STATUS ID TIDAK BOLEH KOSONG!');
end else
if Edit6.Text ='' then
begin
ShowMessage('KELAS ID TIDAK BOLEH KOSONG!');
end else
if Edit7.Text ='' then
begin
ShowMessage('SEMESTER SISWA TIDAK BOLEH KOSONG!');
end else
begin
ZQuery1.SQL.Clear; //simpan
ZQuery1.SQL.Add('insert into table_riwayatpoin values ("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+FormatDateTime('yyyy/mm/dd',DateTimePicker1.Date)+'","'+Edit7.Text+'","'+cbb1.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_riwayatpoin');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
if (Edit1.Text= '') or (Edit2.Text ='') or (Edit3.Text= '') or (Edit4.Text ='') or (Edit5.Text ='') or (cbb1.Text ='') or (Edit6.Text ='') or (Edit7.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //EDIT
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update table_riwayatpoin set id_riwayatpoin= "'+Edit1.Text+'",siswa_id ="'+Edit2.Text+'",poin_id="'+Edit3.Text+'",wali_id="'+Edit4.Text+'",ortu_id="'+Edit5.Text+'",kelas_id="'+Edit6.Text+'",tanggal="'+FormatDateTime('yyyy/mm/dd',DateTimePicker1.Date)+'",semester="'+Edit7.Text+'",status="'+cbb1.Text+'" where id_riwayatpoin ="'+Edit1.Text+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_riwayatpoin');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from table_riwayatpoin where id_riwayatpoin="'+Edit1.Text+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_riwayatpoin');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
posisiawal;
bersih;
end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= ZQuery1.Fields[0].AsString; // DBGrid
Edit2.Text:= ZQuery1.Fields[1].AsString;
Edit3.Text:= ZQuery1.Fields[2].AsString;
Edit4.Text:= ZQuery1.Fields[3].AsString;
Edit5.Text:= ZQuery1.Fields[4].AsString;
Edit6.Text:= ZQuery1.Fields[5].AsString;
DateTimePicker1.Date:= ZQuery1.Fields[6].AsDateTime;
Edit7.Text:= ZQuery1.Fields[7].AsString;
cbb1.Text:= ZQuery1.Fields[8].AsString;


Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
Edit6.Enabled:= True;
Edit7.Enabled:= True;
DateTimePicker1.Enabled:= True;
cbb1.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
btn6.Enabled:= True;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
frxReport1.showreport();
end;

end.

