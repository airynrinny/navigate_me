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
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Starting point: Department of Computer Science',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      _buildStep('assets/images/Cafelv4/1DCS.png', 'STEP 1: KICT Cafeteria', 'Start at cafe'),
                      _buildStep('assets/images/Cafelv4/2DCS.png', 'STEP 2: Junction', 'To the left'),
                      _buildStep('assets/images/Cafelv4/3DCS.png', 'STEP 3: Musolla on the left', 'Go straight to left'),
                      _buildStep('assets/images/Cafelv4/4DCS.png', 'STEP 4: Pass musolla on the left', 'Go straight'),
                      _buildStep('assets/images/Cafelv4/5DCS.png', 'STEP 5: Glass door, TV, lift', 'Go straight to the lift'),
                      _buildStep('assets/images/Cafelv4/6DCS.png', 'STEP 6: Lift on the left', 'Go to lift on the left, go to level 4'),
                      _buildStep('assets/images/Cafelv4/7DCS.png', 'STEP 7: Level 4', 'Go straight'),
                      _buildStep('assets/images/Cafelv4/8DCS.png', 'STEP 8: Hallway', 'Go straight'),
                      _buildStep('assets/images/Cafelv4/9DCS.png', 'STEP 9: Pass the DIS', 'Go straight, turn slight left'),
                      _buildStep('assets/images/Cafelv4/10DCS.png', 'STEP 10: Research unit 10', 'Go straight until research unit 10'),
                      _buildStep('assets/images/Cafelv4/11DCS.png', 'STEP 11: Straight until blue bin', 'Go straight, see Research unit 10 on the left'),
                      _buildStep('assets/images/Cafelv4/12DCS.png', 'STEP 12: You have arrived!', 'Department of Computer Science'),
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
