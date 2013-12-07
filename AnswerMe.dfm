object Form2: TForm2
  Left = 837
  Top = 448
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  ClientHeight = 143
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 393
    Height = 89
    Alignment = taCenter
    AutoSize = False
    WordWrap = True
  end
  object Button1: TButton
    Left = 8
    Top = 104
    Width = 393
    Height = 17
    Caption = #1057#1083#1077#1076#1091#1102#1097#1077#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077
    Default = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 120
    Width = 393
    Height = 17
    Cancel = True
    Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1082' '#1087#1086#1080#1089#1082#1091
    TabOrder = 1
    OnClick = Button2Click
  end
end
