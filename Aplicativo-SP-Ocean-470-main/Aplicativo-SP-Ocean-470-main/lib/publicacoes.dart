import 'package:flutter/material.dart';
import 'package:flutter_application_sp470/atividades.dart';
import 'package:flutter_application_sp470/description.dart'; //

void main() {
  runApp(const SPOceanApp());
}

class SPOceanApp extends StatelessWidget {
  const SPOceanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PublicacaoPage(),
    );
  }
}

class PublicacaoPage extends StatefulWidget {
  const PublicacaoPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SPOceanHomePageState createState() => _SPOceanHomePageState();
}

class _SPOceanHomePageState extends State<PublicacaoPage> {
  int _selectedIndex = 0;

  // Função para atualizar o índice selecionado na barra de navegação
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(233, 249, 255, 1),
        body: const Center(
            child: Expanded(
                child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
             SizedBox(height: 20),
             Padding(
              padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0.0),
              //padding: EdgeInsets.only(top: 20, left: 0, right: 140),
              child: Text(
                'SP OCEAN (Problemas Técnicos)',
                style: TextStyle(
                  color: Color(0xFF005374),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        )
      )
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
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SPOceanHomePage(),
              ),
            );
          }
          else if(index == 2){
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
