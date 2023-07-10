unit tabel_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    cbb1: TComboBox;
    cbb2: TComboBox;
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
  Form6: TForm6;

implementation

uses menu;

{$R *.dfm}

procedure TForm6.bersih;
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
cbb1.Text:='';
cbb2.Text:='';
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
form9.show
end;

procedure TForm6.posisiawal;
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

procedure TForm6.btn1Click(Sender: TObject);
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

procedure TForm6.btn2Click(Sender: TObject);
begin
if Edit1.Text ='' then
begin
ShowMessage('ID USER TIDAK BOLEH KOSONG!');
end else
if Edit2.Text ='' then
begin
ShowMessage('NAMA USER TIDAK BOLEH KOSONG!');
end else
if Edit3.Text ='' then
begin
ShowMessage('PASSWORD TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('LEVEL TIDAK BOLEH KOSONG!');
end else
if cbb2.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else

begin
ZQuery1.SQL.Clear; //simpan
ZQuery1.SQL.Add('insert into table_user values ("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from table_user');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

end.
