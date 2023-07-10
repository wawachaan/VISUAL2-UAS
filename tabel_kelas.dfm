object Form4: TForm4
  Left = 210
  Top = 145
  Width = 928
  Height = 480
  Caption = 'KELAS'
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
  object Label3: TLabel
    Left = 48
    Top = 88
    Width = 35
    Height = 19
    Caption = 'Jenis'
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
  object btn1: TButton
    Left = 48
    Top = 176
    Width = 113
    Height = 33
    Caption = 'BARU'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 184
    Top = 176
    Width = 113
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 320
    Top = 176
    Width = 113
    Height = 33
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 456
    Top = 176
    Width = 113
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 592
    Top = 176
    Width = 113
    Height = 33
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn5Click
  end
  object cbb1: TComboBox
    Left = 168
    Top = 120
    Width = 537
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'TKJ'
      'MULTIMEDIA'
      'DKV')
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 224
    Width = 785
    Height = 193
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit3: TEdit
    Left = 168
    Top = 88
    Width = 537
    Height = 21
    TabOrder = 9
  end
  object btn6: TButton
    Left = 720
    Top = 176
    Width = 113
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 10
    OnClick = btn6Click
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
    Left = 856
    Top = 232
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM table_kelas')
    Params = <>
    Left = 856
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 856
    Top = 360
  end
end
