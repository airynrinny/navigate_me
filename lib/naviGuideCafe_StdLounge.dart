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
                      _buildStep('assets/images/Cafelv1/1SLF.png', 'STEP 1: KICT Cafeteria', 'Start at the cafeteria'),
                      _buildStep('assets/images/Cafelv1/2SLF.png', 'STEP 2: Junction', 'Go to the left'),
                      _buildStep('assets/images/Cafelv1/3SLF.png', 'STEP 3: Go left', 'Will see the musolla on the left'),
                      _buildStep('assets/images/Cafelv1/4SLF.png', 'STEP 4: Go straight', 'Pass all the musolla on the left'),
                      _buildStep('assets/images/Cafelv1/5SLF.png', 'STEP 5: Go straight', 'You will see a TV on the right and glass door'),
                      _buildStep('assets/images/Cafelv1/6SLF.png', 'STEP 6: Go straight', 'Will see the lift on the left'),
                      _buildStep('assets/images/Cafelv1/7SLF.png', 'STEP 7: CITA', 'Go straight until you see CITA, pass it and go left'),
                      _buildStep('assets/images/Cafelv1/8SLF.png', 'STEP 8: Go right', 'After turning left, go right'),
                      _buildStep('assets/images/Cafelv1/9SLF.png', 'STEP 9: Go straight', 'Will see two signs above left and above ahead'),
                      _buildStep('assets/images/Cafelv1/10SLF.png', 'STEP 10: Left at the junction', 'Do not go right'),
                      _buildStep('assets/images/Cafelv1/11SLF.png', 'STEP 11: OR ahead', 'Go straight until you can see the OR'),
                      _buildStep('assets/images/Cafelv1/12SLF.png', 'STEP 12: OR on the left', 'Continue straight until OR'),
                      _buildStep('assets/images/Cafelv1/13SLF.png', 'STEP 13: 3rd door on the right', 'From OR just go straight and keep right'),
                      _buildStep('assets/images/Cafelv1/MultimediaStudio2.png', 'STEP 14: You have arrived!', 'This is the female student lounge'),
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
