import 'package:flutter/material.dart';

class DMalMusollaPage extends StatelessWidget {
  const DMalMusollaPage({super.key});

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
                    'Starting point: Block D',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Destination: Male Musolla',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40.0),
                  ListTile(
                    leading:
                        Image.asset('lib/Images/blockd/lvl1/musolla/1.png'),
                    title: const Text('STEP 1: Block D'),
                    subtitle: const Text('Go straight and turn right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/musolla/2.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 2: At the hallway'),
                    subtitle: const Text(
                        'Go straight until you reach the corner (There is a fire extinguisher)'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/musolla/4.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 3: At the junction'),
                    subtitle: const Text('At the junction, turn right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/musolla/6.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 4: Open space'),
                    subtitle: const Text('Go straight'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/musolla/7.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 5: At the junction'),
                    subtitle: const Text('At the junction, turn right again'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/musolla/8.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 6: At the hallway'),
                    subtitle: const Text(
                        'Go straight and turn left when you see the fire extinguisher'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/musolla/9.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 7: At the corner'),
                    subtitle: const Text('Go straight and turn left'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/musolla/10.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 8: At the corner'),
                    subtitle: const Text('And then make a right turn'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/musolla/11.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 9: Near the main entrance'),
                    subtitle: const Text(
                        'Go straight pass through the second glass door'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/musolla/14.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 10: After the glass door'),
                    subtitle: const Text(
                        'Walk pass the female musholla and turn right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/musolla/15.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('You have arrived!'),
                  ),
                  // ListTile(
                  //     title: const Text('JUMP TO STEP'),
                  //     onTap: () {
                  //       // navigate to desired step
                  //     },
                  //   ),
                ],
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
