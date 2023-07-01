object Form2: TForm2
  Left = 203
  Top = 144
  Width = 928
  Height = 480
  Caption = 'WALI KELAS'
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
    Width = 91
    Height = 19
    Caption = 'Id Wali Kelas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 27
    Height = 19
    Caption = 'NIP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 88
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
    Left = 24
    Top = 120
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
    Left = 24
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
    Left = 480
    Top = 88
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
  object Label7: TLabel
    Left = 480
    Top = 24
    Width = 49
    Height = 19
    Caption = 'Matpel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 480
    Top = 56
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
  object Label9: TLabel
    Left = 480
    Top = 120
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
    Left = 144
    Top = 24
    Width = 305
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 144
    Top = 56
    Width = 305
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 144
    Top = 88
    Width = 305
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 144
    Top = 160
    Width = 305
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 568
    Top = 24
    Width = 305
    Height = 21
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 144
    Top = 120
    Width = 305
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'PEREMPUAN'
      'LAKI-LAKI')
  end
  object Button1: TButton
    Left = 24
    Top = 200
    Width = 97
    Height = 33
    Caption = 'BARU'
    TabOrder = 6
  end
  object Button2: TButton
    Left = 144
    Top = 200
    Width = 113
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 7
  end
  object Button3: TButton
    Left = 272
    Top = 200
    Width = 113
    Height = 33
    Caption = 'EDIT'
    TabOrder = 8
  end
  object Button4: TButton
    Left = 408
    Top = 200
    Width = 113
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 9
  end
  object Button5: TButton
    Left = 544
    Top = 200
    Width = 113
    Height = 33
    Caption = 'BATAL'
    TabOrder = 10
  end
  object Edit6: TEdit
    Left = 568
    Top = 88
    Width = 305
    Height = 21
    TabOrder = 11
  end
  object ComboBox3: TComboBox
    Left = 568
    Top = 120
    Width = 305
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Items.Strings = (
      'AKTIF'
      'TIDAK AKTIF')
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 256
    Width = 865
    Height = 169
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit7: TEdit
    Left = 568
    Top = 56
    Width = 305
    Height = 21
    TabOrder = 14
  end
end
