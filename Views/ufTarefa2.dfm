object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'fTarefa2'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    AlignWithMargins = True
    Left = 8
    Top = 232
    Width = 619
    Height = 25
    Margins.Left = 9
    Margins.Right = 9
    ForeColor = clRed
    Progress = 0
  end
  object Gauge2: TGauge
    AlignWithMargins = True
    Left = 8
    Top = 263
    Width = 619
    Height = 25
    ForeColor = clYellow
    Progress = 0
  end
  object lbThread1: TLabel
    Left = 176
    Top = 59
    Width = 43
    Height = 13
    Caption = 'Thread 1'
  end
  object lbThread2: TLabel
    Left = 176
    Top = 86
    Width = 43
    Height = 13
    Caption = 'Thread 2'
  end
  object eThread1: TEdit
    Left = 256
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object eThread2: TEdit
    Left = 256
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btProcessar: TButton
    Left = 256
    Top = 120
    Width = 121
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = btProcessarClick
  end
end
