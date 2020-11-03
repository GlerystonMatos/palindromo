program Palindromo;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPalindromo},
  uUtil in 'uUtil.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPalindromo, frmPalindromo);
  Application.Run;
end.
