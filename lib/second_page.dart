import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
    required this.queryParams,
    required this.extra,
  });

  final Map<String, String> queryParams;
  final Object? extra;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: context.pop,
        ),
        title: const Text('Second Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Query Params: $queryParams'),
          const SizedBox(height: 8),
          Text('Extra: $extra'),
        ],
      ),
    );
  }
}
