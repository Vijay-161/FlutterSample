import 'package:flutter/material.dart';

import '../model/interest.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  var gap = const SizedBox(
    height: 12,
  );
  int principle = 0;
  int time = 0;
  int rate = 0;
  double interest = 0;

  Interest inter = Interest();
  void calculate() {
    setState(() {
      interest = inter.calculate(principle, time, rate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Simple Interest'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              gap,
              TextField(
                onChanged: (value) {
                  principle = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Enter Principle',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.yellow, width: 2))),
              ),
              gap,
              TextField(
                onChanged: (value) {
                  time = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Enter Time',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.yellow, width: 2))),
              ),
              gap,
              TextField(
                onChanged: (value) {
                  rate = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Enter Rate',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.yellow, width: 2))),
              ),
              gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    calculate();
                  },
                  child: const Text('Calculate'),
                ),
              ),
              gap,
              Text(
                'Interest: $interest',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              )
            ],
          ),
        ),
      ),
    );
  }
}
