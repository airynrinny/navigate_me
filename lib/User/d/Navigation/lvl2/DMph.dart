import 'package:flutter/material.dart';

class DMphPage extends StatelessWidget {
  const DMphPage({super.key});

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
                        'Destination: MPH',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      ListTile(
                        leading:
                            Image.asset('lib/Images/blockd/lvl2/mph/1.png'),
                        title: const Text('STEP 1: Block D'),
                        subtitle:
                            const Text('Take the elevator and go to Level 2'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 2: At level 2'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/3.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 3: At the hallway'),
                        subtitle: const Text(
                            'Go straight until you reach the corner'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/6.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 4: At the corner'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/7.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 5: At the hallway'),
                        subtitle: const Text('Go straight along the path'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/8.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 6: At the path'),
                        subtitle:
                            const Text('Go straight until the end of the path'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/9.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 7: Fire extinguisher'),
                        subtitle: const Text(
                            'After the fire extinguisher, turn left '),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/10.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 8: Near the balcony'),
                        subtitle: const Text('Go straight and turn left)'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/11.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 9: At the hallway'),
                        subtitle: const Text(
                            'Go straight passing the second glass door and turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/13.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 10: Near the balcony'),
                        subtitle: const Text('Go straight along the path'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/14.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 11: Near the balcony'),
                        subtitle: const Text('Go straight and turn left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl2/mph/15.png'), // Replace 'step3.jpg' with your actual image path
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
