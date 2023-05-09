import 'package:flutter/material.dart';

import '../model/arthmetic.dart';

// const -> compile time
// final -> run time

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  var gap = const SizedBox(height: 12);
  final firstController = TextEditingController(text: '2');
  final secondController = TextEditingController();

  int result = 0;
  Arithmetic arithmetic = Arithmetic();

  void add() {
    setState(() {
      result = arithmetic.add(
        int.parse(firstController.text),
        int.parse(secondController.text),
      );
    });
  }

  void sub() {
    setState(() {
      result = arithmetic.sub(
        int.parse(firstController.text),
        int.parse(secondController.text),
      );
    });
  }

  final merokey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetics'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: merokey,
            child: Column(
              children: [
                gap,
                TextFormField(
                  controller: firstController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter first Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter first number';
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: secondController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter second Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (merokey.currentState!.validate()) {
                        add();
                        Navigator.pushNamed(context, '/outputRoute',
                            arguments: result);
                      }
                    },
                    child: const Text('ADD'),
                  ),
                ),
                gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (merokey.currentState!.validate()) {
                        sub();
                      }
                      return;
                    },
                    child: const Text('SUBTRACT'),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Result: $result',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
