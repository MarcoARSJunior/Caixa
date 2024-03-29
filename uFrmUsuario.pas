unit uFrmUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  tmControl = class(TControl);

  TFrmUsuario = class(TForm)
    PageUsuario: TPageControl;
    TabCadUsuario: TTabSheet;
    TabConsUsuario: TTabSheet;
    gbUsuario: TGroupBox;
    edtNomeUsuario: TEdit;
    lblNomeUsuario: TLabel;
    edtLoginUsuario: TEdit;
    lblLoginUsuario: TLabel;
    edtSenha: TEdit;
    lblSenha: TLabel;
    edtPeriodo: TEdit;
    lblPeriodo: TLabel;
    gbPespUsuario: TGroupBox;
    edtPesqUsuario: TEdit;
    Button1: TButton;
    lblUsuario: TLabel;
    DBGrid1: TDBGrid;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnNovoUsuario: TButton;
    edtCodUsuario: TEdit;
    procedure PageUsuarioDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoUsuarioClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure edtPesqUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pesquisa();
    procedure Limparcampos();
  end;

var
  FrmUsuario: TFrmUsuario;

implementation

{$R *.dfm}

uses uDM;

procedure TFrmUsuario.btnNovoUsuarioClick(Sender: TObject);
begin
  PageUsuario.ActivePage := TabCadUsuario;
  Limparcampos;
  btnSalvar.Enabled := true;
  btnAlterar.Enabled := false;
  btnExcluir.Enabled := false;
end;

procedure TFrmUsuario.btnSalvarClick(Sender: TObject);
begin
  DM.TUsuario.Close;
  DM.TUsuario.SQL.Clear;
  DM.TUsuario.SQL.Add('INSERT INTO Usuario ');
  DM.TUsuario.SQL.Add('(NomeUsuario, Periodo, login, senha)');
  DM.TUsuario.SQL.Add('VALUES');
  DM.TUsuario.SQL.Add('(:nome, :Periodo, :login, :senha)');
  DM.TUsuario.Parameters.ParamByName('nome').Value := edtNomeUsuario.Text;
  DM.TUsuario.Parameters.ParamByName('Periodo').Value := edtPeriodo.Text;
  DM.TUsuario.Parameters.ParamByName('login').Value := edtLoginUsuario.Text;
  DM.TUsuario.Parameters.ParamByName('senha').Value := edtSenha.Text;
  // ShowMessage(DateToStr(DateTimePicker1.Date));

  try
    DM.TUsuario.ExecSQL;
    DM.TUsuario.Close;
    if DM.TUsuario.Eof then

    begin
      Application.MessageBox('Usuario Cadastrados', 'Infoma��o',
        MB_OK + MB_ICONQUESTION);
      DM.TUsuario.SQL.Clear;
      DM.TUsuario.SQL.Add('SELECT * FROM Usuario');
      DM.TUsuario.Open;
      DM.TUsuario.Cancel;
      DM.dsUsuario.DataSet := DM.TUsuario;
      //PageUsuario.ActivePage := TabConsUsuario;
      Limparcampos;

    end;
  except
    on E: Exception do
    begin
      Application.MessageBox('Erro ao Salvar', 'Infoma��o',
        MB_OK + MB_ICONQUESTION);
      exit;
    end;

  end;
end;

procedure TFrmUsuario.Button1Click(Sender: TObject);
begin
  pesquisa;
end;

procedure TFrmUsuario.DBGrid1CellClick(Column: TColumn);
begin
  PageUsuario.ActivePage := TabCadUsuario;
  btnAlterar.Enabled := true;
  btnSalvar.Enabled := false;
  edtCodUsuario.Text := DM.TUsuario.FieldByName('idUsuario').AsString;
  edtLoginUsuario.Text := DM.TUsuario.FieldByName('login').AsString;
  edtSenha.Text := DM.TUsuario.FieldByName('senha').AsString;
  edtNomeUsuario.Text := DM.TUsuario.FieldByName('NomeUsuario').AsString;
  edtPeriodo.Text := DM.TUsuario.FieldByName('Periodo').AsString;
end;

procedure TFrmUsuario.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  nLinha: Integer;
begin
  // obt�m o n�mero do registro (linha)
  nLinha := DBGrid1.DataSource.DataSet.RecNo;

  // verifica se o n�mero da linha � par ou �mpar, aplicando as cores
  if Odd(nLinha) then
    DBGrid1.Canvas.Brush.Color := clMenu
  else
    DBGrid1.Canvas.Brush.Color := clMoneyGreen;

  // pinta a linha
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmUsuario.edtPesqUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    pesquisa;
end;

procedure TFrmUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.TUsuario.close;
end;

procedure TFrmUsuario.FormCreate(Sender: TObject);
begin
  DM.TUsuario.Active := True;

  if PageUsuario.ActivePage = TabCadUsuario then

    btnAlterar.Enabled := false;

  PageUsuario.OwnerDraw := true;
  tmControl(PageUsuario).Color := clGradientInactiveCaption;
end;

procedure TFrmUsuario.Limparcampos;
begin
  edtNomeUsuario.Clear;
  edtLoginUsuario.Clear;
  edtSenha.Clear;
  edtPeriodo.Clear;
end;

procedure TFrmUsuario.PageUsuarioDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  Control.Canvas.FillRect(Rect);

  PageUsuario.Canvas.font.Color := clBlack; // cor da aba do tabsheet

  Control.Canvas.TextOut(Rect.left + 2, Rect.top + 2,
    TTabSheet(PageUsuario.Pages[TabIndex]).Caption);

  tmControl(PageUsuario.Pages[TabIndex]).Color := clGradientInactiveCaption;
end;

procedure TFrmUsuario.pesquisa;
const
  PesqVazio = 'SELECT * FROM Usuario';

var
  PesqEdit: String;

begin
  PesqEdit := 'SELECT * FROM Usuario WHERE login like ' +
    QuotedStr(edtPesqUsuario.Text + '%');
  DM.TUsuario.Active := false;

  if edtPesqUsuario.Text = '' then
  begin
    DM.TUsuario.SQL.Text := PesqVazio;
    DM.TUsuario.Active := true;
  end
  else
  begin
    DM.TUsuario.SQL.Text := PesqEdit;
    DM.TUsuario.Active := true;
  end;

end;

end.
