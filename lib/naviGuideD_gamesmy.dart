import 'package:flutter/material.dart';

class NaviGuideD_GamesMyPage extends StatelessWidget {
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
                      const SizedBox(height: 40.0),
                      ListTile(
                        leading: Image.asset('assets/images/blockd-games/1.png'),
                        title: const Text('STEP 1: Go straight and turn right'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-games/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text(
                            'STEP 2: You will see a black door on your right'),
                        subtitle: const Text('explanation to go from here'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'assets/images/blockd-games/3.png'), // Replace 'step3.jpg' with your actual image path
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
