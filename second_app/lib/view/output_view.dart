import 'package:flutter/material.dart';

class OutPutView extends StatefulWidget {
  const OutPutView({super.key});

  @override
  State<OutPutView> createState() => _OutPutViewState();
}

class _OutPutViewState extends State<OutPutView> {
  int? result;

  @override
  void didChangeDependencies() {
    result = ModalRoute.of(context)!.settings.arguments as int;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OutPut View'),
      ),
      body: Center(
        child: Text(
          'Result is ${result.toString()}',
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
