import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() _reiniciarQuestionario;

  Resultado(this.pontuacao, this._reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Ótimo!!';
    } else if (pontuacao < 16) {
      return 'Impressionante !!';
    } else {
      return 'Nivel Jedai!!';
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
          style: TextStyle(fontSize: 28),
        )),
        ElevatedButton(
          child: Text('Reiniciar Perguntas.'),
          onPressed: _reiniciarQuestionario,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        )
      ],
    );
  }
}
