unit uFormLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    edtLogin: TEdit;
    edtsenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    btnLogin: TButton;
    btnCancelar: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure edtsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses uDM, uFormPrincipal;

procedure TFrmLogin.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.btnLoginClick(Sender: TObject);
begin
  with DM.TUsuario do
  begin
    DM.TUsuario.Close;
    DM.TUsuario.SQL.Clear;
    DM.TUsuario.SQL.Add('Select * from Usuario');
    DM.TUsuario.SQL.Add('where login = :login AND senha = :senha');
    DM.TUsuario.Parameters.ParamByName('login').Value := edtLogin.Text;
    DM.TUsuario.Parameters.ParamByName('senha').Value := edtsenha.Text;
    DM.TUsuario.Open;
    if RecordCount > 0 then
    begin
      FrmLogin.Close;
      {FrmLogin.Hide;
      FrmPrincipal := TFrmPrincipal.Create(self);
      FrmPrincipal.ShowModal}
    end
    else
    begin
      ShowMessage('Usuario ou Senha Invalidos');

    end;
  end;
end;

procedure TFrmLogin.edtsenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnLogin.Click;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   with DM.TUsuario do
  begin
    DM.TUsuario.Close;
    DM.TUsuario.SQL.Clear;
    DM.TUsuario.SQL.Add('Select * from Usuario');
    DM.TUsuario.SQL.Add('where login = :login AND senha = :senha');
    DM.TUsuario.Parameters.ParamByName('login').Value := edtLogin.Text;
    DM.TUsuario.Parameters.ParamByName('senha').Value := edtsenha.Text;
    DM.TUsuario.Open;
    if RecordCount > 0 then
    begin
      ShowMessage('Bem Vindo');
      FrmLogin.Close;
    end
    else
    begin
      ShowMessage('Usuario ou Senha Invalidos');
      Action := caNone;
    end;
  end;
end;

end.
