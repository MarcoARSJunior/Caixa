unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    bmCadastro_Cliente: TImage;
    bmFluxoCaixa: TImage;
    bmCaixa: TImage;
    bmCadastro_Usuario: TImage;
    bmCadastro_Serviços: TImage;
    Panel2: TPanel;
    Image1: TImage;
    Image7: TImage;
    BalloonHint1: TBalloonHint;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure bmCaixaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bmCadastro_ClienteClick(Sender: TObject);
    procedure bmCadastro_ServiçosClick(Sender: TObject);
    procedure bmCadastro_UsuarioClick(Sender: TObject);
    procedure bmFluxoCaixaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uFormCaixa, uFrmCliente, uFrmCrediario, uFrmPagamento, uFrmServico,
  uFrmUsuario, uFormLogin;

procedure TFrmPrincipal.bmCadastro_ClienteClick(Sender: TObject);
begin
  FrmCliente := TFrmCliente.Create(Self);
  FrmCliente.ShowModal
end;

procedure TFrmPrincipal.bmCadastro_ServiçosClick(Sender: TObject);
begin
  FrmServico := TFrmServico.Create(Self);
  FrmServico.ShowModal;
end;

procedure TFrmPrincipal.bmCadastro_UsuarioClick(Sender: TObject);
begin
  FrmUsuario := TFrmUsuario.Create(Self);
  FrmUsuario.ShowModal;
end;

procedure TFrmPrincipal.bmCaixaClick(Sender: TObject);
begin
  FrmCaixa := TFrmCaixa.Create(Self);
  FrmCaixa.ShowModal;
end;

procedure TFrmPrincipal.bmFluxoCaixaClick(Sender: TObject);
begin
  FrmPagamento := TFrmPagamento.Create(Self);
  FrmPagamento.ShowModal;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja Realmente Sair', 'Informação',
    MB_YESNO + MB_ICONQUESTION) = mrYES then
  begin
    Application.Terminate;
  end
  else
    Abort;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FrmLogin :=TFrmLogin.Create(Self);
  FrmLogin.ShowModal;
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
