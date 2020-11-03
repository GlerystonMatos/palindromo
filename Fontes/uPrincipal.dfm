object frmPalindromo: TfrmPalindromo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pal'#237'ndromo'
  ClientHeight = 67
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbPalavra: TLabel
    Left = 10
    Top = 11
    Width = 40
    Height = 13
    Caption = 'Palavra:'
  end
  object edtPalavra: TEdit
    Left = 56
    Top = 8
    Width = 315
    Height = 21
    TabOrder = 0
  end
  object btnVerificar: TBitBtn
    Left = 56
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificarClick
  end
end
