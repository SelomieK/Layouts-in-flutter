import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layouts in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LayoutPage(),
    );
  }
}

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Star Wars Characters',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              characterRow('Grogu', '***'),
              const SizedBox(height: 10),
              characterRow('C-3PO', '###'),
              const SizedBox(height: 10),
              characterRow('R2-D2', '&&&'),
              const SizedBox(height: 10),
              characterRow('Stormtrooper', '^^^'),
            ],
          ),
        ),
      ),
    );
  }

  Widget characterRow(String name, String imagePath) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            name,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Expanded(
          child: Text(imagePath, style: const TextStyle(fontSize: 18)),
        ),
      ],
    );
  }
}
