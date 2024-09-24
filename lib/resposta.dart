import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;
  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Cor de fundo do botão
        ),
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white, // Cor do texto
          ),
        ),
      ),
    );
  }
}
