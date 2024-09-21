import 'package:flutter/material.dart'; // For PNG icons (if using Image.asset)
import 'package:flutter_application_sp470/Mongagua.dart';
import 'package:flutter_application_sp470/Vermelha.dart';
import 'package:flutter_application_sp470/atividades.dart';
import 'package:flutter_application_sp470/praias.dart';
import 'package:flutter_application_sp470/publicacoes.dart';
import 'package:flutter_application_sp470/Atividade.dart';
import 'Classes.dart';


  int _selectedIndex = 0;

  // Corrigindo a declaração da lista
  final List<Atividadess> atv = [
    Atividadess(
        nomeInicial: 'Snorkel',
        descInicial:
            "Mergulho com snorkel é nadar perto da superfície da água usando um tubo chamado snorkel para respirar. Você pode ver embaixo d'água sem precisar segurar a respiração.",
        imgInicial: 'image',
        iconInicial: 'assets/img/snor.png'),
    Atividadess(
        nomeInicial: 'Surf',
        descInicial: 'sla',
        imgInicial: 'image',
        iconInicial: 'assets/img/surf.png'),
    Atividadess(
        nomeInicial: 'Asa-Delta',
        descInicial: 'sla',
        imgInicial: 'image',
        iconInicial: 'assets/img/asa.png'),
    Atividadess(
        nomeInicial: 'Rapel',
        descInicial: 'sla',
        imgInicial: 'image',
        iconInicial: 'assets/img/rapel.png'),
    Atividadess(
        nomeInicial: 'Passeios',
        descInicial: 'sla',
        imgInicial: 'assets/img/',
        iconInicial: 'assets/img/vela.png'),
  ];
void main() {
  runApp(const SPOceanApp());
}

class SPOceanApp extends StatelessWidget {

  final atvs = List<Atividades>;
  const SPOceanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DescriptionPage(),
    );
  }
}

class DescriptionPage extends StatefulWidget {
  
  const DescriptionPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SPOceanHomePageState createState() => _SPOceanHomePageState();
}

class _SPOceanHomePageState extends State<DescriptionPage> {
  
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
                atv[_selectedIndex].img,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),

                   Text(
                    atv[_selectedIndex].nome,
                    style: TextStyle(
                      color: Color(0xFF005374),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    atv[_selectedIndex].nome,
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
  child: Column(
    children: <Widget>[
      Text(
        atv[_selectedIndex].nome, // Acessando a descrição corretamente
        style: const TextStyle(
          color: Color.fromRGBO(10, 116, 158, 1),
          fontSize: 18,
        ),
        textAlign: TextAlign.justify,
      ),
    ],
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
