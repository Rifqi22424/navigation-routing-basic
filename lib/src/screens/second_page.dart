import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String data;

  const SecondPage({super.key, required this.data});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(widget.data),
      ),
    );
  }
}
