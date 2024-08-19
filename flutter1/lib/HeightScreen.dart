import 'package:flutter/material.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  _HeightScreenState createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  final TextEditingController _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double? weight = ModalRoute.of(context)?.settings.arguments as double?;

    if (weight == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Enter Height'),
        ),
        body: const Center(
          child: Text('Weight argument is missing or invalid.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Height'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _heightController,
              decoration:const InputDecoration(labelText: 'Height in (kg)'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 250, 195, 159)),
              ),  
              onPressed: () {
                final double? height = double.tryParse(_heightController.text);
                if (height != null) {
                  Navigator.pushNamed(context, '/result', arguments: {'weight': weight, 'height': height});
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please enter a valid height')),
                  );
                }
              },
              child: const SizedBox(height: 20, child: Text('Save Height and Calculate BMI')),
            ),
          ],
        ),
      ),
    );
  }
}
