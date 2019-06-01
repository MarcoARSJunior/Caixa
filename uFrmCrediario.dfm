object FrmCrediario: TFrmCrediario
  Left = 0
  Top = 0
  Caption = 'Credi'#225'rio'
  ClientHeight = 350
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCrediario: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 350
    Align = alClient
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 120
    ExplicitTop = 176
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lblNParcelas: TLabel
      Left = 32
      Top = 266
      Width = 80
      Height = 13
      Caption = 'Numero Parcelas'
    end
    object lblPedido: TLabel
      Left = 32
      Top = 18
      Width = 58
      Height = 13
      Caption = 'Cod. Pedido'
    end
    object dbPedParcela: TDBGrid
      Left = 32
      Top = 78
      Width = 321
      Height = 155
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object edtNParcelar: TEdit
      Left = 32
      Top = 285
      Width = 97
      Height = 49
      TabOrder = 1
    end
    object btnReceber: TButton
      Left = 248
      Top = 285
      Width = 105
      Height = 51
      Caption = 'Receber'
      TabOrder = 2
    end
    object edtCodPedido: TEdit
      Left = 32
      Top = 37
      Width = 58
      Height = 21
      TabOrder = 3
    end
  end
end
