import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      if (_perguntaSelecionada < 2) {
        _perguntaSelecionada++;
      }
    });
    print('Resposta aceita');
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Azul', 'Verde', 'Amarelo', 'Branco'],
      },
      {
        'texto': 'Qual é sua tecnologia favorita?',
        'respostas': ['Vue.js', 'React.js', 'C#', 'Flutter'],
      },
      {
        'texto': 'Qual é seu animal favorito?',
        'respostas': ['Arara', 'Gato', 'Cachorro', 'Peixe'],
      },
    ];

    List<String> respostas =
        perguntas[_perguntaSelecionada].cast()['respostas'];

    List<Widget> widgets =
        respostas.map((text) => Respostas(text, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...widgets,
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
