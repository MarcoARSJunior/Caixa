unit uFrmPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  tmControl = class(TControl);

  TFrmPagamento = class(TForm)
    PgPagamento: TPageControl;
    TabPagamento: TTabSheet;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    lblCodigo: TLabel;
    Label2: TLabel;
    lblDocumento: TLabel;
    DBGrid1: TDBGrid;
    btnReceber: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    TabConsulta: TTabSheet;
    gbPesquisa: TGroupBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    btnBuscar: TButton;
    gbCliente: TGroupBox;
    DBGrid2: TDBGrid;
    Edit5: TEdit;
    Label1: TLabel;
    Edit6: TEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure PgPagamentoDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagamento: TFrmPagamento;

implementation

{$R *.dfm}

procedure TFrmPagamento.FormCreate(Sender: TObject);
begin
  PgPagamento.OwnerDraw := true;
  tmControl(PgPagamento).Color := clGradientInactiveCaption;
end;

procedure TFrmPagamento.PgPagamentoDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  Control.Canvas.FillRect(Rect);

  PgPagamento.Canvas.font.Color := clBlack; // cor da aba do tabsheet

  Control.Canvas.TextOut(Rect.left + 2, Rect.top + 2,
    TTabSheet(PgPagamento.Pages[TabIndex]).Caption);

  tmControl(PgPagamento.Pages[TabIndex]).Color := clGradientInactiveCaption;
end;

end.
