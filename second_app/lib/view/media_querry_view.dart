import 'package:flutter/material.dart';
import 'package:second_app/common/snackbar_widget.dart';

class MediaQueryView extends StatefulWidget {
  const MediaQueryView({super.key});

  @override
  State<MediaQueryView> createState() => _MediaQueryViewState();
}

class _MediaQueryViewState extends State<MediaQueryView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Media Query view'),
      // ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            color: Colors.green,
            child: ElevatedButton(
              onPressed: () {
                showSnackBar(context, "Hello World");
              },
              child: const Text('Click me'),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            width: double.infinity,
            color: Colors.red,
            child: ElevatedButton(
              onPressed: () {
                showSnackBar(context, "Hello World 555", color: Colors.red);
              },
              child: const Text('Click meme'),
            ),
          ),
        ),
        // Flexible(
        //   fit: FlexFit.tight,
        //   child: Container(
        //     height: 200,
        //     width: double.infinity,
        //     color: Colors.red,
        //   ),
        // ),
        //flexible--fit:flexfit.loose
        //flexible and expanded are used in multi child
        // Container(
        //   height: height / 3,
        //   width: double.infinity,
        //   color: Colors.yellow,
        // )
      ]),
    );
  }
}
