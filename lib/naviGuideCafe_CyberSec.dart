import 'package:flutter/material.dart';

class NaviGuideCafe_CyberSecPage extends StatelessWidget {
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
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Starting point: CyberSecurity',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      _buildStep('assets/images/Cafelv3/1.png', 'STEP 1: KICT Cafeteria', 'Start at the Cafe'),
                      _buildStep('assets/images/Cafelv3/2.png', 'STEP 2: Junction', 'To the right'),
                      _buildStep('assets/images/Cafelv3/3.png', 'STEP 3: Go straight to the left', 'Will see musolla on the left'),
                      _buildStep('assets/images/Cafelv3/4.png', 'STEP 4: Pass the musolla', 'Go straight'),
                      _buildStep('assets/images/Cafelv3/5.png', 'STEP 5:  Glass door, TV and lift', 'Go straight until you see lift on the left'),
                      _buildStep('assets/images/Cafelv3/6.png', 'STEP 6: Lift on the left', 'Go to lift on the left, go to level 3'),
                      _buildStep('assets/images/Cafelv3/7.png', 'STEP 7: Level 3', 'Go straight from lift'),
                      _buildStep('assets/images/Cafelv3/8.png', 'STEP 8: DEANS OFFICE sign', 'Go straight until sign, then slight left'),
                      _buildStep('assets/images/Cafelv3/9.png', 'STEP 9: OSHBE sign', 'Go straight until the sign on the wall'),
                      _buildStep('assets/images/Cafelv3/10.png', 'STEP 10: Hallway go straight', 'Just go straight until slight curve to left'),
                      _buildStep('assets/images/Cafelv3/CyberSecurity.png', 'STEP 11: Cyber Security sign', 'Cyber Security on the right'),
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

  Widget _buildStep(String imagePath, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 150,  // Adjust the width as needed
            height: 150, // Adjust the height as needed
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontFamily: 'Times New Roman', fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
