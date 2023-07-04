object Form5: TForm5
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'POIN'
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
    Left = 48
    Top = 24
    Width = 14
    Height = 19
    Caption = 'Id'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 56
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
  object Label3: TLabel
    Left = 48
    Top = 88
    Width = 40
    Height = 19
    Caption = 'Bobot'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 120
    Width = 39
    Height = 19
    Caption = 'Jenis '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 48
    Top = 152
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
    Left = 168
    Top = 24
    Width = 537
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 168
    Top = 56
    Width = 537
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 168
    Top = 88
    Width = 537
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 168
    Top = 120
    Width = 537
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 48
    Top = 200
    Width = 113
    Height = 33
    Caption = 'BARU'
    TabOrder = 4
  end
  object Button2: TButton
    Left = 184
    Top = 200
    Width = 113
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 320
    Top = 200
    Width = 113
    Height = 33
    Caption = 'EDIT'
    TabOrder = 6
  end
  object Button4: TButton
    Left = 456
    Top = 200
    Width = 113
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 7
  end
  object Button5: TButton
    Left = 592
    Top = 200
    Width = 113
    Height = 33
    Caption = 'BATAL'
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 256
    Width = 785
    Height = 153
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ComboBox1: TComboBox
    Left = 168
    Top = 152
    Width = 537
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'PRESTASI'
      'PELANGGARAN')
  end
  object Button6: TButton
    Left = 728
    Top = 200
    Width = 113
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 11
    OnClick = Button6Click
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
    Left = 864
    Top = 256
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM table_poin')
    Params = <>
    Left = 864
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 864
    Top = 368
  end
end
