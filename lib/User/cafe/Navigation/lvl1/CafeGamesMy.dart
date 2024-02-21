import 'package:flutter/material.dart';

class CafeGamesMyPage extends StatelessWidget {
  const CafeGamesMyPage({super.key});

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
                        'Starting point: Cafe',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Destination: GamesMy',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/1.png',
                          'STEP 1: KICT Cafeteria',
                          'From cafe entrance (from the parking), where the printing shop is on your left, go straight'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/2.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 2: Turn right',
                          'Go straight and turn right'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/3.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 3: Turn left',
                          'Go straight and turn right'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/4.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 4: At the hallway',
                          'Go straight passing all the musholla on your left'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/6.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 5: Near the elevator',
                          'Go straight pass the elevator on the left and main door on the right to the CITA lab also on the right'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/7.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 6: After CITA',
                          'Turn left'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/8.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 7: Corner',
                          'Turn right'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/9.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 8: After the corner',
                          'Go along the path until you can the LR C1 / TL C1 sign above on the left'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/10.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 9: After the sign',
                          'At the corner, turn left'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/11.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 10: Near the OR',
                          'Go straight until you can the OR on the right and the SL on the right'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/13.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 11: To the corner',
                          'Go straight pass the fire extinguisher on your right until the corner'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/14.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 12: At the corner',
                          'Turn left'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/15.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 13: At the hallway',
                          'Go straight'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/16.png', // Replace 'step2.jpg' with your actual image path
                          'STEP 14: Near the fire extinguisher',
                          'after the fire extinguisher on the left, find the green door GAMESMY STUDIO also on your left'),
                      _ListTile(
                          'lib/Images/cafe/lvl1/gamesmy/17.png', // Replace 'step3.jpg' with your actual image path
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
