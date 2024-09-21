void main() {
  List<Praia> pra = [
  Praia(
      nomeInicial: 'Praia Mongaguá',
      descInicial: 'Essa charmosa praia fica localizada próxima ao centro da cidade e do Centro Cultural da cidade de Mongaguá, litoral de São Paulo, é um verdadeiro espetáculo de fauna e flora pra quem deseja viajar para uma boa praia!',
      imgInicial: 'assets/img/mongagua.png',
      ),
  Praia(
      nomeInicial: 'Praia Prumirim',
      descInicial: 'Um dos lugares mais bonitos e charmosos de Ubatuba é a Praia do Prumirim. Isto porque a natureza local é considerada muito rica, com areias brancas e um mar agradável, além da grande infraestrutura. Na verdade, é um dos principais acessos à ilha de Prumirim. Confira as ótimas dicas para fazer esta visita imperdível com sua família.',
      imgInicial: 'assets/img/'),
  Praia(nomeInicial: 'Praia Vermelha',
      descInicial: 'Essa charmosa praia fica localizada próxima ao centro da cidade e do Centro Cultural da cidade de Mongaguá, litoral de São Paulo, é um verdadeiro espetáculo de fauna e flora pra quem deseja viajar para uma boa praia!',
      imgInicial: 'image')];
}

class Praia {
  late String nome;
  late String desc;
  late String img;

  Praia(
      {required String nomeInicial,
      required String descInicial,
      required String imgInicial}) {
    nome = nomeInicial;
    desc = descInicial;
    img = imgInicial;
  }
}
