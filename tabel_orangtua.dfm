object Form3: TForm3
  Left = 210
  Top = 150
  Width = 960
  Height = 480
  Caption = 'ORANG TUA'
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
    Left = 32
    Top = 32
    Width = 89
    Height = 19
    Caption = 'Id Orang Tua'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 64
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
  object Label3: TLabel
    Left = 32
    Top = 96
    Width = 40
    Height = 19
    Caption = 'Nama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 128
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
  object Label5: TLabel
    Left = 32
    Top = 160
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
  object Label6: TLabel
    Left = 488
    Top = 32
    Width = 45
    Height = 19
    Caption = 'Telpon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 488
    Top = 64
    Width = 74
    Height = 19
    Caption = 'Pendidikan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 488
    Top = 96
    Width = 68
    Height = 19
    Caption = 'Pekerjaan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 488
    Top = 128
    Width = 47
    Height = 19
    Caption = 'Agama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 488
    Top = 160
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
    Left = 152
    Top = 32
    Width = 305
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 152
    Top = 64
    Width = 305
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 152
    Top = 96
    Width = 305
    Height = 21
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 152
    Top = 128
    Width = 305
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'PEREMPUAN '
      'LAKI-LAKI')
  end
  object Edit4: TEdit
    Left = 152
    Top = 160
    Width = 305
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 568
    Top = 32
    Width = 305
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 568
    Top = 96
    Width = 305
    Height = 21
    TabOrder = 6
  end
  object ComboBox3: TComboBox
    Left = 568
    Top = 128
    Width = 305
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'ISLAM'
      'KRISTEN'
      'HINDU '
      'BUDHA'
      'KONGHUCU')
  end
  object ComboBox4: TComboBox
    Left = 568
    Top = 160
    Width = 305
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'KANDUNG'
      'ANGKAT')
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 256
    Width = 849
    Height = 169
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 32
    Top = 208
    Width = 113
    Height = 33
    Caption = 'BARU'
    TabOrder = 10
  end
  object Button2: TButton
    Left = 168
    Top = 208
    Width = 113
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 11
  end
  object Button3: TButton
    Left = 304
    Top = 208
    Width = 113
    Height = 33
    Caption = 'EDIT'
    TabOrder = 12
  end
  object Button4: TButton
    Left = 440
    Top = 208
    Width = 113
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 13
  end
  object Button5: TButton
    Left = 576
    Top = 208
    Width = 113
    Height = 33
    Caption = 'BATAL'
    TabOrder = 14
  end
  object Edit7: TEdit
    Left = 568
    Top = 64
    Width = 305
    Height = 21
    TabOrder = 15
  end
  object Button6: TButton
    Left = 712
    Top = 208
    Width = 113
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 16
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
    Left = 896
    Top = 256
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM table_orangtua')
    Params = <>
    Left = 896
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 896
    Top = 368
  end
end
