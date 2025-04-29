import 'package:flutter/material.dart';

class EjemploOcho extends StatefulWidget {
  const EjemploOcho({Key? key}) : super(key: key);

  @override
  State<EjemploOcho> createState() => _EjemploOchoState();
}

class _EjemploOchoState extends State<EjemploOcho> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ejemplo 8',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff557bcf),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _size = _size == 300 ? 100 : 300;
              });
            },
            child: Container(
              color: Colors.white,
              child: AnimatedSize(
                curve: Curves.easeIn,
                duration: const Duration(seconds: 1),
                child: FlutterLogo(size: _size),
              ),
            ),
          ),
        ));
  }
}
