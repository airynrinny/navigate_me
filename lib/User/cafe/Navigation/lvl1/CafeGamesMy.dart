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
                      ListTile(
                        leading:
                            Image.asset('lib/Images/cafe/lvl1/gamesmy/1.png'),
                        title: const Text('STEP 1: KICT Cafeteria'),
                        subtitle: const Text(
                            'From cafe entrance (from the parking), where the printing shop is on your left, go straight'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 2: Turn right'),
                        subtitle: const Text('Go straight and turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/3.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 3: Turn left'),
                        subtitle: const Text('Go straight and turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/4.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 4: At the hallway'),
                        subtitle: const Text(
                            'Go straight passing all the musholla on your left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/6.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 5: Near the elevator'),
                        subtitle: const Text(
                            'Go straight pass the elevator on the left and main door on the right to the CITA lab also on the right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/7.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 6: After CITA'),
                        subtitle: const Text('Turn left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/8.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 7: Corner'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/9.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 8: After the corner'),
                        subtitle: const Text(
                            'Go along the path until you can the LR C1 / TL C1 sign above on the left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/10.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 9: After the sign'),
                        subtitle: const Text('At the corner, turn left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/11.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 10: Near the OR'),
                        subtitle: const Text(
                            'Go straight until you can the OR on the right and the SL on the right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/13.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 11: To the corner'),
                        subtitle: const Text(
                            'Go straight pass the fire extinguisher on your right until the corner'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/14.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 12: At the corner'),
                        subtitle: const Text('Turn left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/15.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 13: At the hallway'),
                        subtitle: const Text('Go straight'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/16.png'), // Replace 'step2.jpg' with your actual image path
                        title:
                            const Text('STEP 14: Near the fire extinguisher'),
                        subtitle: const Text(
                            'after the fire extinguisher on the left, find the green door GAMESMY STUDIO also on your left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/gamesmy/17.png'), // Replace 'step3.jpg' with your actual image path
                        title: const Text('You have arrived!'),
                      ),
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
}
