import 'package:flutter/material.dart';

class CafeCitaPage extends StatelessWidget {
  const CafeCitaPage({super.key});

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
                        'Destination: CITA',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      ListTile(
                        leading: Image.asset('lib/Images/cafe/lvl1/cita/1.png'),
                        title: const Text('STEP 1: KICT Cafeteria'),
                        subtitle: const Text(
                            'From cafe entrance (from the parking), where the printing shop is on your left, go straight'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/cita/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 2: Turn right'),
                        subtitle: const Text('Go straight and turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/cita/3.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 3: Turn left'),
                        subtitle: const Text('Go straight and turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/cita/4.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 4: At the hallway'),
                        subtitle: const Text(
                            'Go straight passing all the musholla on your left'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/cita/6.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 5: Near the elevator'),
                        subtitle: const Text(
                            'Go straight pass the elevator on the left, TV on the right and turn right after passing the 2nd glass door next to the main door'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/cafe/lvl1/cita/7.png'), // Replace 'step3.jpg' with your actual image path
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
