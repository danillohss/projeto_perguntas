import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'pontuacao': 7},
        {'texto': 'Verde', 'pontuacao': 9},
        {'texto': 'Amarelo', 'pontuacao': 6},
        {'texto': 'Branco', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual é sua tecnologia favorita?',
      'respostas': [
        {'texto': 'Vue.js', 'pontuacao': 10},
        {'texto': 'React.js', 'pontuacao': 7},
        {'texto': 'C#', 'pontuacao': 8},
        {'texto': 'Flutter', 'pontuacao': 6},
      ],
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'respostas': [
        {'texto': 'Arara', 'pontuacao': 2},
        {'texto': 'Gato', 'pontuacao': 10},
        {'texto': 'Cachorro', 'pontuacao': 6},
        {'texto': 'Peixe', 'pontuacao': 5},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (perguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciar() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
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
              : Resultado(_pontuacaoTotal, _reiniciar)),
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
