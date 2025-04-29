import 'package:flutter/material.dart';

class EjemploDos extends StatefulWidget {
  const EjemploDos({Key? key}) : super(key: key);

  @override
  State<EjemploDos> createState() => _EjemploDosState();
}

class _EjemploDosState extends State<EjemploDos>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween _colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 2',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff55cf79),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100.0,
              width: 250.0,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff9cebf9),
                    ),
                    child: const Text('Press'),
                    onPressed: () {
                      setState(() {
                        _isPressed = true;
                      });
                      _animationController.reset();
                      _animationController.forward();
                      Future.delayed(const Duration(seconds: 3), () {
                        setState(() {
                          _isPressed = false;
                        });
                      });
                    },
                  ),
                  if (_isPressed) _animatedModalBarrier,
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
