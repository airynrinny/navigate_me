import 'package:flutter/material.dart';

class CafeDlisPage extends StatelessWidget {
  const CafeDlisPage({super.key});

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
                        'Destination: Department of Library and Information Science',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      ListTile(
                        leading: Image.asset('lib/Images/cafe/lvl4/dlis/1.png'),
                        title: const Text('STEP 1: KICT Cafeteria'),
                        subtitle: const Text(
                            'From cafe entrance (from the parking), where the printing shop is on your left, go straight'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl4/dlis/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 2: Turn right'),
                        subtitle: const Text('Go straight and turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl4/dlis/3.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 3: Turn left'),
                        subtitle: const Text('Go straight and turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl4/dlis/4.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 4: At the hallway'),
                        subtitle: const Text(
                            'Go straight passing all the musholla on your left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl4/dlis/6.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 5: Go to elevator'),
                        subtitle: const Text(
                            'Go to elevator on the left and go to Level 4'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl4/dlis/7.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 6: At Level 4'),
                        subtitle:
                            const Text('Go straight through the glass door'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl4/dlis/8.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 7: Pass the DIS room'),
                        subtitle: const Text(
                            'When you see the DIS room, go straight until you reach the fire extinguisher'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl4/dlis/9.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 8: At the corner'),
                        subtitle: const Text(
                            'At the corner on the right, you can see the DLIS'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl4/dlis/10.png'), // Replace 'step3.jpg' with your actual image path
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
