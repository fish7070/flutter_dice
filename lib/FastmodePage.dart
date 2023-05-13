import 'package:flutter/material.dart';
class FastmodePage extends StatelessWidget {
  const FastmodePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:const Text('快速模式'),
      ),
      body: const Center(
        child: Text('快速模式'),
      ),
    );
  }
}