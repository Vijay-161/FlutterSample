import 'package:flutter/material.dart';

class ClassworkView extends StatefulWidget {
  const ClassworkView({super.key});

  @override
  State<ClassworkView> createState() => _ClassworkViewState();
}

class _ClassworkViewState extends State<ClassworkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Columns'),
      ),
      body: Column(children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: 300,
                color: Colors.green,
                child: const Text(
                  'Container1',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 300,
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 300,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            height: 100,
            width: double.infinity,
            color: Colors.purple,
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            width: double.infinity,
            color: Colors.lightGreenAccent,
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            width: double.infinity,
            color: Colors.green,
          ),
        ),
      ]),
    );
  }
}
