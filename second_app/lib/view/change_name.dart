import 'package:flutter/material.dart';

class ChangeName extends StatefulWidget {
  const ChangeName({super.key});

  @override
  State<ChangeName> createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
  int _tapCount = 0;
  String _name = 'Click';

  void _incrementTapCount() {
    setState(() {
      _tapCount++;
      if (_tapCount == 1) {
        _name = 'Vijay';
      } else if (_tapCount == 2) {
        _name = 'Jawed';
      } else if (_tapCount == 3) {
        _name = 'Abend';
      } else if (_tapCount == 4) {
        _name = 'Satish';
        _tapCount = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
//   title: Text('Tap Count App'),
// ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: _incrementTapCount,
                child: Text(
                  _name,
                  style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
