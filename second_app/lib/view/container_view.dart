import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Continaer View'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomRight,
        color: Colors.amber,
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
            border: Border.all(color: Colors.black, width: 2),
            // borderRadius: const BorderRadius.only(
            //   bottomLeft: Radius.circular(10),
            //   bottomRight: Radius.circular(10),
            // ),
          ),
          child: const Text('HEllo world'),
        ),
      ),
    );
  }
}
