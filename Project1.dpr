program Project1;

uses
  Forms,
  tabel_siswa in 'tabel_siswa.pas' {Form1},
  tabel_walikelas in 'tabel_walikelas.pas' {Form2},
  tabel_orangtua in 'tabel_orangtua.pas' {Form3},
  tabel_kelas in 'tabel_kelas.pas' {Form4},
  tabel_poin in 'tabel_poin.pas' {Form5},
  tabel_user in 'tabel_user.pas' {Form6},
  tabel_hubungan in 'tabel_hubungan.pas' {Form7},
  tabel_riwayatpoin in 'tabel_riwayatpoin.pas' {Form8},
  menu in 'menu.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
