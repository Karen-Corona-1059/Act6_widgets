import 'package:flutter/material.dart';

class EjemploCinco extends StatefulWidget {
  const EjemploCinco({Key? key}) : super(key: key);

  @override
  State<EjemploCinco> createState() => _EjemploCincoState();
}

class _EjemploCincoState extends State<EjemploCinco> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 5',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffa355cf),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.catching_pokemon),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Click'),
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
