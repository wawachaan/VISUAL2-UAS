unit tabel_siswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLab  el;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DateTimePicker1: TDateTimePicker;
    cbb1: TComboBox;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    cbb2: TComboBox;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    btn6: TButton;
    cbb3: TComboBox;
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses menu;

{$R *.dfm}

procedure TForm1.bersih;
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;
edit7.Clear;
edit8.Clear;
edit9.Clear;
cbb1.Clear;
cbb2.Clear;
cbb3.Clear;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;edit6.Clear;
edit7.Clear;
edit8.Clear;
edit9.Clear;
cbb1.clear;
cbb2.clear;
cbb3.clear

end;

procedure TForm1.btn6Click(Sender: TObject);
begin
form9.show
end;

procedure TForm1.FormShow;
begin
posisiawal;
end;

procedure TForm1.posisiawal;
begin
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
btn6.Enabled:= False;
edit1.Enabled:= False;
edit2.Enabled:= False;
edit3.Enabled:= False;
edit4.Enabled:= False;
edit5.Enabled:= False;
edit6.Enabled:= False;
edit7.Enabled:= False;
edit8.Enabled:= False;
edit9.Enabled:= False;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
btn6.Enabled:= False;
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
edit4.Enabled:= True;
edit5.Enabled:= True;edit6.Enabled:= True;edit7.Enabled:= True;edit8.Enabled:= True;edit9.Enabled:= True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if Edit1.Text ='' then
begin
ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
end else
if Edit2.Text ='' then
begin
ShowMessage('NISN SISWA TIDAK BOLEH KOSONG!');
end else
if Edit3.Text ='' then
begin
ShowMessage('NAMA SISWA TIDAK BOLEH KOSONG!');
end else
if Edit4.Text ='' then
begin
ShowMessage('NIK SISWA TIDAK BOLEH KOSONG!');
end else
if Edit5.Text ='' then
begin
ShowMessage('TEMPAT LAHIR SISWA TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('JENIS KELAMIN SISWA TIDAK BOLEH KOSONG!');
end else
if Edit6.Text ='' then
begin
ShowMessage('TINGKAT KELAS SISWA TIDAK BOLEH KOSONG!');
end else
if cbb3.Text ='' then
begin
ShowMessage('JURUSAN SISWA TIDAK BOLEH KOSONG!');
end else
if Edit7.Text ='' then
begin
ShowMessage('WALI KELAS SISWA TIDAK BOLEH KOSONG!');
end else
if Edit8.Text ='' then
begin
ShowMessage('ALAMAT SISWA TIDAK BOLEH KOSONG!');
end else
if Edit9.Text ='' then
begin
ShowMessage('TELEPON SISWA TIDAK BOLEH KOSONG!');
end else
if cbb2.Text ='' then
begin
ShowMessage('STATUS SISWA TIDAK BOLEH KOSONG!');
end else
if Edit9.Text ='' then
begin
ShowMessage('MATA PELAJARAN SISWA TIDAK BOLEH KOSONG!');
end else
if cbb2.Text ='' then
begin
ShowMessage('STATUS SISWA TIDAK BOLEH KOSONG!');
end else
begin
ZQuery1.SQL.Clear; //simpan
//ShowMessage('INSERT INTO table_siswa (id_siswa, nisn, nama_siswa, nik, tempat_lahir, tanggal_lahir, jenis_kelamin, tingkat_kelas, jurusan, wali_kelas, alamat, telepon, status) values ("'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+edit5.Text+'","' + FormatDateTime('yyyy/MM/dd', DateTimePicker1.Date) + '", "'+cbb1.Text+'","'+edit6.Text+'","'+cbb3.Text+'","'+edit7.Text+'","'+edit8.Text+'","'+edit9.Text+'","'+cbb2.Text+'")');
//ZQuery1.SQL.Add('insert into table_siswa values ("'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+edit5.Text+'","' + ':DateValue' + '", "'+cbb1.Text+'","'+edit6.Text+'","'+cbb3.Text+'","'+edit7.Text+'","'+edit8.Text+'","'+edit9.Text+'","'+cbb2.Text+'")');
ZQuery1.SQL.Add('insert into table_siswa values ("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+FormatDateTime('yyyy/mm/dd',DateTimePicker1.Date)+'","'+cbb1.Text+'","'+Edit6.Text+'","'+cbb3.Text+'","'+Edit7.Text+'","'+Edit8.Text+'","'+Edit9.Text+'","'+cbb2.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_siswa');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

end.
