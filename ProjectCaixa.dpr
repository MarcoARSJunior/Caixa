program ProjectCaixa;

uses
  Vcl.Forms,
  uFormLogin in 'uFormLogin.pas' {FrmLogin},
  uFormPrincipal in 'uFormPrincipal.pas' {FrmPrincipal},
  uFormCaixa in 'uFormCaixa.pas' {FrmCaixa},
  uFrmServico in 'uFrmServico.pas' {FrmServico},
  uFrmCliente in 'uFrmCliente.pas' {FrmCliente},
  uFrmUsuario in 'uFrmUsuario.pas' {FrmUsuario},
  uFrmCrediario in 'uFrmCrediario.pas' {FrmCrediario},
  uFrmPagamento in 'uFrmPagamento.pas' {FrmPagamento},
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
