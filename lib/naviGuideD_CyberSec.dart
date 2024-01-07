import 'package:flutter/material.dart';

class NaviGuideD_CyberSecPage extends StatelessWidget {
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
                      const SizedBox(height: 40.0),
                      ListTile(
                        leading: Image.asset('images/blockd-cyber/1.png'),
                        title: const Text(
                            'STEP 1: Take the elevator and go to Level 3'),
                        subtitle:
                            const Text('Take the elevator and go to Level 3'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cyber/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 2: Turn right'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cyber/3.png'), // Replace 'step3.jpg' with your actual image path
                        title: const Text(
                            'STEP 3: Go straight until you reach the corner'),
                        subtitle: const Text(
                            'Go straight until you reach the corner'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cyber/4.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('STEP 4: At the corner, turn right'),
                        subtitle: const Text('At the corner, turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cyber/5.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('STEP 5: Go straight'),
                        subtitle: const Text('Go straight'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cyber/6.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('STEP 6: Turn right'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cyber/7.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text(
                            'STEP 7: Turn left before the fire extinguisher'),
                        subtitle: const Text('You have arrived'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cyber/8.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('You have arrived!'),
                        subtitle: const Text('explanation to go from here'),
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
