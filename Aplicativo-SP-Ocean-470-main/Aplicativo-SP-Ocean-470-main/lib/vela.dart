import 'package:flutter/material.dart'; // For PNG icons (if using Image.asset)
import 'package:flutter_application_sp470/atividades.dart';
import 'package:flutter_application_sp470/publicacoes.dart';
import 'Atividade.dart';
import 'Vermelha.dart';
import 'praias.dart';
import 'Mongagua.dart';

void main() {
  runApp(const SPOceanApp());
}

class SPOceanApp extends StatelessWidget {
  const SPOceanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VelaPage(),
    );
  }
}

class VelaPage extends StatefulWidget {
  const VelaPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SPOceanHomePageState createState() => _SPOceanHomePageState();
}

class _SPOceanHomePageState extends State<VelaPage> {
  int _selectedIndex = 0;
  
    List<Atividades> atv = [
  Atividades( nomeInicial: 'Snorkel', descInicial: "Mergulho com snorkel é nadar perto da superfície da água usando um tubo chamado snorkel para respirar. Você pode ver embaixo d'água sem precisar segurar a respiração.", imgInicial: 'image', iconInicial: 'assets/img/snor.png'),
  Atividades( nomeInicial: 'Surf', descInicial: 'sla', imgInicial: 'image', iconInicial: 'assets/img/surf.png'),
  Atividades( nomeInicial: 'Asa-Delta', descInicial: 'sla', imgInicial: 'image', iconInicial: 'assets/img/asa.png'),
  Atividades( nomeInicial: 'Rapel', descInicial: 'sla', imgInicial: 'image', iconInicial: 'assets/img/rapel.png'),
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
                atv[4].img,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),

                  const Text(
                    'Velejando',
                    style: TextStyle(
                      color: Color(0xFF005374),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    atv[4].icon,
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
                  atv[4].desc,
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
                  'Praias com essa atividade:',
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
                Align(
                  alignment: Alignment.centerLeft, // Alinha os botões à esquerda
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PrumirimPage()),
                              );
                    },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 197, 237, 252),
          padding: const EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          minimumSize: const Size(200, 50), // Largura e altura mínima
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // Ajusta o tamanho do Row ao conteúdo
          children: [
            Image.asset(
              'assets/img/sol.png',
              width: 30.0,
              height: 30.0,
            ),
            const SizedBox(width: 10.0),
            const Text(
              'Praia Prumirim',
              style: TextStyle(
                color: Color.fromRGBO(10, 116, 158, 1),
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
      ),
      const SizedBox(height: 10.0),
      Align(
        alignment: Alignment.centerLeft, // Alinha os botões à esquerda
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => const MongaguaPage()),
                  );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 197, 237, 252),
          padding: const EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          minimumSize: const Size(200, 50), // Largura e altura mínima
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // Ajusta o tamanho do Row ao conteúdo
          children: [
            Image.asset(
              'assets/img/sol.png',
              width: 30.0,
              height: 30.0,
            ),
            const SizedBox(width: 10.0),
            const Text(
              'Praia Mongaguá',
              style: TextStyle(
                color: Color.fromRGBO(10, 116, 158, 1),
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    ),
    const SizedBox(height: 10.0),
    Align(
      alignment: Alignment.centerLeft, // Alinha os botões à esquerda
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VermelhaPage()),
                  );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 197, 237, 252),
          padding: const EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          minimumSize: const Size(200, 50), // Largura e altura mínima
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // Ajusta o tamanho do Row ao conteúdo
          children: [
            Image.asset(
              'assets/img/sol.png',
              width: 30.0,
              height: 30.0,
            ),
            const SizedBox(width: 10.0),
            const Text(
              'Praia Vermelha',
              style: TextStyle(
                color: Color.fromRGBO(10, 116, 158, 1),
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    ),
    const SizedBox(height: 20.0),
  ],
)
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
