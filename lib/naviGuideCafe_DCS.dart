import 'package:flutter/material.dart';

class NaviGuideCafe_DCSPage extends StatelessWidget {
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
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Starting point: Cafe',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      ListTile(
                        leading: Image.asset('images/Cafelv4/1DCS.png'),
                        title: const Text('STEP 1: KICT Cafeteria'),
                        subtitle: const Text('Start at cafe'),
                      ),
                      ListTile(
                      leading: Image.asset('images/Cafelv4/2DCS.png'), // Replace 'step2.jpg' with your actual image path
                      title: const Text('STEP 2: Junction'),
                      subtitle: const Text('To the left'),
                    ),
                     ListTile(
                      leading: Image.asset('images/Cafelv4/3DCS.png'), // Replace 'step3.jpg' with your actual image path
                      title: const Text('STEP 3: Musolla on the left'),
                      subtitle: const Text('Go straight to left'),
                    ),
                     ListTile(
                      leading: Image.asset('images/Cafelv4/4DCS.png'), // Replace 'step4.jpg' with your actual image path
                      title: const Text('STEP 4: Pass musolla on the left'),
                      subtitle: const Text('Go straight'),
                    ),
                     ListTile(
                      leading: Image.asset('images/Cafelv4/5DCS.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 5: Glass door, TV, lift'),
                      subtitle: const Text('Go straight to the lift'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv4/6DCS.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 6: Lift on the left'),
                      subtitle: const Text('Go to lift on the left, go to level 4'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv4/7DCS.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 7: Level 4'),
                      subtitle: const Text('Go straight'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv4/8DCS.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 8: Hallway'),
                      subtitle: const Text('Go straight'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv4/9DCS.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 9: Pass the DIS'),
                      subtitle: const Text('Go straight, turn slight left'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv4/10DCS.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 10: Research unit 10'),
                      subtitle: const Text('Go straight until research unit 10'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv4/11DCS.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 11: Straight until blue bin'),
                      subtitle: const Text('Go straight, see Research unit 10 on the left'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv4/12DCS.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 12: You have arrived!'),
                      subtitle: const Text('Department of Computer Science'),
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
        ),
      ),
    );
  }
}
