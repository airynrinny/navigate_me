import 'package:flutter/material.dart';

class DDcsPage extends StatelessWidget {
  const DDcsPage({super.key});

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
                        'Destination: Department of Computer Science',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      ListTile(
                        leading:
                            Image.asset('lib/Images/blockd/lvl4/dcs/1.png'),
                        title: const Text('STEP 1: Block D'),
                        subtitle:
                            const Text('Take the elevator and go to Level 4'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl4/dcs/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 2: At level 4'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl4/dcs/3.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 3: At the hallway'),
                        subtitle: const Text(
                            'Go straight until you reach the corner'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl4/dcs/4.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 4: At the corner'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl4/dcs/5.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 5: At the hallway'),
                        subtitle: const Text('Go straight along the path'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl4/dcs/6.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 6: At the corner'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl4/dcs/7.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 7: Fire extinguisher'),
                        subtitle: const Text(
                            'Turn left before the fire extinguisher'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl4/dcs/8.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 8: Enter the door'),
                        subtitle: const Text(
                            'Turn to you left and you will the glass door for DCS at the corner'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl4/dcs/9.png'), // Replace 'step3.jpg' with your actual image path
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
