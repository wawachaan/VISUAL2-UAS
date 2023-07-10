unit tabel_kelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    cbb1: TComboBox;
    DBGrid1: TDBGrid;
    Edit3: TEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    btn6: TButton;
    procedure btn6Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses menu;

{$R *.dfm}

procedure TForm4.bersih;
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
cbb1.Text:='';
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
form9.show
end;

procedure TForm4.posisiawal;
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
end;

procedure TForm4.btn1Click(Sender: TObject);
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
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if Edit1.Text ='' then
begin
ShowMessage('ID KELAS TIDAK BOLEH KOSONG!');
end else
if Edit2.Text ='' then
begin
ShowMessage('NAMA TIDAK BOLEH KOSONG!');
end else
if Edit3.Text ='' then
begin
ShowMessage('JENIS KELAS TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('JURUSAN TIDAK BOLEH KOSONG!');
end else

begin
ZQuery1.SQL.Clear; //simpan
ZQuery1.SQL.Add('insert into table_kelas values ("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+cbb1.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_kelas');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
if (Edit1.Text= '') or (Edit2.Text ='') or (Edit3.Text= '') or (cbb1.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //EDIT
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update table_kelas set id_kelas="'+Edit1.Text+'",nama ="'+Edit2.Text+'",jenis="'+Edit3.Text+'",jurusan="'+cbb1.Text+'" where id_kelas="'+Edit1.Text+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_kelas');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= ZQuery1.Fields[0].AsString; // DBGrid
Edit2.Text:= ZQuery1.Fields[1].AsString;
Edit3.Text:= ZQuery1.Fields[2].AsString;
cbb1.Text:= ZQuery1.Fields[3].AsString;


Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
cbb1.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
btn6.Enabled:= True;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from table_kelas where id_kelas="'+Edit1.Text+'"');
ZQuery1.ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
posisiawal;
bersih;
end;

end.
