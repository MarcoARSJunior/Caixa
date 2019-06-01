object FrmPagamento: TFrmPagamento
  Left = 0
  Top = 0
  Caption = 'Pagamento'
  ClientHeight = 582
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PgPagamento: TPageControl
    Left = 0
    Top = 0
    Width = 650
    Height = 582
    ActivePage = TabPagamento
    Align = alClient
    TabOrder = 0
    OnDrawTab = PgPagamentoDrawTab
    ExplicitHeight = 589
    object TabPagamento: TTabSheet
      Caption = 'Pagamento'
      ExplicitHeight = 561
      object Label1: TLabel
        Left = 346
        Top = 407
        Width = 42
        Height = 13
        Caption = 'SubTotal'
      end
      object Label3: TLabel
        Left = 346
        Top = 442
        Width = 42
        Height = 13
        Caption = 'SubTotal'
      end
      object GroupBox2: TGroupBox
        Left = 18
        Top = 19
        Width = 594
        Height = 78
        Caption = 'Cliente'
        TabOrder = 0
        object lblCodigo: TLabel
          Left = 10
          Top = 17
          Width = 19
          Height = 13
          Caption = 'Cod'
        end
        object Label2: TLabel
          Left = 90
          Top = 17
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object lblDocumento: TLabel
          Left = 410
          Top = 17
          Width = 54
          Height = 13
          Caption = 'Documento'
        end
        object Edit2: TEdit
          Left = 10
          Top = 36
          Width = 55
          Height = 21
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 90
          Top = 36
          Width = 279
          Height = 21
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 410
          Top = 36
          Width = 135
          Height = 21
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 115
        Width = 594
        Height = 270
        Caption = 'Contas'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 590
          Height = 253
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object btnReceber: TButton
        Left = 379
        Top = 488
        Width = 75
        Height = 25
        Caption = 'Receber'
        TabOrder = 2
      end
      object btnCancelar: TButton
        Left = 148
        Top = 488
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
      end
      object btnExcluir: TButton
        Left = 258
        Top = 488
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 4
      end
      object Edit5: TEdit
        Left = 426
        Top = 404
        Width = 135
        Height = 21
        TabOrder = 5
      end
      object Edit6: TEdit
        Left = 426
        Top = 439
        Width = 135
        Height = 21
        TabOrder = 6
      end
    end
    object TabConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitHeight = 561
      object gbPesquisa: TGroupBox
        Left = 19
        Top = 11
        Width = 165
        Height = 46
        Caption = 'Pesquisa'
        TabOrder = 0
        object ComboBox1: TComboBox
          Left = 8
          Top = 16
          Width = 145
          Height = 21
          TabOrder = 0
          Items.Strings = (
            'Codigo Cliente'
            'Nome')
        end
      end
      object Edit1: TEdit
        Left = 208
        Top = 27
        Width = 305
        Height = 21
        TabOrder = 1
      end
      object btnBuscar: TButton
        Left = 544
        Top = 25
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 2
      end
      object gbCliente: TGroupBox
        Left = 19
        Top = 72
        Width = 600
        Height = 377
        Caption = 'Clientes'
        TabOrder = 3
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 596
          Height = 360
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
  end
end
