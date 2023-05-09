import 'package:flutter/material.dart';
import 'package:second_app/model/area.dart';

class CircleView extends StatefulWidget {
  const CircleView({super.key});

  @override
  State<CircleView> createState() => _CircleViewState();
}

class _CircleViewState extends State<CircleView> {
  final radiusController = TextEditingController();
  double result = 0;

  Area are = Area();
  void area() {
    setState(() {
      result = are.area(double.parse(radiusController.text));
    });
  }

  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Area',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Form(
        key: key,
        child: Column(children: [
          TextFormField(
            controller: radiusController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Enter radius',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'enter number';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (key.currentState!.validate()) {
                  area();
                }
                return;
              },
              child: const Text('Area'),
            ),
          ),
          SizedBox(
            child: Text('Result: $result'),
          ),
        ]),
      ),
    );
  }
}
