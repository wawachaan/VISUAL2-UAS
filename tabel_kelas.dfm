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
  object Button1: TButton
    Left = 48
    Top = 176
    Width = 113
    Height = 33
    Caption = 'BARU'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 184
    Top = 176
    Width = 113
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 320
    Top = 176
    Width = 113
    Height = 33
    Caption = 'EDIT'
    TabOrder = 4
  end
  object Button4: TButton
    Left = 456
    Top = 176
    Width = 113
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 5
  end
  object Button5: TButton
    Left = 592
    Top = 176
    Width = 113
    Height = 33
    Caption = 'BATAL'
    TabOrder = 6
  end
  object ComboBox1: TComboBox
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
    Width = 673
    Height = 193
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit3: TEdit
    Left = 168
    Top = 88
    Width = 537
    Height = 21
    TabOrder = 9
  end
end
