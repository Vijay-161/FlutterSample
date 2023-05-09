import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image.asset('assets/images/img.jpg'),
              for (int i = 0; i < 5; i++) ...{
                const CircleAvatar(
                  radius: 130,
                  backgroundImage: AssetImage('assets/images/img2.jpg'),
                ),
              },
              Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJSjNdWq_aOZM2Yr00HURaiZYND63vnFDuIrQjSbE&s'),

              ElevatedButton(
                onPressed: () {},
                child: const Text('Click me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
