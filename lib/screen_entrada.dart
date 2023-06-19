// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'tela_menu.dart';

class TelaEntrada extends StatelessWidget {
  const TelaEntrada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/entrada_image.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                  
                    MaterialPageRoute(builder: (context) => TelaMenu()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 24),
                ),
                child: const Text(
                  'Ver Cardápio',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
