import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  TextEditingController usd = TextEditingController();
  TextEditingController inr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversion'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: usd,
              onChanged: (val) {
                if (val.isNotEmpty) {
                  inr.text = (double.parse(val) * 80).toString();
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: const Text('USD'),
                hintText: '100',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: inr,
              onChanged: (val) {
                if (val.isNotEmpty) {
                  usd.text = (double.parse(val) / 80).toString();
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: const Text('INR'),
                hintText: '8000',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                usd.clear();
                inr.clear();
              },
              child: const Text('Reset'),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
