import 'package:flutter/material.dart';

class NaviGuideCafe_MHPPage extends StatelessWidget {
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
                        leading: Image.asset('images/Cafelv2/1MPH.png'),
                        title: const Text('STEP 1: KICT Cafeteria'),
                        subtitle: const Text('Start at Cafe'),
                      ),
                      ListTile(
                      leading: Image.asset('images/Cafelv2/2MPH.png'), // Replace 'step2.jpg' with your actual image path
                      title: const Text('STEP 2: Junction'),
                      subtitle: const Text('Go to the left where you see the stairs'),
                    ),
                     ListTile(
                      leading: Image.asset('images/Cafelv2/3MPH.png'), // Replace 'step3.jpg' with your actual image path
                      title: const Text('STEP 3: Go upstairs'),
                      subtitle: const Text('Go up the stairs to 2nd floor'),
                    ),
                     ListTile(
                      leading: Image.asset('images/Cafelv2/4MPH.png'), // Replace 'step4.jpg' with your actual image path
                      title: const Text('STEP 4: End of stairs'),
                      subtitle: const Text('After go up stairs, on the right MPH'),
                    ),
                     ListTile(
                      leading: Image.asset('images/Cafelv2/5MPH.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 5: You have arrived!'),
                      subtitle: const Text('This is the Multipurpose Hall'),
                    ),
                      // ListTile(
                      //   title: const Text('JUMP TO STEP'),
                      //   onTap: () {
                      //     // navigate to desired step
                      //   },
                      // ),
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
