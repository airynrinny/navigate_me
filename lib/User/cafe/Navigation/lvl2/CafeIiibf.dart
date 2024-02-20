import 'package:flutter/material.dart';

class CafeIiibfPage extends StatelessWidget {
  const CafeIiibfPage({super.key});

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
                        'Destination: IIiBF',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      ListTile(
                        leading:
                            Image.asset('lib/Images/cafe/lvl2/iiibf/1.png'),
                        title: const Text('STEP 1: KICT Cafeteria'),
                        subtitle: const Text(
                            'From cafe entrance (from the parking), where the printing shop is on your left, go straight'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 2: Turn right'),
                        subtitle: const Text('Go straight and turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/3.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 3: Turn left'),
                        subtitle: const Text('Go straight and turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/4.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 4: At the hallway'),
                        subtitle: const Text(
                            'Go straight passing all the musholla on your left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/6.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 5: Go to elevator'),
                        subtitle: const Text(
                            'Go to elevator on the left and go to level 2'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/7.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 6: At Level 2'),
                        subtitle:
                            const Text('Arrived at 2nd floor and go straight'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/8.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 7: At the hallway'),
                        subtitle: const Text('Go straight'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/9.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 8: Slight left'),
                        subtitle:
                            const Text('Go straight and then, a slight left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/10.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 9: Near the balcony'),
                        subtitle: const Text(
                            'Go straight again until the slight corner to the right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/11.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 10: At the hallway'),
                        subtitle: const Text(
                            'After that, go straight until junction'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/12.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 11: At the corner'),
                        subtitle: const Text('Go to the left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/13.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 12: At the hallway'),
                        subtitle: const Text('Go straight along the path'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/14.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 13: At the junction'),
                        subtitle: const Text('Turn left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/15.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 14: Pass the IIiBF Library'),
                        subtitle: const Text(
                            'Go straight pass the IIiBF library on the left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/16.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text(
                            'STEP 15: Walk a little bit and turn left'),
                        subtitle: const Text('it is on your left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/iiibf/17.png'), // Replace 'step3.jpg' with your actual image path
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
