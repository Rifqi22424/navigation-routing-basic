import 'package:flutter/material.dart';

class AdvancedNavigation extends StatefulWidget {
  const AdvancedNavigation({Key? key}) : super(key: key);

  @override
  _AdvancedNavigationState createState() => _AdvancedNavigationState();
}

class _AdvancedNavigationState extends State<AdvancedNavigation> {
  String data = ''; // Simpan data di sini

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced Navigation'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Masukkan data yang akan dimunculkan',
              ),
              onChanged: (value) {
                setState(() {
                  data = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/second',
                  arguments: data, //Kirim data sebagai argumen
                );
              },
              child: const Text('Push with data'),
            ),
          ],
        ),
      ),
    );
  }
}
