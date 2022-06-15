object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 299
  ClientWidth = 648
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
  object lbColunas: TLabel
    Left = 16
    Top = 16
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lbTabelas: TLabel
    Left = 199
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Tabela'
  end
  object Label3: TLabel
    Left = 382
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object lbSQLGerado: TLabel
    Left = 16
    Top = 147
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object mColunas: TMemo
    Left = 16
    Top = 35
    Width = 161
    Height = 89
    TabOrder = 0
  end
  object mTabelas: TMemo
    Left = 190
    Top = 35
    Width = 162
    Height = 89
    TabOrder = 1
  end
  object mCondicoes: TMemo
    Left = 366
    Top = 35
    Width = 163
    Height = 89
    TabOrder = 2
  end
  object mSQLGerado: TMemo
    Left = 16
    Top = 166
    Width = 611
    Height = 115
    TabOrder = 3
  end
  object btGerarSQL: TBitBtn
    Left = 535
    Top = 35
    Width = 92
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = btGerarSQLClick
  end
  object btLimpar: TBitBtn
    Left = 535
    Top = 99
    Width = 92
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = btLimparClick
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 552
    Top = 136
  end
end
