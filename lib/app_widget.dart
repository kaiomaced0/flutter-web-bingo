import 'package:bingo/adicionar.dart';
import 'package:bingo/app.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Widget',
      routes: {
        '/': (context) => MyApp(),
        '/add': (context) => const Adicionar()
      },
    );
  }
}
