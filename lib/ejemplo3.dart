import 'package:flutter/material.dart';

class EjemploTres extends StatefulWidget {
  const EjemploTres({Key? key}) : super(key: key);

  @override
  State<EjemploTres> createState() => _EjemploTresState();
}

class _EjemploTresState extends State<EjemploTres> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 3',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff83308b),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 50,
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              child: const Text('Fade Logo'),
              onPressed: () {
                setState(
                  () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
