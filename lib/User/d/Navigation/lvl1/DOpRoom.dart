import 'package:flutter/material.dart';

class DOpRoomPage extends StatelessWidget {
  const DOpRoomPage({super.key});

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
                    'Destination: Operating Room',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40.0),
                  ListTile(
                    leading: Image.asset('lib/Images/blockd/lvl1/or/1.png'),
                    title: const Text('STEP 1: Block D'),
                    subtitle: const Text('Go straight and turn right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/or/2.png'), // Replace 'step2.jpg' with your actual image path
                    title: const Text('STEP 2: At the hallway'),
                    subtitle: const Text(
                        'Go straight until you reach the corner (There is a fire extinguisher)'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/or/4.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 3: At the junction'),
                    subtitle: const Text('At the junction, turn right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/or/5.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 4: After the turn'),
                    subtitle: const Text('Go straight'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/or/6.png'), // Replace 'step3.jpg' with your actual image path
                    title: const Text('STEP 5: Open space'),
                    subtitle: const Text('Look on your right'),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'lib/Images/blockd/lvl1/or/7.png'), // Replace 'step3.jpg' with your actual image path
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
