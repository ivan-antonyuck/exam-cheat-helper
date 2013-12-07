object Form1: TForm1
  Left = 842
  Top = 615
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  ClientHeight = 41
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 72
    Top = 8
    Width = 265
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 57
    Height = 25
    Caption = #1055#1086#1080#1089#1082
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 360
    Top = 8
    Width = 57
    Height = 25
    Caption = #1045#1089#1095#1077#1088#1072#1079
    TabOrder = 2
    Visible = False
    OnClick = Button2Click
  end
end
