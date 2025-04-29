import 'package:flutter/material.dart';
import 'package:corona/pantallainicial.dart';
import 'package:corona/ejemplo1.dart';
import 'package:corona/ejemplo2.dart';
import 'package:corona/ejemplo3.dart';
import 'package:corona/ejemplo4.dart';
import 'package:corona/ejemplo5.dart';
import 'package:corona/ejemplo6.dart';
import 'package:corona/ejemplo7.dart';
import 'package:corona/ejemplo8.dart';
import 'package:corona/ejemplo9.dart';
import 'package:corona/ejemplo10.dart';

void main() => runApp(MiWidget());

class MiWidget extends StatelessWidget {
  const MiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaInicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/ejemplo1': (context) => const EjemploUno(),
        '/ejemplo2': (context) => const EjemploDos(),
        '/ejemplo3': (context) => const EjemploTres(),
        '/ejemplo4': (context) => const EjemploCuatro(),
        '/ejemplo5': (context) => const EjemploCinco(),
        '/ejemplo6': (context) => const EjemploSeis(),
        '/ejemplo7': (context) => const EjemploSiete(),
        '/ejemplo8': (context) => const EjemploOcho(),
        '/ejemplo9': (context) => const EjemploNueve(),
        '/ejemplo10': (context) => const EjemploDiez(),
      },
    );
  }
}
