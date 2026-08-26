import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
        title: const Text('Home'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: .center,
          children: [
            IconButton(
              icon: const Icon(MaterialCommunityIcons.auto_fix),
              onPressed: () {},
              tooltip: 'Auto Fix',
            ),
            IconButton(
              icon: const Icon(MaterialCommunityIcons.incognito),
              onPressed: () {},
              tooltip: 'Incognito',
            ),
          ],
        ),
      ),
    );
  }
}
