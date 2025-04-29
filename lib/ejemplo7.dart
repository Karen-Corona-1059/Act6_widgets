import 'package:flutter/material.dart';

class EjemploSiete extends StatefulWidget {
  const EjemploSiete({Key? key}) : super(key: key);

  @override
  State<EjemploSiete> createState() => _EjemploSieteState();
}

class _EjemploSieteState extends State<EjemploSiete> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ejemplo 7',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff557bcf),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50),
                child: AnimatedRotation(
                  turns: turns,
                  duration: const Duration(seconds: 1),
                  child: const FlutterLogo(
                    size: 100,
                  ),
                ),
              ),
              ElevatedButton(
                child: const Text('Rotate Logo'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                onPressed: () {
                  setState(() => turns += 1 / 4);
                },
              ),
            ],
          ),
        ));
  }
}
