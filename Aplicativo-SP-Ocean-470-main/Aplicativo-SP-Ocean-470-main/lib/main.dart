import 'package:flutter/material.dart';
import 'atividades.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SP Ocean',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        color: const Color(0xFF005374),
        child: Center(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'BEM VINDO AO\n',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color(0xFF7BDAFF),
                        fontFamily: 'Poppins'
                      ),
                    ),
                    TextSpan(
                      text: 'SP OCEAN',
                      style: TextStyle(
                        fontSize: 47,
                        color: Colors.white,
                        fontFamily: 'Poppins'
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Image.asset(
                'assets/img/imagemInicial.png', // Caminho para a imagem
                height: 250, // Altura da imagem (ajuste conforme necessário)
                width: 250,  // Largura da imagem (ajuste conforme necessário)
              ),
              SizedBox(height: 300), // Corrigi o espaçamento para um valor mais razoável
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // Borda arredondada de 25px
                  ),
                ),
                child: const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Text('Começar →', style: TextStyle(
                  color: Color(0xFF0A749E),
                  fontSize: 40,
                  fontFamily: 'Poppins'
                ),),
              ),
           )],
          ),
        ),
      ),
    );
  }
}
