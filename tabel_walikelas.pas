unit tabel_walikelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm2 = class(TForm)
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
    cbb1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    Edit6: TEdit;
    cbb2: TComboBox;
    DBGrid1: TDBGrid;
    Edit7: TEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    btn6: TButton;
    procedure btn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses menu;

{$R *.dfm}

procedure TForm2.btn6Click(Sender: TObject);
begin
form9.show
end;

procedure TForm2.btn1Click(Sender: TObject);
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

procedure TForm2.btn2Click(Sender: TObject);
begin
if Edit1.Text ='' then
begin
ShowMessage('ID WALI KELAS TIDAK BOLEH KOSONG!');
end else
if Edit2.Text ='' then
begin
ShowMessage('NIP WALI KELAS TIDAK BOLEH KOSONG!');
end else
if Edit3.Text ='' then
begin
ShowMessage('NAMA WALI KELAS TIDAK BOLEH KOSONG!');
end else
if Edit4.Text ='' then
begin
ShowMessage('ALAMAT WALI KELAS TIDAK BOLEH KOSONG!');
end else
if Edit5.Text ='' then
begin
ShowMessage('MATPEL TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('JENIS KELAMIN SISWA TIDAK BOLEH KOSONG!');
end else
if Edit6.Text ='' then
begin
ShowMessage('TELEPON TIDAK BOLEH KOSONG!');
end else
if Edit7.Text ='' then
begin
ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG!');
end else
if cbb2.Text ='' then
begin
ShowMessage('STATUS SISWA TIDAK BOLEH KOSONG!');
end else

begin
ZQuery1.SQL.Clear; //simpan
ZQuery1.SQL.Add('insert into table_walikelas values ("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+cbb1.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit7.Text+'","'+cbb2.Text+'","'+Edit6.Text+'",)');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_walikelas');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm2.posisiawal;
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

procedure TForm2.bersih;
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;
edit7.Clear;
cbb1.Text:='';
cbb2.Text:='';
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= ZQuery1.Fields[0].AsString; // DBGrid
Edit2.Text:= ZQuery1.Fields[1].AsString;
Edit3.Text:= ZQuery1.Fields[2].AsString;
Edit4.Text:= ZQuery1.Fields[3].AsString;
Edit5.Text:= ZQuery1.Fields[4].AsString;
cbb1.Text:= ZQuery1.Fields[6].AsString;
Edit6.Text:= ZQuery1.Fields[7].AsString;
Edit7.Text:= ZQuery1.Fields[9].AsString;
cbb2.Text:= ZQuery1.Fields[12].AsString;

Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
Edit6.Enabled:= True;
Edit7.Enabled:= True;
cbb1.Enabled:= True;
Edit6.Enabled:= True;
cbb2.Enabled:= True;
Edit7.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
btn6.Enabled:= True;

end;

end.
