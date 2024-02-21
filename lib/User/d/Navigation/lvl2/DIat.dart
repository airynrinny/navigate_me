import 'package:flutter/material.dart';

class DIatPage extends StatelessWidget {
  const DIatPage({super.key});

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
                        'Destination: IAT',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      _ListTile(
                          'lib/Images/blockd/lvl2/iiibflib/1.png',
                          'STEP 1: Block D',
                          'Take the elevator and go to Level 2'),
                      _ListTile(
                          'lib/Images/blockd/lvl2/iiibflib/2.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 2: At level 2',
                          'Turn right'),
                      _ListTile(
                          'lib/Images/blockd/lvl2/iiibflib/3.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 3: At the hallway',
                          'Go straight until you reach the corner'),
                      _ListTile(
                          'lib/Images/blockd/lvl2/iiibflib/6.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 4: At the corner',
                          'Turn right'),
                      _ListTile(
                          'lib/Images/blockd/lvl2/iiibflib/7.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 5: At the hallway',
                          'Go straight along the path'),
                      _ListTile(
                          'lib/Images/blockd/lvl2/iiibflib/8.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 6: At the path',
                          'Go straight until the end of the path'),
                      _ListTile(
                          'lib/Images/blockd/lvl2/iiibflib/9.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 7: Fire extinguisher',
                          'After the fire extinguisher, turn left '),
                      _ListTile(
                          'lib/Images/blockd/lvl2/iiibflib/10.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 8: Near the balcony',
                          'Go straight and turn left (the room with the floor mat)'),
                      _ListTile(
                          'lib/Images/blockd/lvl2/iiibflib/11.png', // Replace 'step3.jpg' with your actual image path
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
