unit uFrmCrediario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmCrediario = class(TForm)
    pnlCrediario: TPanel;
    dbPedParcela: TDBGrid;
    edtNParcelar: TEdit;
    lblNParcelas: TLabel;
    btnReceber: TButton;
    lblPedido: TLabel;
    edtCodPedido: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCrediario: TFrmCrediario;

implementation

{$R *.dfm}

end.
