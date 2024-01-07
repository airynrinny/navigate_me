import 'package:flutter/material.dart';

class NaviGuideD_CafePage extends StatelessWidget {
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
                        leading: Image.asset('images/blockd-cafe/1.png'),
                        title: const Text('STEP 1: Go straight and turn right'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text(
                            'STEP 2: Go straight until you reach the corner'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/4.png'), // Replace 'step3.jpg' with your actual image path
                        title: const Text('STEP 3: At the corner, turn right'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/5.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text(
                            'STEP 4: Go straight until you reach the corner'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/7.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text(
                            'STEP 5: At the corner, turn right again'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/8.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text(
                            'STEP 6: Go straight and turn left when you see the fire extinguisher'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/9.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('STEP 7: Go straight and turn left'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/10.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text('STEP 8: And then make a right turn'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/11.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text(
                            'STEP 9: Go straight pass through the blass door until you can see musholla on your right'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/13.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text(
                            'STEP 10: Passing through the musholla, turn right'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/14.png'), // Replace 'step4.jpg' with your actual image path
                        title: const Text(
                            'STEP 11: Follow the path and turn left'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'images/blockd-cafe/15.png'), // Replace 'step4.jpg' with your actual image path
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
