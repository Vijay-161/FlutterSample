import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Column(children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/arithmeticRoute');
            },
            child: const Text('Arthmetic'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/interestRoute');
            },
            child: const Text('Simple Interest'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/areaRoute');
            },
            child: const Text('Area of Circle'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/nameRoute');
            },
            child: const Text('Show Name'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/textRoute');
            },
            child: const Text('Rich Text View'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/columnRoute');
            },
            child: const Text('Column View'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/studentRoute');
            },
            child: const Text('Student'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/containerRoute');
            },
            child: const Text('Container View'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/imageRoute');
            },
            child: const Text('Image View'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/mediaRoute');
            },
            child: const Text('Media Query'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cassworkRoute');
            },
            child: const Text('Media Query'),
          ),
        ),
      ]),
    );
  }
}
