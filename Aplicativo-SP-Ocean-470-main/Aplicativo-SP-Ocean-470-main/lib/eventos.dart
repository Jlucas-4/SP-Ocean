import 'package:flutter/material.dart';
import 'atividades.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const EventosPage(),
    );
  }
}

class EventosPage extends StatelessWidget {
  const EventosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: InkWell(
          onTap: () {
            // Navega para a próxima página ao clicar
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SPOceanHomePage()),
            );
          },
          child: Container(
            height: 100,
            width: 200,
            color: const Color(0xFFE9F9FF),
            alignment: Alignment.center,
            child: const Text(
              'No momento não há eventos! Voltar',
              style: TextStyle(color: Colors.blue, fontSize: 20, fontFamily: 'Poppins'),
            ),
          ),
        ),
      ),
    );
  }
}
