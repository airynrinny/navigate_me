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
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Destination: Multipurpose Hall',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      _buildStep('assets/images/Cafelv2/1MPH.png', 'STEP 1: KICT Cafeteria', 'Start at Cafe'),
                      _buildStep('assets/images/Cafelv2/2MPH.png', 'STEP 2: Junction', 'Go to the left where you see the stairs'),
                      _buildStep('assets/images/Cafelv2/3MPH.png', 'STEP 3: Go upstairs', 'Go up the stairs to 2nd floor'),
                      _buildStep('assets/images/Cafelv2/4MPH.png', 'STEP 4: End of stairs', 'After going up stairs, on the right MPH'),
                      _buildStep('assets/images/Cafelv2/5MPH.png', 'STEP 5: You have arrived!', 'This is the Multipurpose Hall'),
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
