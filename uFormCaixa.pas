unit uFormCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Grids, Vcl.DBGrids;

type
  tmControl = class(TControl);

  TFrmCaixa = class(TForm)
    PageCaixa: TPageControl;
    TabCaixa: TTabSheet;
    TabConsulta: TTabSheet;
    lblServiços: TLabel;
    lblCliente: TLabel;
    edtServico: TEdit;
    edtCliente: TEdit;
    edtValorUnit: TEdit;
    edtQuantidade: TEdit;
    edtAPM: TEdit;
    lblValorUnit: TLabel;
    lblAPM: TLabel;
    lblQuantidade: TLabel;
    dbgPedidoPrincipal: TDBGrid;
    dbgConsultaCaixa: TDBGrid;
    btnPesquisa: TButton;
    ComboBox1: TComboBox;
    gpPesquisaCaixa: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    lblValorTotal: TLabel;
    edtValorTotal: TEdit;
    btnDinheiro: TButton;
    btnInserir: TButton;
    edtTotal: TEdit;
    Label1: TLabel;
    btnCrediario: TButton;
    Label3: TLabel;
    Label4: TLabel;
    edtSubTotal: TEdit;
    edtDesconto: TEdit;
    btnCancelar: TButton;
    btnExcluir: TButton;
    btnNovoPedido: TButton;
    btnAlterar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure PageCaixaDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixa: TFrmCaixa;

implementation

{$R *.dfm}

procedure TFrmCaixa.FormCreate(Sender: TObject);
begin
  PageCaixa.OwnerDraw := true;
  tmControl(PageCaixa).Color := clGradientInactiveCaption;
end;

procedure TFrmCaixa.PageCaixaDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  Control.Canvas.FillRect(Rect);

  PageCaixa.Canvas.font.Color := clBlack; // cor da aba do tabsheet

  Control.Canvas.TextOut(Rect.left + 2, Rect.top + 2,
    TTabSheet(PageCaixa.Pages[TabIndex]).Caption);

  tmControl(PageCaixa.Pages[TabIndex]).Color := clGradientInactiveCaption;
end;

end.
