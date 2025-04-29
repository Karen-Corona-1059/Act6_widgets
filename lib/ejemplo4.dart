import 'package:flutter/material.dart';

class EjemploCuatro extends StatefulWidget {
  const EjemploCuatro({Key? key}) : super(key: key);

  @override
  State<EjemploCuatro> createState() => _EjemploCuatroState();
}

class _EjemploCuatroState extends State<EjemploCuatro> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 4',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff55bdcf),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff9aa2ea),
            ),
            child: const Text('Change padding'),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 100.0 : 0.0;
              });
            },
          ),
          Text('Padding = $padValue'),
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Color(0xffbb72e5),
            ),
          ),
        ],
      ),
    );
  }
}
