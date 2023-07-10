object Form1: TForm1
  Left = 320
  Top = 196
  Width = 928
  Height = 570
  Caption = 'SISWA'
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 56
    Height = 19
    Caption = 'Id Siswa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 56
    Width = 39
    Height = 19
    Caption = 'NISN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 88
    Width = 82
    Height = 19
    Caption = 'Nama Siswa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 128
    Width = 30
    Height = 19
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 168
    Width = 90
    Height = 19
    Caption = 'Tempat Lahir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 208
    Width = 93
    Height = 19
    Caption = 'Tanggal Lahir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 24
    Top = 248
    Width = 95
    Height = 19
    Caption = 'Jenis Kelamin'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 472
    Top = 24
    Width = 99
    Height = 19
    Caption = 'Tingkat Kelas '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 480
    Top = 56
    Width = 53
    Height = 19
    Caption = 'Jurusan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 480
    Top = 96
    Width = 73
    Height = 19
    Caption = 'Wali Kelas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 480
    Top = 136
    Width = 48
    Height = 19
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 480
    Top = 168
    Width = 53
    Height = 19
    Caption = 'Telepon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 480
    Top = 208
    Width = 42
    Height = 19
    Caption = 'Status'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 24
    Width = 305
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 56
    Width = 305
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 136
    Top = 88
    Width = 305
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 136
    Top = 128
    Width = 305
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 136
    Top = 168
    Width = 305
    Height = 21
    TabOrder = 4
  end
  object DateTimePicker1: TDateTimePicker
    Left = 136
    Top = 208
    Width = 305
    Height = 21
    Date = 45102.687897210650000000
    Time = 45102.687897210650000000
    TabOrder = 5
  end
  object cbb1: TComboBox
    Left = 136
    Top = 248
    Width = 305
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'P'
      'L')
  end
  object Edit6: TEdit
    Left = 576
    Top = 24
    Width = 289
    Height = 21
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 576
    Top = 96
    Width = 289
    Height = 21
    TabOrder = 8
  end
  object Edit8: TEdit
    Left = 576
    Top = 136
    Width = 289
    Height = 21
    TabOrder = 9
  end
  object Edit9: TEdit
    Left = 576
    Top = 168
    Width = 289
    Height = 21
    TabOrder = 10
  end
  object btn1: TButton
    Left = 24
    Top = 288
    Width = 113
    Height = 33
    Caption = 'BARU'
    TabOrder = 11
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 160
    Top = 288
    Width = 113
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 12
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 296
    Top = 288
    Width = 113
    Height = 33
    Caption = 'EDIT'
    TabOrder = 13
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 432
    Top = 288
    Width = 113
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 14
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 568
    Top = 288
    Width = 113
    Height = 33
    Caption = 'BATAL'
    TabOrder = 15
    OnClick = btn5Click
  end
  object cbb2: TComboBox
    Left = 576
    Top = 208
    Width = 289
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Items.Strings = (
      'AKTIF'
      'TIDAK AKTIF')
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 336
    Width = 889
    Height = 177
    DataSource = DataSource1
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object btn6: TButton
    Left = 704
    Top = 288
    Width = 113
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 18
    OnClick = btn6Click
  end
  object cbb3: TComboBox
    Left = 576
    Top = 56
    Width = 289
    Height = 21
    ItemHeight = 13
    TabOrder = 19
    Items.Strings = (
      'TKJ'
      'MULTIMEDIA'
      'DKV')
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'uas_najwa_2110010417'
    User = 'root'
    Protocol = 'mysql-5'
    LibraryLocation = 
      'C:\Users\ACER A314\OneDrive\Documents\UAS VISUAL NAJWA 4C\libmys' +
      'ql.dll'
    Left = 480
    Top = 240
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM table_siswa')
    Params = <>
    Left = 568
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 640
    Top = 240
  end
end
