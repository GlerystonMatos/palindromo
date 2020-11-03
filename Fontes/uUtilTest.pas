unit uUtilTest;

interface

uses
  DUnitX.TestFramework, uUtil;

type
  [TestFixture]
  TUtilTest = class(TObject)
  public
    [Test]
    [TestCase('Test01','afã')]
    [TestCase('Test02','aia')]
    [TestCase('Test03','aibofobia')]
    [TestCase('Test04','ala')]
    [TestCase('Test05','ama')]
    [TestCase('Test06','anã')]
    [TestCase('Test07','anilina')]
    [TestCase('Test08','ata')]
    [TestCase('Test09','arara')]
    [TestCase('Test10','asa')]
    [TestCase('Test11','ele')]
    [TestCase('Test12','esse')]
    [TestCase('Test13','mamam')]
    [TestCase('Test14','matam')]
    [TestCase('Test15','metem')]
    [TestCase('Test16','mirim')]
    [TestCase('Test17','oco')]
    [TestCase('Test18','omissíssimo')]
    [TestCase('Test19','osso')]
    [TestCase('Test20','ovo')]
    [TestCase('Test21','radar')]
    [TestCase('Test22','raiar')]
    [TestCase('Test23','ralar')]
    [TestCase('Test24','rapar')]
    [TestCase('Test25','rasar')]
    [TestCase('Test26','reger')]
    [TestCase('Test27','reler')]
    [TestCase('Test28','reter')]
    [TestCase('Test29','rever')]
    [TestCase('Test30','reviver')]
    [TestCase('Test31','rir')]
    [TestCase('Test32','sacas')]
    [TestCase('Test33','saias')]
    [TestCase('Test34','salas')]
    [TestCase('Test35','socos')]
    [TestCase('Test36','sopapos')]
    [TestCase('Test37','sós')]
    procedure VerificaPalindromoPalavraTest(const texto: string);
    [TestCase('Test01','A base do teto desaba.')]
    [TestCase('Test02','A cara rajada da jararaca.')]
    [TestCase('Test03','Acuda cadela da Leda caduca.')]
    [TestCase('Test04','A dama admirou o rim da amada.')]
    [TestCase('Test05','A Daniela ama a lei? Nada!')]
    [TestCase('Test06','Adias a data da saída.')]
    [TestCase('Test07','A diva em Argel alegra-me a vida.')]
    [TestCase('Test08','A droga do dote é todo da gorda.')]
    [TestCase('Test09','A gorda ama a droga.')]
    [TestCase('Test10','A grama é amarga.')]
    [TestCase('Test11','Aí Lima falou: "Olá família!".')]
    [TestCase('Test12','Ajudem Edu já!')]
    [TestCase('Test13','A lupa pula.')]
    [TestCase('Test14','A mãe te ama.')]
    [TestCase('Test15','A mala nada na lama.')]
    [TestCase('Test16','Ame o poema.')]
    [TestCase('Test17','A miss é péssima!')]
    [TestCase('Test18','Amo Omã. Se Roma me tem amores amo Omã!')]
    [TestCase('Test19','Anotaram a data da maratona.')]
    [TestCase('Test20','A pateta ama até tapa.')]
    [TestCase('Test21','Após a sopa.')]
    [TestCase('Test22','Arara rara.')]
    [TestCase('Test23','À Rita sátira!')]
    [TestCase('Test24','Zé de Lima Rua Laura mil e dez.')]
    [TestCase('Test25','A rua Laura.')]
    [TestCase('Test26','Assim a aia ia à missa.')]
    [TestCase('Test27','Ato idiota.')]
    [TestCase('Test28','A torre da derrota.')]
    [TestCase('Test29','E até o Papa poeta é.')]
    [TestCase('Test30','Irene ri.')]
    [TestCase('Test31','Laço bacana para panaca boçal.')]
    [TestCase('Test32','Lá vou eu em meu eu oval.')]
    [TestCase('Test33','Luza Rocelina a namorada do Manuel leu na moda da romana: "anil é cor azul".')]
    [TestCase('Test34','Luz azul.')]
    [TestCase('Test35','Mega bobagem.')]
    [TestCase('Test36','Me vê se a panela da moça é de aço Madalena Paes e vem.')]
    [TestCase('Test37','Missa é assim.')]
    [TestCase('Test38','O céu sueco.')]
    [TestCase('Test39','O galo ama o lago.')]
    [TestCase('Test40','Olá galo!')]
    [TestCase('Test41','Olé! Maracujá caju caramelo.')]
    [TestCase('Test42','O lobo ama o bolo.')]
    [TestCase('Test43','O romano acata amores a damas amadas e Roma ataca o namoro.')]
    [TestCase('Test44','O teu dueto.')]
    [TestCase('Test45','Ótimo só eu que os omito.')]
    [TestCase('Test46','Oto come mocotó.')]
    [TestCase('Test47','O trote torto.')]
    [TestCase('Test48','Rir o breve verbo rir.')]
    [TestCase('Test49','Roma é amor.')]
    [TestCase('Test50','Roma me tem amor.')]
    [TestCase('Test51','Saíram o tio e oito Marias.')]
    [TestCase('Test52','Seco de raiva coloco no colo caviar e doces.')]
    [TestCase('Test53','Socorram-me subi no ônibus em Marrocos.')]
    procedure VerificaPalindromoFraseTest(const texto: string);
  end;

implementation

procedure TUtilTest.VerificaPalindromoPalavraTest(const texto: string);
begin
  Assert.IsTrue(VerificaPalindromo(texto));
end;

procedure TUtilTest.VerificaPalindromoFraseTest(const texto: string);
begin
  Assert.IsTrue(VerificaPalindromo(texto));
end;

initialization
  TDUnitX.RegisterTestFixture(TUtilTest);

end.
