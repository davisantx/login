import 'package:flutter/material.dart';
import 'package:login/componentes/botao.dart';
import 'package:login/componentes/caixa_texto.dart';

class Principal extends StatelessWidget {
  Principal({super.key});
  final String appTitle = 'login teste';
  final String title = 'Página de Login';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/logo.png'),
                ),
              ),
              const CaixaTexto(label: 'Digite seu email'),
              const CaixaTexto.senha(label: 'Digite sua senha'),
              Botao(title: 'Login', formKey: _formKey,)
            ],
          ),
        ),
      ),
    );
  }
}
