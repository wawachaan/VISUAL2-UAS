unit menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm9 = class(TForm)
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses tabel_siswa, tabel_walikelas, tabel_orangtua, tabel_kelas, tabel_poin,
  tabel_user, tabel_hubungan, tabel_riwayatpoin;

{$R *.dfm}

procedure TForm9.Button9Click(Sender: TObject);
begin
  form1.show;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm9.Button8Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm9.Button7Click(Sender: TObject);
begin
form5.show
end;

procedure TForm9.Button6Click(Sender: TObject);
begin
form6.show
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
form7.show
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
form8.show;
end;

end.
