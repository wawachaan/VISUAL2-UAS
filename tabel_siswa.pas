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
    Label7: TLabel;
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
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
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
cbb1.Text:='';
cbb2.Text:='';
cbb3.Text:='';
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from table_siswa where id_siswa="'+Edit1.Text+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_siswa');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
form9.show;
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
btn6.Enabled:= True;
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
btn6.Enabled:= True;
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
ZQuery1.SQL.Add('insert into table_siswa values ("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+FormatDateTime('yyyy/mm/dd',DateTimePicker1.Date)+'","'+cbb1.Text+'","'+Edit6.Text+'","'+cbb3.Text+'","'+Edit7.Text+'","'+Edit8.Text+'","'+Edit9.Text+'","'+cbb2.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_siswa');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= ZQuery1.Fields[0].AsString; // DBGrid
Edit2.Text:= ZQuery1.Fields[1].AsString;
Edit3.Text:= ZQuery1.Fields[2].AsString;
Edit4.Text:= ZQuery1.Fields[3].AsString;
Edit5.Text:= ZQuery1.Fields[4].AsString;
DateTimePicker1.Date:= ZQuery1.Fields[5].AsDateTime;
cbb1.Text:= ZQuery1.Fields[6].AsString;
Edit6.Text:= ZQuery1.Fields[7].AsString;
cbb3.Text:= ZQuery1.Fields[8].AsString;
Edit7.Text:= ZQuery1.Fields[9].AsString;
Edit8.Text:= ZQuery1.Fields[10].AsString;
Edit9.Text:= ZQuery1.Fields[11].AsString;
cbb2.Text:= ZQuery1.Fields[12].AsString;

Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
DateTimePicker1.Enabled:= True;
cbb1.Enabled:= True;
Edit6.Enabled:= True;
cbb2.Enabled:= True;
Edit7.Enabled:= True;
Edit8.Enabled:= True;
Edit9.Enabled:= True;
cbb2.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;
procedure TForm1.btn3Click(Sender: TObject);
begin
if (Edit1.Text= '') or (Edit2.Text ='') or (Edit3.Text= '') or (Edit4.Text ='') or (Edit5.Text ='') or (cbb1.Text ='') or (Edit6.Text ='') or (Edit7.Text ='') or (Edit8.Text ='') or (Edit9.Text ='') or (cbb2.Text ='') or (cbb3.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //EDIT
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update table_siswa set id_siswa= "'+Edit1.Text+'",nisn ="'+Edit2.Text+'",nama_siswa="'+Edit3.Text+'",nik="'+Edit4.Text+'",tempat_lahir="'+Edit5.Text+'",tanggal_lahir="'+FormatDateTime('yyyy/mm/dd',DateTimePicker1.Date)+'",jenis_kelamin="'+cbb1.Text+'",tingkat_kelas="'+Edit6.Text+'",jurusan="'+cbb3.Text+'",wali_kelas="'+Edit7.Text+'",alamat="'+Edit8.Text+'",telepon="'+Edit9.Text+'",status="'+cbb2.Text+'" where id_siswa="'+Edit1.Text+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_siswa');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
posisiawal;
bersih;
end;

end.
