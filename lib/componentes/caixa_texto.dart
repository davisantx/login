import 'package:flutter/material.dart';

class CaixaTexto extends StatelessWidget {
  final String label;
  final bool pass;
  const CaixaTexto({
    super.key,
    required this.label,
    this.pass = false,
  });

  const CaixaTexto.senha({
    super.key,
    required this.label,
    this.pass = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if(value!.isEmpty) {
            return 'Por favor preencha esse campo';
          }
        },
        obscureText: pass,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
