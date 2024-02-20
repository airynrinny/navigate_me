import 'package:flutter/material.dart';

class CafeFemLoungePage extends StatelessWidget {
  const CafeFemLoungePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
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
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Starting point: KICT Cafeteria',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Destination: Female Student Lounge',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40.0),
                  ListTile(
                    leading: Image.asset('lib/Images/cafe/lvl1/lounge/1.png'),
                    title: const Text('STEP 1: KICT Cafeteria'),
                    subtitle: const Text(
                        'From cafe entrance (from the parking), where the printing shop is on your left, go straight'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/2.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 2: Turn right'),
                    subtitle: const Text('Go straight and turn right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/3.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 3: Turn left'),
                    subtitle: const Text('Go straight and turn right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/4.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 4: At the hallway'),
                    subtitle: const Text(
                        'Go straight passing all the musholla on your left'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/6.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 5: Near the elevator'),
                    subtitle: const Text(
                        'Go straight pass the elevator on the left and main door on the right to the CITA lab also on the right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/7.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 6: After CITA'),
                    subtitle: const Text('Turn left'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/8.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 7: Corner'),
                    subtitle: const Text('Turn right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/9.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 8: After the corner'),
                    subtitle: const Text(
                        'Go along the path until you can the LR C1 / TL C1 sign above on the left'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/10.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 9: After the sign'),
                    subtitle: const Text('At the corner, turn left'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/12.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 10: OR sign'),
                    subtitle:
                        const Text('Go straight until you can see OR sign'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/13.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 11: Male Student Lounge'),
                    subtitle: const Text(
                        'Go straight pass the multimedia studio 1 (male SL) and it the 3rd door on the right from where you are on the right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/cafe/lvl1/lounge/14.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('You have arrived!'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
