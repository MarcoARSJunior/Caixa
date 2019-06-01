object FrmCliente: TFrmCliente
  Left = 0
  Top = 0
  Caption = 'Cliente'
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
  object PageCliente: TPageControl
    Left = 0
    Top = 0
    Width = 650
    Height = 400
    ActivePage = TabConsCliente
    Align = alClient
    TabOrder = 0
    OnDrawTab = PageClienteDrawTab
    object TabCadCliente: TTabSheet
      Caption = 'Cadastro Cliente'
      ExplicitLeft = 8
      ExplicitTop = 28
      object gbCliente: TGroupBox
        Left = 18
        Top = 11
        Width = 600
        Height = 300
        Caption = 'Cliente'
        TabOrder = 0
        object lblCodCliente: TLabel
          Left = 40
          Top = 29
          Width = 59
          Height = 13
          Caption = 'Cod. Cliente'
        end
        object lblNomeCliente: TLabel
          Left = 40
          Top = 59
          Width = 63
          Height = 13
          Caption = 'Nome Cliente'
        end
        object Label4: TLabel
          Left = 40
          Top = 86
          Width = 58
          Height = 13
          Caption = 'Doc. Cliente'
        end
        object lblTelefone: TLabel
          Left = 40
          Top = 170
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object lblFuncao: TLabel
          Left = 40
          Top = 113
          Width = 35
          Height = 13
          Caption = 'Fun'#231#227'o'
        end
        object Label7: TLabel
          Left = 40
          Top = 143
          Width = 24
          Height = 13
          Caption = 'Email'
        end
        object edtCodCliente: TEdit
          Left = 120
          Top = 29
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object edtNomeCliente: TEdit
          Left = 120
          Top = 59
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object edtDocCliente: TEdit
          Left = 120
          Top = 86
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object edtFuncao: TEdit
          Left = 120
          Top = 113
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object edtTelefone: TEdit
          Left = 120
          Top = 170
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object edtEmail: TEdit
          Left = 120
          Top = 143
          Width = 121
          Height = 21
          TabOrder = 5
        end
        object cbAPM: TCheckBox
          Left = 120
          Top = 201
          Width = 97
          Height = 17
          Caption = 'APM'
          TabOrder = 6
        end
      end
      object btnSalvar: TButton
        Left = 80
        Top = 328
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
      end
      object btnCancelar: TButton
        Left = 184
        Top = 328
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
      end
      object btnAlterar: TButton
        Left = 296
        Top = 328
        Width = 75
        Height = 25
        Caption = 'Alterar'
        TabOrder = 3
      end
      object btnExcluir: TButton
        Left = 407
        Top = 328
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 4
      end
    end
    object TabConsCliente: TTabSheet
      Caption = 'Consulta Cliente'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 37
        Top = 112
        Width = 550
        Height = 200
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object GbConsCliente: TGroupBox
        Left = 37
        Top = 19
        Width = 550
        Height = 70
        Caption = 'Pesquisa'
        TabOrder = 1
        object Label1: TLabel
          Left = 30
          Top = 24
          Width = 33
          Height = 13
          Caption = 'Cliente'
        end
        object edtPesqCliente: TEdit
          Left = 100
          Top = 24
          Width = 300
          Height = 21
          TabOrder = 0
        end
        object Button1: TButton
          Left = 440
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 1
        end
      end
      object btnNovoCliente: TButton
        Left = 477
        Top = 318
        Width = 110
        Height = 51
        Caption = 'Novo Cliente'
        TabOrder = 2
      end
    end
  end
end
