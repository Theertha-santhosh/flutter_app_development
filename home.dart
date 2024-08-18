import 'package:flutter/material.dart';
import 'bmi.dart';
import 'inc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'NSSCE',
              style: TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Click here'),
                MaterialButton(
                  onPressed: () {
                    print('Moved to BMI page');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BMI()),
                    );
                  },
                  child: const Text('About'),
                  color: Colors.yellow,
                )
              ],
            ),
            const SizedBox(height: 20), // Add spacing between buttons
            MaterialButton(
              onPressed: () {
                print('Moved to Increment page');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Increment()),
                );
              },
              child: const Text('Increment'),
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
