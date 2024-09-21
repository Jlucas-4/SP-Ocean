import 'package:flutter/material.dart';
import 'atividades.dart';
import 'Vermelha.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFE9F9FF), // Cor de fundo do body em hexadecimal
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'SP OCEAN',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  const SPOceanHomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Bordas arredondadas de 20px
                      ),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/praia1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: double.infinity, maxHeight: 200),
                      ),
                    ),
                  ),
                  const SizedBox(height: 46.0),
                  const Text(
                    'DESCUBRA',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 30),
                  ),
                  const SizedBox(height: 26.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const VermelhaPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Bordas arredondadas de 20px
                      ),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/pru.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: double.infinity, maxHeight: 200),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
