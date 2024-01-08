import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var opcao = 0;

  void _responder() {
    setState(() {
      if (perguntaSelecionada < 1) {
        perguntaSelecionada++;
        opcao++;
      }
    });
    print('Resposta aceita');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = ['Qual sua cor favorita?', 'Qual é seu animal favorito?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]),
            Respostas('Resposta 1', _responder),
            Respostas('Resposta 2', _responder),
            Respostas('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
