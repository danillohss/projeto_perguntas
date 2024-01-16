import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
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

  void _responder() {
    setState(() {
      if (perguntaSelecionada) {
        _perguntaSelecionada++;
      }
    });
    print(_perguntaSelecionada);
  }

  bool get perguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: perguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder)
              : const Resultado()),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
