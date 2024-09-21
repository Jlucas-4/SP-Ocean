import 'package:flutter/material.dart'; // For PNG icons (if using Image.asset)
import 'package:flutter_application_sp470/atividades.dart';
import 'package:flutter_application_sp470/publicacoes.dart';
import 'Praia.dart';
import 'Atividade.dart';
void main() {
  runApp(const SPOceanApp());
}

class SPOceanApp extends StatelessWidget {
  const SPOceanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VermelhaPage(),
    );
  }
}

class VermelhaPage extends StatefulWidget {
  const VermelhaPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SPOceanHomePageState createState() => _SPOceanHomePageState();
}

class _SPOceanHomePageState extends State<VermelhaPage> {
  int _selectedIndex = 0;
    List<Praia> pra = [
  Praia(
      nomeInicial: 'Praia Mongaguá',
      descInicial: 'Essa charmosa praia fica localizada próxima ao centro da cidade e do Centro Cultural da cidade de Mongaguá, litoral de São Paulo, é um verdadeiro espetáculo de fauna e flora pra quem deseja viajar para uma boa praia!',
      imgInicial: 'assets/img/mongagua.png'),
  Praia(
      nomeInicial: 'Praia Prumirim',
      descInicial: 'Um dos lugares mais bonitos e charmosos de Ubatuba é a Praia do Prumirim. Isto porque a natureza local é considerada muito rica, com areias brancas e um mar agradável, além da grande infraestrutura. Na verdade, é um dos principais acessos à ilha de Prumirim. Confira as ótimas dicas para fazer esta visita imperdível com sua família.',
      imgInicial: 'assets/img/vermelha.jpg'),
  Praia(
      nomeInicial: 'Praia Vermelha',
      descInicial: 'A Praia Vermelha, localizada no Rio de Janeiro, é um refúgio tranquilo com sua areia dourada e águas cristalinas, oferecendo uma vista deslumbrante do Pão de Açúcar. Este local é ideal para quem busca um ambiente mais sossegado, longe das multidões. Com seu cenário deslumbrante e atmosfera relaxante, é um destino perfeito para relaxar e apreciar a beleza natural da cidade.',
      imgInicial: 'assets/img/vermelha.jpg')];

      List<Atividades> atv = [
  Atividades( nomeInicial: 'Snorkel', descInicial: "Mergulho com snorkel é nadar perto da superfície da água usando um tubo chamado snorkel para respirar. Você pode ver embaixo d'água sem precisar segurar a respiração.", imgInicial: 'image', iconInicial: 'assets/img/snor.png'),
  Atividades( nomeInicial: 'Surf', descInicial: 'sla', imgInicial: 'assets/img/surfI.jpg', iconInicial: 'assets/img/surf.png'),
  Atividades( nomeInicial: 'Asa-Delta', descInicial: 'sla', imgInicial: 'image', iconInicial: 'assets/img/asa.png'),
  Atividades( nomeInicial: 'Rapel', descInicial: 'Fazer rapel no litoral de São Paulo é uma aventura desafiadora, com paredões que oferecem vistas deslumbrantes do oceano. Locais como a Serra do Mar e a região de Ubatuba combinam a emoção da descida com a beleza natural da mata atlântica e praias. É uma experiência inesquecível para quem busca adrenalina em meio à natureza.', imgInicial: 'image', iconInicial: 'assets/img/rapel.png'),
  Atividades( nomeInicial: 'Velejando', descInicial: 'Velejar no litoral de São Paulo é uma experiência única, com ventos constantes e belas paisagens ao longo da costa. As águas claras de destinos como Ilhabela e Ubatuba oferecem um cenário perfeito para quem deseja explorar a natureza em meio ao oceano. Além disso, a diversidade de praias e enseadas torna a navegação ainda mais encantadora.', imgInicial: 'assets/img/velejando.jpg', iconInicial: 'assets/img/vela.png')];

  // Função para atualizar o índice selecionado na barra de navegação
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(233, 249, 255, 1),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                pra[2].img,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),

                    Text(
                    pra[2].nome,
                    style: const TextStyle(
                      color: Color(0xFF005374),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'assets/img/icons.png',
                    width: 80.0,
                    height: 80.0,
                  ),
                  const SizedBox(
                    height: 20,
                  ), // Espaço entre o AppBar e o texto "Atividades"
                ],
              ),
               Padding(
                padding: const EdgeInsets.only(top: 0, left: 25, right: 25.0),
                child: Text(
                  pra[2].desc,
                 style: const TextStyle(
                    color: Color.fromRGBO(10, 116, 158, 1),
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 10.0, 140.0, 0.0),
                //padding: EdgeInsets.only(top: 20, left: 0, right: 140),
                child: Text(
                  'Atividades que possui:',
                  style: TextStyle(
                    color: Color(0xFF005374),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 197, 237, 252),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.fromLTRB(30, 10.0, 260.0, 0.0),
                    child: Row(
                      children: [
                        Image.asset(
                          atv[1].icon,
                          width: 30.0,
                          height: 30.0,
                        ),
                        const SizedBox(width: 15.0),
                         Text(
                          atv[1].nome,
                          style: const TextStyle(
                            color: Color.fromRGBO(10, 116, 158, 1),
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 197, 237, 252),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.fromLTRB(30, 10.0, 260.0, 0.0),
                    child: Row(
                      children: [
                        Image.asset(
                          atv[2].icon,
                          width: 30.0,
                          height: 30.0,
                        ),
                        const SizedBox(width: 15.0),
                         Text(
                          atv[2].nome,
                          style: const TextStyle(
                            color: Color.fromRGBO(10, 116, 158, 1),
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 197, 237, 252),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.fromLTRB(30, 10.0, 260.0, 0.0),
                    child: Row(
                      children: [
                        Image.asset(
                          atv[3].icon,
                          width: 30.0,
                          height: 30.0,
                        ),
                        const SizedBox(width: 15.0),
                         Text(
                          atv[3].nome,
                          style: const TextStyle(
                            color: Color.fromRGBO(10, 116, 158, 1),
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Atividades',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt), // Ícone simples
            label: 'Publicações',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: const Color(0xFF005374),
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Atualiza o índice da página selecionada
          });

          // Navegar para a página "Publicações" quando o índice 2 for selecionado
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PublicacaoPage(),
              ),
            );
          }
          else if(index == 1){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SPOceanHomePage(),
              ),
            );
          }
        },
      ),
    );
  }
}
