import 'dart:math' as math;

import 'package:flutter/material.dart';

class EjemploDiez extends StatefulWidget {
  const EjemploDiez({Key? key}) : super(key: key);

  @override
  State<EjemploDiez> createState() => _EjemploDiezState();
}

class _EjemploDiezState extends State<EjemploDiez>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TheWidget(controller: _controller);
  }
}

class TheWidget extends AnimatedWidget {
  const TheWidget({
    Key? key,
    required AnimationController controller,
  }) : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 10',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff557bcf),
      ),
      body: Center(
        child: Transform.rotate(
          angle: _progress.value * 2.0 * math.pi,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
