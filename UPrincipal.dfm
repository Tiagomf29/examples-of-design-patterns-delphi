object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 297
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gbFactoryMethod: TGroupBox
    Left = 8
    Top = 8
    Width = 153
    Height = 161
    Caption = 'Factory Method'
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 24
      Width = 127
      Height = 11
      Caption = 'Example Digital signature'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnFactoryMethod: TBitBtn
      Left = 4
      Top = 63
      Width = 145
      Height = 25
      Caption = 'signature company A'
      TabOrder = 0
      OnClick = btnFactoryMethodClick
    end
    object BitBtn1: TBitBtn
      Left = 4
      Top = 94
      Width = 145
      Height = 25
      Caption = 'signature company B'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 167
    Top = 8
    Width = 153
    Height = 161
    Caption = 'Factory Method 2'
    TabOrder = 1
    object Label2: TLabel
      Left = 27
      Top = 24
      Width = 85
      Height = 11
      Caption = 'Example printers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 3
      Top = 63
      Width = 145
      Height = 25
      Caption = 'printer Laser'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 3
      Top = 94
      Width = 145
      Height = 25
      Caption = 'printer inkjet'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 326
    Top = 8
    Width = 153
    Height = 161
    Caption = 'Simple Factory'
    TabOrder = 2
    object Label3: TLabel
      Left = 19
      Top = 24
      Width = 113
      Height = 11
      Caption = 'Example APIs Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn4: TBitBtn
      Left = 5
      Top = 41
      Width = 145
      Height = 25
      Caption = 'API SOAP'
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 5
      Top = 72
      Width = 145
      Height = 25
      Caption = 'API Rest'
      TabOrder = 1
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 5
      Top = 101
      Width = 145
      Height = 25
      Caption = 'API GraphQl'
      TabOrder = 2
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 5
      Top = 128
      Width = 145
      Height = 25
      Caption = 'API GRPC'
      TabOrder = 3
      OnClick = BitBtn7Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 175
    Width = 153
    Height = 114
    Caption = 'Abstract Method'
    TabOrder = 3
    object Label4: TLabel
      Left = 11
      Top = 24
      Width = 47
      Height = 11
      Caption = 'Jogo RPG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn8: TBitBtn
      Left = 5
      Top = 47
      Width = 145
      Height = 25
      Caption = 'Level 1'
      TabOrder = 0
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 5
      Top = 78
      Width = 145
      Height = 25
      Caption = 'Level 2'
      TabOrder = 1
      OnClick = BitBtn9Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 164
    Top = 175
    Width = 156
    Height = 114
    Caption = 'Singleton'
    TabOrder = 4
    object Label5: TLabel
      Left = 11
      Top = 24
      Width = 43
      Height = 11
      Caption = 'Conex'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 3
      Top = 48
      Width = 118
      Height = 25
      Caption = '1 - Conectar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 3
      Top = 79
      Width = 118
      Height = 25
      Caption = '2 - Conectar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 326
    Top = 175
    Width = 251
    Height = 114
    Caption = 'Monostate'
    TabOrder = 5
    object Label6: TLabel
      Left = 11
      Top = 24
      Width = 133
      Height = 11
      Caption = 'Inserir lista compartilhada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 145
      Top = 51
      Width = 98
      Height = 11
      Caption = 'Valor a ser inserido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button3: TButton
      Left = 3
      Top = 48
      Width = 118
      Height = 25
      Caption = '1 - inst'#226'ncia 1 - Inserir'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 3
      Top = 79
      Width = 118
      Height = 25
      Caption = '2 - inst'#226'ncia 2 - Inserir'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Edit1: TEdit
      Left = 143
      Top = 68
      Width = 98
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      Text = '0'
    end
  end
end
