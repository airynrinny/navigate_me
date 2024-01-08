import 'package:flutter/material.dart';

class NaviGuideCafe_ConfRoomPage extends StatelessWidget {
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
                      _buildStep('assets/images/Cafelv5/1CR.png', 'STEP 1: KICT Cafeteria', 'Go straight until you see the junction'),
                      _buildStep('assets/images/Cafelv5/2CR.png', 'STEP 2: Junction', 'After going straight, turn right to go to the lift'),
                      _buildStep('assets/images/Cafelv5/3CR.png', 'STEP 3: Musolla on the left', 'After turning right, keep walking and turn left to see the musolla on your left'),
                      _buildStep('assets/images/Cafelv5/4CR.png', 'STEP 4: To the lift', 'Passing all the Musolla on your left, just walk straight'),
                      _buildStep('assets/images/Cafelv5/6CR.png', 'STEP 5: Turn left at the glass door', 'Go to the lift on the left and go to level 5'),
                      _buildStep('assets/images/Cafelv5/7CR.png', 'STEP 6: Level 5', 'Go straight and pass the TV'),
                      _buildStep('assets/images/Cafelv5/8CR.png', 'STEP 7: Yellow door', 'Go straight until you see yellow doors with stairs'),
                      _buildStep('assets/images/Cafelv5/ConferenceRoom.png', 'STEP 8: You have arrived!', 'You are at the Conference Room, you can see the General office on your right'),
                      // Add more steps as needed
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
                Text(subtitle, style: const TextStyle(fontFamily: 'Times New Roman', fontSize: 16),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
