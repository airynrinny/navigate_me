import 'package:flutter/material.dart';

class CafeMphPage extends StatelessWidget {
  const CafeMphPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.tealAccent,
          ),
          child: Scrollbar(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'NavigateMe',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Starting point: KICT Cafeteria',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Destination: KICT MPH',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      _ListTile(
                          'lib/Images/cafe/lvl2/mph/1.png',
                          'STEP 1: KICT Cafeteria',
                          'From cafe entrance (from the parking), where the printing shop is on your left, go straight'),
                      _ListTile(
                          'lib/Images/cafe/lvl2/mph/2.png',
                          'STEP 2: Go to the stairs',
                          'Turn left where you can see stairs leading to 2nd floor'),
                      _ListTile(
                          'lib/Images/cafe/lvl2/mph/3.png',
                          'STEP 3: Go to Level 2',
                          'Go up the stairs to 2nd floor (current 1st floor)'),
                      _ListTile(
                          'lib/Images/cafe/lvl2/mph/4.png',
                          'STEP 4: At Level 2',
                          'Go up one floor and then turn right'),
                      _ListTile(
                          'lib/Images/cafe/lvl2/mph/5.png', // Replace 'step3.jpg' with your actual image path
                          'You have arrived!',
                          ''),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _ListTile(String imagePath, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 150, // Adjust the width as needed
            height: 150, // Adjust the height as needed
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontFamily: 'Times New Roman', fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
