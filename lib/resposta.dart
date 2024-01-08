import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String resposta;
  final void Function() quandoSelecionado;

  Respostas(this.resposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          onPressed: quandoSelecionado,
          child: Text(resposta),
        ));
  }
}
