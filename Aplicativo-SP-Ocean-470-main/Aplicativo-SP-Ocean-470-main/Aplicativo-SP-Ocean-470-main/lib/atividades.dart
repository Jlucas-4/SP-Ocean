import 'package:flutter/material.dart';
import 'package:flutter_application_sp470/description.dart';
import 'package:flutter_application_sp470/publicacoes.dart';
import 'Atividade.dart'; // For PNG icons (if using Image.asset)

void main() {
  runApp(const SPOceanApp());
}

class SPOceanApp extends StatelessWidget {
  const SPOceanApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      home: SPOceanHomePage(),
    );
  }
}

class SPOceanHomePage extends StatefulWidget {
  const SPOceanHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SPOceanHomePageState createState() => _SPOceanHomePageState();
}

class _SPOceanHomePageState extends State<SPOceanHomePage> {
  int _selectedIndex = 0;
List<Atividades> atv = [
   Atividades( nomeInicial: 'Snorkel', descInicial: "Mergulho com snorkel é nadar perto da superfície da água usando um tubo chamado snorkel para respirar. Você pode ver embaixo d'água sem precisar segurar a respiração.", imgInicial: 'image', iconInicial: 'assets/img/snor.png'),
  Atividades( nomeInicial: 'Surf', descInicial: 'sla', imgInicial: 'image', iconInicial: 'assets/img/surf.png'),
  Atividades( nomeInicial: 'Asa-Delta', descInicial: 'sla', imgInicial: 'image', iconInicial: 'assets/img/asa.png'),
  Atividades( nomeInicial: 'Rapel', descInicial: 'sla', imgInicial: 'image', iconInicial: 'assets/img/rapel.png'),
  Atividades( nomeInicial: 'Passeios', descInicial: 'sla', imgInicial: 'assets/img/', iconInicial: 'assets/img/vela.png')];
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0.0, 0.0, 0.0),
                //padding: EdgeInsets.only(top: 20, left: 0, right: 140),
                child: Text(
                  'SP OCEAN',
                  style: TextStyle(
                    color: Color(0xFF005374),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0.0, 260.0, 0.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alinha os filhos à esquerda
                  children: <Widget>[
                    SizedBox(width: 60),
                    SizedBox(height: 25),
                    // Espaço entre o AppBar e o texto "Atividades"
                    // Espaço entre o AppBar e o texto "Atividades"
                    Text(
                      'Atividades',
                      style: TextStyle(
                        color: Color.fromRGBO(10, 116, 158, 1),
                        fontSize: 24, // Tamanho da fonte do subtítulo
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Aqui você pode adicionar os widgets para as atividades conforme necessário.
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 20.0),
                  Column(
                    children: [
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DescriptionPage()));},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(200, 240, 255, 1),
                          foregroundColor:
                              const Color.fromRGBO(10, 116, 158, 1),
                          alignment: const Alignment(100, 20),
                          elevation: 10,
                          padding:
                              const EdgeInsets.only(left: 0.0, right: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              atv[1].icon,
                              width: 130.0,
                              height: 130.0,
                            ),
                             Text(atv[1].nome),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DescriptionPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(200, 240, 255, 1),
                          foregroundColor:
                              const Color.fromRGBO(10, 116, 158, 1),
                          alignment: const Alignment(100, 20),
                          elevation: 10,
                          padding:
                              const EdgeInsets.only(left: 0.0, right: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              atv[4].icon,
                              width: 130.0,
                              height: 130.0,
                            ),
                             Text(atv[4].nome),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DescriptionPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(200, 240, 255, 1),
                          foregroundColor:
                              const Color.fromRGBO(10, 116, 158, 1),
                          alignment: const Alignment(100, 20),
                          elevation: 10,
                          padding:
                              const EdgeInsets.only(left: 0.0, right: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              atv[0].icon,
                              width: 130.0,
                              height: 130.0,
                            ),
                             Text(atv[0].nome),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DescriptionPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(200, 240, 255, 1),
                          foregroundColor:
                              const Color.fromRGBO(10, 116, 158, 1),
                          alignment: const Alignment(100, 20),
                          elevation: 10,
                          padding:
                              const EdgeInsets.only(left: 0.0, right: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              atv[2].icon,
                              width: 130.0,
                              height: 130.0,
                            ),
                             Text(atv[2].nome),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DescriptionPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(200, 240, 255, 1),
                          foregroundColor:
                              const Color.fromRGBO(10, 116, 158, 1),
                          alignment: const Alignment(100, 20),
                          elevation: 10,
                          padding:
                              const EdgeInsets.only(left: 0.0, right: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              atv[3].icon,
                              width: 130.0,
                              height: 130.0,
                            ),
                             Text(atv[3].nome),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DescriptionPage()));},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(200, 240, 255, 1),
                          foregroundColor:
                              const Color.fromRGBO(10, 116, 158, 1),
                          alignment: const Alignment(100, 20),
                          elevation: 10,
                          padding:
                              const EdgeInsets.only(left: 0.0, right: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img/evento.png',
                              width: 130.0,
                              height: 130.0,
                            ),
                            const Text('Eventos'),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                  const SizedBox(width: 30.0),
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
        },
      ),
    );
  }
}
