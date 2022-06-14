object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnBotoesValores: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 177
    Width = 629
    Height = 119
    Align = alBottom
    TabOrder = 0
    object EdtTotalSoma: TLabeledEdit
      Left = 477
      Top = 26
      Width = 121
      Height = 21
      EditLabel.Width = 40
      EditLabel.Height = 13
      EditLabel.Caption = 'Total R$'
      TabOrder = 0
    end
    object btTotalDivisoes: TButton
      Left = 304
      Top = 60
      Width = 153
      Height = 29
      Caption = 'Obter Total Divis'#245'es'
      TabOrder = 1
      OnClick = btTotalDivisoesClick
    end
    object btTotal: TButton
      Left = 304
      Top = 24
      Width = 153
      Height = 30
      Caption = 'Obter Total'
      TabOrder = 2
      OnClick = btTotalClick
    end
    object EdtTotalDivisao: TLabeledEdit
      Left = 477
      Top = 74
      Width = 121
      Height = 21
      EditLabel.Width = 81
      EditLabel.Height = 13
      EditLabel.Caption = 'Total divis'#245'es R$'
      TabOrder = 3
    end
  end
  object gdDados: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 629
    Height = 168
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
