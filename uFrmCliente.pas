unit uFrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  tmControl = class(TControl);

  TFrmCliente = class(TForm)
    PageCliente: TPageControl;
    TabCadCliente: TTabSheet;
    TabConsCliente: TTabSheet;
    DBGrid1: TDBGrid;
    GbConsCliente: TGroupBox;
    edtPesqCliente: TEdit;
    Button1: TButton;
    Label1: TLabel;
    edtCodCliente: TEdit;
    lblCodCliente: TLabel;
    gbCliente: TGroupBox;
    edtNomeCliente: TEdit;
    lblNomeCliente: TLabel;
    edtDocCliente: TEdit;
    Label4: TLabel;
    lblTelefone: TLabel;
    lblFuncao: TLabel;
    Label7: TLabel;
    edtFuncao: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    cbAPM: TCheckBox;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnNovoCliente: TButton;
    procedure FormCreate(Sender: TObject);
    procedure PageClienteDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

procedure TFrmCliente.FormCreate(Sender: TObject);
begin
  PageCliente.OwnerDraw := true;
  tmControl(PageCliente).Color := clGradientInactiveCaption;
end;

procedure TFrmCliente.PageClienteDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  Control.Canvas.FillRect(Rect);

  PageCliente.Canvas.font.Color := clBlack; // cor da aba do tabsheet

  Control.Canvas.TextOut(Rect.left + 2, Rect.top + 2,
    TTabSheet(PageCliente.Pages[TabIndex]).Caption);

  tmControl(PageCliente.Pages[TabIndex]).Color := clGradientInactiveCaption;
end;

end.
