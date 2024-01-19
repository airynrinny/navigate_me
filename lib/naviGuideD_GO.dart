import 'package:flutter/material.dart';

class NaviGuideD_GOPage extends StatelessWidget {
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
                        leading: Image.asset('assets/images/blockd-go/1.png'),
                        title: const Text(
                            'STEP 1: Take the elevator and go to Level 5'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-go/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 2: Turn right'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-go/3.png'), // Replace 'step3.jpg' with your actual image path
                        title: const Text(
                            'STEP 3: Go straight until you reach the corner'),
                        subtitle: const Text('explanation to go from here'),
                      ),

                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-go/4.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('STEP 4: Turn right'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-go/5.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text(
                            'STEP 5: Go into the room and turn left'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-go/6.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('STEP 6: Go straight along the path'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-go/7.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('STEP 7: Go straight and turn left'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-go/8.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('STEP 8: Go straight and turn left'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-go/9.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('STEP 9: Go straight'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-go/10.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text(
                            'STEP 10: Go straight to the glass door'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-go/11.png'), // Replace 'step4.jpg' with your actual image path
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
