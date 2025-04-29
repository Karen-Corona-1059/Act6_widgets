import 'package:flutter/material.dart';

class EjemploSeis extends StatefulWidget {
  const EjemploSeis({Key? key}) : super(key: key);

  @override
  State<EjemploSeis> createState() => _EjemploSeisState();
}

class _EjemploSeisState extends State<EjemploSeis> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ejemplo 6',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff660361),
        ),
        body: Center(
          child: SizedBox(
            width: 200,
            height: 350,
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  width: selected ? 200.0 : 50.0,
                  height: selected ? 50.0 : 200.0,
                  top: selected ? 50.0 : 150.0,
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
