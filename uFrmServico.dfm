﻿object FrmServico: TFrmServico
  Left = 0
  Top = 0
  Caption = 'Servi'#231'os'
  ClientHeight = 400
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
  object PageServico: TPageControl
    Left = 0
    Top = 0
    Width = 650
    Height = 400
    ActivePage = TabCadServico
    Align = alClient
    TabOrder = 0
    OnDrawTab = PageServicoDrawTab
    ExplicitLeft = 8
    object TabCadServico: TTabSheet
      Caption = 'Cadastro Servi'#231'o'
      object GbServico: TGroupBox
        Left = 22
        Top = 15
        Width = 600
        Height = 282
        Caption = 'Servi'#231'o'
        TabOrder = 0
        object lblIdServico: TLabel
          Left = 40
          Top = 48
          Width = 61
          Height = 13
          Caption = 'Cod. Servi'#231'o'
        end
        object lblValorServico: TLabel
          Left = 40
          Top = 160
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object lblServiço: TLabel
          Left = 40
          Top = 104
          Width = 35
          Height = 13
          Caption = 'Servi'#231'o'
        end
        object edtIdServico: TEdit
          Left = 120
          Top = 45
          Width = 183
          Height = 21
          TabOrder = 0
        end
        object edtNomeServico: TEdit
          Left = 120
          Top = 101
          Width = 183
          Height = 21
          TabOrder = 1
        end
        object edtValor: TEdit
          Left = 120
          Top = 157
          Width = 183
          Height = 21
          TabOrder = 2
        end
      end
      object btnSalvar: TButton
        Left = 112
        Top = 320
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
      end
      object btnAlterar: TButton
        Left = 224
        Top = 320
        Width = 75
        Height = 25
        Caption = 'Alterar'
        TabOrder = 2
      end
      object btnExcluir: TButton
        Left = 424
        Top = 320
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 3
      end
      object btnCancelar: TButton
        Left = 328
        Top = 320
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 4
      end
    end
    object TabConServico: TTabSheet
      Caption = 'Consulta Servi'#231'o'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 37
        Top = 112
        Width = 550
        Height = 200
        Align = alCustom
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object gbPesqServico: TGroupBox
        Left = 37
        Top = 19
        Width = 550
        Height = 70
        Caption = 'Pesquisa'
        TabOrder = 1
        object ComboBox1: TComboBox
          Left = 12
          Top = 24
          Width = 93
          Height = 21
          TabOrder = 0
          Items.Strings = (
            'Cod. Servi'#231'os'
            'Descri'#231#227'o')
        end
        object edtPesqServico: TEdit
          Left = 120
          Top = 24
          Width = 300
          Height = 21
          TabOrder = 1
        end
        object btnPesquisa: TButton
          Left = 440
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 2
        end
      end
      object btnNovoServico: TButton
        Left = 477
        Top = 318
        Width = 100
        Height = 51
        Caption = 'Novo Servi'#231'o'
        TabOrder = 2
      end
    end
  end
end
