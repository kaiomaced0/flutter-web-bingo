import 'package:bingo/app.dart';
import 'package:flutter/material.dart';

class Adicionar extends StatefulWidget {
  const Adicionar({super.key});

  @override
  State<Adicionar> createState() => _AdicionarState();
}

class _AdicionarState extends State<Adicionar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        BackdropFilter(
          filter: const ColorFilter.linearToSrgbGamma(),
          child: Container(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        Center(
          child: Container(
            height: 350,
            width: 500,
            child: Material(
              elevation: 4,
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 1.2, 0, 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Digite o numero sorteado: ',
                                  textAlign: TextAlign.start),
                              TextField(
                                autofocus: true,
                                controller: numeroAtual,
                                decoration: InputDecoration(hintMaxLines: 1),
                              ),
                            ],
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                child: SizedBox(
                                  width: 250,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    width: double.infinity,
                                    decoration: ShapeDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .surfaceTint,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      shadows: const [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: const Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(15, 5, 15, 5),
                                        child: Text('Adicionar',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.justify),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              listaBingo.add(numeroAtual.text);
                              Navigator.of(context).pop();
                              Navigator.of(context).push(PageRouteBuilder(
                                  opaque: false,
                                  pageBuilder: (_, __, ___) =>
                                      OverlayScreen()));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class OverlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/'),
      child: Stack(
        children: <Widget>[
          BackdropFilter(
            filter: ColorFilter.linearToSrgbGamma(),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Center(
            child: Material(
              elevation: 4,
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  margin: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      numeroAtual.text,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 60),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
