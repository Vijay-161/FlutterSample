import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column View'),
      ),
      //also make in row
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: [
        //   Column(
        //     children: const [
        //       Icon(
        //         Icons.star,
        //         color: Colors.red,
        //         size: 70,
        //       ),
        //       Icon(
        //         Icons.star,
        //         color: Colors.blue,
        //         size: 70,
        //       ),
        //     ],
        //   ),
        //   const Icon(
        //     Icons.star,
        //     color: Colors.green,
        //     size: 70,
        //   ),
        // ],
        // for curley braces ... spread operator is used
        children: [
          for (int i = 0; i < 10; i++) ...{
            if (i % 2 == 0 || i == 5)
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Text('$i'),
              ),
          },
        ],
      ),
    );
  }
}

// children: const [
//           Icon(
//             Icons.star,
//             color: Colors.red,
//             size: 70,
//           ),
//           Icon(
//             Icons.star,
//             color: Colors.blue,
//             size: 70,
//           ),
//           Spacer(),
//           Icon(
//             Icons.star,
//             color: Colors.green,
//             size: 70,
//           ),
//         ],
