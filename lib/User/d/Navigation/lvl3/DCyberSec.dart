import 'package:flutter/material.dart';

class DCyberSecPage extends StatelessWidget {
  const DCyberSecPage({super.key});

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
                        'Starting point: Block D',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Destination: Cyber Security',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      _ListTile(
                          'lib/Images/blockd/lvl3/cybersec/1.png',
                          'STEP 1: Block D',
                          'Take the elevator and go to Level 3'),
                      _ListTile(
                          'lib/Images/blockd/lvl3/cybersec/2.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 2: At level 2',
                          'Turn right'),
                      _ListTile(
                          'lib/Images/blockd/lvl3/cybersec/3.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 3: At the hallway',
                          'Go straight until you reach the corner'),
                      _ListTile(
                          'lib/Images/blockd/lvl3/cybersec/4.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 4: At the corner',
                          'Turn right'),
                      _ListTile(
                          'lib/Images/blockd/lvl3/cybersec/5.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 5: At the hallway',
                          'Go straight along the path'),
                      _ListTile(
                          'lib/Images/blockd/lvl3/cybersec/6.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 6: At the corner',
                          'Turn right'),
                      _ListTile(
                          'lib/Images/blockd/lvl3/cybersec/7.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 7: Fire extinguisher',
                          'Turn left before the fire extinguisher'),
                      _ListTile(
                          'lib/Images/blockd/lvl3/cybersec/8.png', // Replace 'step3.jpg' with your actual image path
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
