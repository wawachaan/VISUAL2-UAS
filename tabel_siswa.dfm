object Form1: TForm1
  Left = 195
  Top = 132
  Width = 928
  Height = 572
  Caption = 'SISWA'
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
  object ComboBox1: TComboBox
    Left = 136
    Top = 248
    Width = 305
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'PEREMPUAN'
      'LAKI-LAKI')
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
  object Button1: TButton
    Left = 24
    Top = 288
    Width = 113
    Height = 33
    Caption = 'BARU'
    TabOrder = 11
  end
  object Button2: TButton
    Left = 160
    Top = 288
    Width = 113
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 12
  end
  object Button3: TButton
    Left = 296
    Top = 288
    Width = 113
    Height = 33
    Caption = 'EDIT'
    TabOrder = 13
  end
  object Button4: TButton
    Left = 432
    Top = 288
    Width = 113
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 14
  end
  object Button5: TButton
    Left = 568
    Top = 288
    Width = 113
    Height = 33
    Caption = 'BATAL'
    TabOrder = 15
  end
  object ComboBox2: TComboBox
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
  object ComboBox3: TComboBox
    Left = 576
    Top = 56
    Width = 289
    Height = 21
    ItemHeight = 13
    TabOrder = 17
    Items.Strings = (
      'TKJ'
      'MULTIMEDIA'
      'DKV')
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 336
    Width = 841
    Height = 177
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
