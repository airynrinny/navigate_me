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
                      ListTile(
                        leading: Image.asset('lib/Images/cafe/lvl2/mph/1.png'),
                        title: const Text('STEP 1: KICT Cafeteria'),
                        subtitle: const Text(
                            'From cafe entrance (from the parking), where the printing shop is on your left, go straight'),
                      ),
                      ListTile(
                        leading: Image.asset('lib/Images/cafe/lvl2/mph/2.png'),
                        title: const Text('STEP 2: Go to the stairs'),
                        subtitle: const Text(
                            'Turn left where you can see stairs leading to 2nd floor'),
                      ),
                      ListTile(
                        leading: Image.asset('lib/Images/cafe/lvl2/mph/3.png'),
                        title: const Text('STEP 3: Go to Level 2'),
                        subtitle: const Text(
                            'Go up the stairs to 2nd floor (current 1st floor)'),
                      ),
                      ListTile(
                        leading: Image.asset('lib/Images/cafe/lvl2/mph/4.png'),
                        title: const Text('STEP 4: At Level 2'),
                        subtitle:
                            const Text('Go up one floor and then turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl2/mph/5.png'), // Replace 'step3.jpg' with your actual image path
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
