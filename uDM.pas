unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    DBCAIXA: TADOConnection;
    TUsuario: TADOQuery;
    dsUsuario: TDataSource;
    TUsuarioIdUsuario: TAutoIncField;
    TUsuarioNomeUsuario: TStringField;
    TUsuarioPeriodo: TStringField;
    TUsuariosenha: TStringField;
    TUsuariologin: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
