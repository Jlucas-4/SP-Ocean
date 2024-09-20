
class Atividades {
  late String icon;
  late String nome;
  late String desc;
  late String img;

  Atividades(
      {required String nomeInicial,
      required String descInicial,
      required String imgInicial, 
      required String iconInicial}) {
    nome = nomeInicial;
    desc = descInicial;
    img = imgInicial;
    icon = iconInicial;
  }
}
