import 'package:flutter/material.dart';

class Logado extends StatelessWidget {
  const Logado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Logado com sucesso')),
      body: Container(
        child: const Text('Logado com Sucesso', textScaleFactor: 2),
      ),
    );
  }
}