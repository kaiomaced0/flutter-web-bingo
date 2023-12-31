import 'package:bingo/adicionar.dart';
import 'package:flutter/material.dart';

late List<String> listaBingo;

TextEditingController numeroAtual = TextEditingController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bingo',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (_, __, ___) => const Adicionar()));
            },
            child: const Icon(Icons.add)),
        body: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 14,
              ),
              itemCount: listaBingo.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      listaBingo[index].toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 60),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
