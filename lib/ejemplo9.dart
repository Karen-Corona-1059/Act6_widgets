import 'package:flutter/material.dart';

class EjemploNueve extends StatefulWidget {
  const EjemploNueve({Key? key}) : super(key: key);

  @override
  State<EjemploNueve> createState() => _EjemploNueveState();
}

class _EjemploNueveState extends State<EjemploNueve> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ejemplo 9',
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
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: Text(
                  '$_count',
                  style: const TextStyle(fontSize: 40),
                  key: ValueKey(_count),
                ),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Text('Add'),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
