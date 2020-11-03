unit uPrincipal;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, uUtil;

type
  TfrmPalindromo = class(TForm)
    lbPalavra: TLabel;
    edtPalavra: TEdit;
    btnVerificar: TBitBtn;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPalindromo: TfrmPalindromo;

implementation

{$R *.dfm}

procedure TfrmPalindromo.btnVerificarClick(Sender: TObject);
begin
  if (VerificaPalindromo(edtPalavra.Text)) then
    ShowMessage('Verdadeiro')
  else
    ShowMessage('Falso');
end;

end.
