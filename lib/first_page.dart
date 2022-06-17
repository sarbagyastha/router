import 'package:flutter/material.dart';
import 'package:router/router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            router.pushNamed(
              'second',
              queryParams: {'a': 'b'},
              extra: 'test-extra',
            );
          },
          child: const Text('Go to Second Page'),
        ),
      ),
    );
  }
}
