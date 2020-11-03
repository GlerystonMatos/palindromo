unit uUtil;

interface

uses
  System.SysUtils;

function VerificaPalindromo(const texto: string): Boolean;
function TrocaCaracterEspecial(texto: string; eliminarCaracteresExtras: boolean): string;

implementation

function VerificaPalindromo(const texto: string): Boolean;
var
  contador: Integer;
  original: string;
  inverso: string;
begin
  original := UpperCase(TrocaCaracterEspecial(Trim(texto), True));
  original := StringReplace(original, ' ', '', [rfReplaceAll, rfIgnoreCase]);

  for contador := 0 to Pred(Length(original)) do
    inverso := inverso + original[Length(original) - contador];

  Result := (original = inverso);
end;

function TrocaCaracterEspecial(texto: string; eliminarCaracteresExtras: boolean): string;
const
  caracteresEspeciais: array[1..39] of string = ('á', 'à', 'ã', 'â', 'ä', 'Á',
    'À', 'Ã', 'Â', 'Ä', 'é', 'è', 'ê', 'É', 'È', 'í', 'ì', 'Í', 'Ì', 'ó', 'ò',
    'ö', 'õ', 'ô', 'Ó', 'Ò', 'Ö', 'Õ', 'Ô', 'ú', 'ù', 'ü', 'Ú', 'Ù', 'Ü', 'ç',
    'Ç', 'ñ', 'Ñ');
  caracteresTrocar: array[1..39] of string = ('a', 'a', 'a', 'a', 'a', 'A', 'A',
    'A', 'A', 'A', 'e', 'e', 'e', 'E', 'E', 'i', 'i', 'I', 'I', 'o', 'o', 'o',
    'o', 'o', 'O', 'O', 'O', 'O', 'O', 'u', 'u', 'u', 'u', 'u', 'u', 'c', 'C',
    'n', 'N');
  caracteresExtras: array[1..53] of string = ('<', '>', '!', '@', '#', '$', '%',
    '¨', '&', '*', '(', ')', '_', '+', '=', '{', '}', '[', ']', '?', ';', ':',
    ',', '|', '*', '"', '~', '^', '´', '`', '¨', 'æ', 'Æ', 'ø', '£', 'Ø', 'ƒ',
    'ª', 'º', '¿', '®', '½', '¼', 'ß', 'µ', 'þ', 'ý', 'Ý', '.', '-', '"', '“',
    '”');
var
  resultado: string;
  contador: Integer;
begin
  resultado := texto;
  for contador := 1 to 39 do
    resultado := StringReplace(resultado, caracteresEspeciais[contador], caracteresTrocar[contador], [rfreplaceall]);
  if (eliminarCaracteresExtras) then
    for contador := 1 to 53 do
      resultado := StringReplace(resultado, caracteresExtras[contador], '', [rfreplaceall]);
  Result := resultado;
end;

end.
