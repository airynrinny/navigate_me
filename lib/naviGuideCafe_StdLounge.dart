import 'package:flutter/material.dart';

class NaviGuideCafe_StdLoungePage extends StatelessWidget {
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
                        leading: Image.asset('images/Cafelv1/1SLF.png'),
                        title: const Text('STEP 1: KICT Cafeteria'),
                        subtitle: const Text('Start at the cafeteria'),
                      ),
                      ListTile(
                      leading: Image.asset('images/Cafelv1/2SLF.png'), // Replace 'step2.jpg' with your actual image path
                      title: const Text('STEP 2: Junction'),
                      subtitle: const Text('Go to the left'),
                    ),
                     ListTile(
                      leading: Image.asset('images/Cafelv1/3SLF.png'), // Replace 'step3.jpg' with your actual image path
                      title: const Text('STEP 3: Go left'),
                      subtitle: const Text('Will see the musolla on the left'),
                    ),
                     ListTile(
                      leading: Image.asset('images/Cafelv1/4SLF.png'), // Replace 'step4.jpg' with your actual image path
                      title: const Text('STEP 4: Go straight'),
                      subtitle: const Text('Pass all the musolla on the left'),
                    ),
                     ListTile(
                      leading: Image.asset('images/Cafelv1/5SLF.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 5: Go straight'),
                      subtitle: const Text('You will see a tv on the right and glass door'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv1/6SLF.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 6: Go straight'),
                      subtitle: const Text('Will see the lift on the left'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv1/7SLF.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 7: CITA'),
                      subtitle: const Text('Go straight until uou see CITA, pass it and go left'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv1/8SLF.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 8: Go right'),
                      subtitle: const Text('After turning left, go right'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv1/9SLF.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 9: Go straight'),
                      subtitle: const Text('Will see two signs above left and above ahead'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv1/10SLF.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 10: Left at the junction'),
                      subtitle: const Text('Do not go right'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv1/11SLF.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 11: OR ahead'),
                      subtitle: const Text('Go straight until you can see the OR '),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv1/12SLF.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 12: OR on the left'),
                      subtitle: const Text('Continue straight until OR'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv1/13SLF.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 13: 3rd door on the right'),
                      subtitle: const Text('From OR just go straight and keep right'),
                    ),
                    ListTile(
                      leading: Image.asset('images/Cafelv1/MultimediaStudio2.png'), // Replace 'step5.jpg' with your actual image path
                      title: const Text('STEP 14: You have arrived!'),
                      subtitle: const Text('This is the female student lounge'),
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
