import 'package:flutter/material.dart';

class DGenOfficePage extends StatelessWidget {
  const DGenOfficePage({super.key});

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
                        'Destination: General Office',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      ListTile(
                        leading: Image.asset('lib/Images/blockd/lvl5/go/1.png'),
                        title: const Text('STEP 1: Block D'),
                        subtitle:
                            const Text('Take the elevator and go to Level 5'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl5/go/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 2: At level 5'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl5/go/3.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 3: At the hallway'),
                        subtitle: const Text(
                            'Go straight until you reach the corner'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl5/go/4.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 4: At the corner'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl5/go/5.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 5: At the door'),
                        subtitle: const Text('Go into the room and turn left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl5/go/6.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 6: At the hallway'),
                        subtitle: const Text('Go straight along the path'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl5/go/7.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 7: Exit the room'),
                        subtitle: const Text('Go straight and turn left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl5/go/8.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 8: Exit the room'),
                        subtitle: const Text(
                            'Turn to your right, go straight and turn left '),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl5/go/9.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 9: Near the balcony'),
                        subtitle: const Text('Go straight'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl5/go/10.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 10: Large space'),
                        subtitle: const Text('Go straight to the glass door '),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl5/go/11.png'), // Replace 'step3.jpg' with your actual image path
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
