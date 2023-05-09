import 'package:flutter/material.dart';

class ResponsiveDesign extends StatefulWidget {
  const ResponsiveDesign({super.key});

  @override
  State<ResponsiveDesign> createState() => _ResponsiveDesignState();
}

class _ResponsiveDesignState extends State<ResponsiveDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Button1',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Button2',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Button3',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Button 4',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 2000,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Button 5',
                    style: TextStyle(fontSize: 30, color: Colors.amber),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
