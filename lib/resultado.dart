import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() _quandoReiniciarQuestionario;

  const Resultado(
    this.pontuacao,
    this._quandoReiniciarQuestionario, {
    super.key,
  });

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Voce é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: _quandoReiniciarQuestionario,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Cor de fundo do botão
          ),
          child: const Text(
            'Reinicar',
            style: TextStyle(
              color: Colors.white, // Cor do texto
            ),
          ),
        )
      ],
    );
  }
}
