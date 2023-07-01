object Form6: TForm6
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'USER'
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
    Width = 44
    Height = 19
    Caption = 'Nama '
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
    Width = 63
    Height = 19
    Caption = 'Password'
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
    Width = 38
    Height = 19
    Caption = 'Level'
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
    Left = 160
    Top = 24
    Width = 545
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 56
    Width = 545
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 160
    Top = 88
    Width = 545
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 48
    Top = 200
    Width = 113
    Height = 33
    Caption = 'BARU'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 184
    Top = 200
    Width = 113
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 4
  end
  object Button3: TButton
    Left = 320
    Top = 200
    Width = 113
    Height = 33
    Caption = 'EDIT'
    TabOrder = 5
  end
  object Button4: TButton
    Left = 456
    Top = 200
    Width = 113
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 6
  end
  object Button5: TButton
    Left = 592
    Top = 200
    Width = 113
    Height = 33
    Caption = 'BATAL'
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 256
    Width = 705
    Height = 161
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 120
    Width = 545
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'ADMIN'
      'USER')
  end
  object ComboBox2: TComboBox
    Left = 160
    Top = 152
    Width = 545
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'AKTIF'
      'TIDAK AKTIF')
  end
end
