import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Perguntas finalizadas',
      style: TextStyle(fontSize: 28),
    ));
  }
}
