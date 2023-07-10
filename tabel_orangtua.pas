unit tabel_orangtua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    cbb1: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    cbb2: TComboBox;
    cbb3: TComboBox;
    DBGrid1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    Edit7: TEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    btn6: TButton;
    procedure btn6Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses menu;

{$R *.dfm}

procedure TForm3.bersih;
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
cbb3.Text:='';
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
form9.show
end;

procedure TForm3.posisiawal;
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

procedure TForm3.btn1Click(Sender: TObject);
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
edit5.Enabled:= True;edit6.Enabled:= True;edit7.Enabled:= True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if Edit1.Text ='' then
begin
ShowMessage('ID ORANG TUA TIDAK BOLEH KOSONG!');
end else
if Edit2.Text ='' then
begin
ShowMessage('NIK ORANG TUA TIDAK BOLEH KOSONG!');
end else
if Edit3.Text ='' then
begin
ShowMessage('NAMA ORANG TUA TIDAK BOLEH KOSONG!');
end else
if Edit4.Text ='' then
begin
ShowMessage('ALAMAT TIDAK BOLEH KOSONG!');
end else
if Edit5.Text ='' then
begin
ShowMessage('TELPON TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('JENIS KELAMIN TIDAK BOLEH KOSONG!');
end else
if Edit6.Text ='' then
begin
ShowMessage('PEKERJAAN TIDAK BOLEH KOSONG!');
end else
if Edit7.Text ='' then
begin
ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG!');
end else
if cbb2.Text ='' then
begin
ShowMessage('AGAMA TIDAK BOLEH KOSONG!');
end else
if cbb3.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else

begin
ZQuery1.SQL.Clear; //simpan
ZQuery1.SQL.Add('insert into table_orangtua values ("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+cbb1.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit7.Text+'","'+Edit6.Text+'","'+cbb2.Text+'","'+cbb3.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_orangtua');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

end.
