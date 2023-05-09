import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rich Text View'),
        ),
        body: SafeArea(
          child: RichText(
            text: const TextSpan(
                text: 'My',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' name is',
                    style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: ' Vijay',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )
                ]),
          ),
        ));
  }
}


// body: Container(
//         color: Colors.blueGrey,
//         width: double.infinity,
//         height: double.infinity / 2,
//         child: const Text(
//           'Hello World',
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//             color: Colors.red,
//           ),
//         ),
//       ),