import 'package:flutter/material.dart';

class DCafePage extends StatelessWidget {
  const DCafePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
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
                    'Starting point: Block D',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Destination: KICT Cafeteria',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40.0),
                  _ListTile(
                    'lib/Images/blockd/lvl1/cafe/1.png',
                    'STEP 1: Block D',
                    'Go straight and turn right',
                  ),
                  _ListTile(
                      'lib/Images/blockd/lvl1/cafe/2.png', // Replace 'step2.jpg' with your actual image path
                      'STEP 2: At the hallway',
                      'Go straight until you reach the corner (There is a fire extinguisher)'),
                  _ListTile(
                    'lib/Images/blockd/lvl1/cafe/4.png', // Replace 'step3.jpg' with your actual image path
                    'STEP 3: At the junction',
                    'At the junction, turn right',
                  ),
                  _ListTile(
                    'lib/Images/blockd/lvl1/cafe/6.png', // Replace 'step3.jpg' with your actual image path
                    'STEP 4: Open space',
                    'Go straight',
                  ),
                  _ListTile(
                    'lib/Images/blockd/lvl1/cafe/7.png', // Replace 'step3.jpg' with your actual image path
                    'STEP 5: At the junction',
                    'At the junction, turn right again',
                  ),
                  _ListTile(
                    'lib/Images/blockd/lvl1/cafe/8.png', // Replace 'step3.jpg' with your actual image path
                    'STEP 6: At the hallway',
                    'Go straight and turn left when you see the fire extinguisher',
                  ),
                  _ListTile(
                      'lib/Images/blockd/lvl1/cafe/9.png', // Replace 'step3.jpg' with your actual image path
                      'STEP 7: At the corner',
                      'Go straight and turn left'),

                  _ListTile(
                      'lib/Images/blockd/lvl1/cafe/10.png', // Replace 'step3.jpg' with your actual image path
                      'STEP 8: At the corner',
                      'And then make a right turn'),

                  _ListTile(
                      'lib/Images/blockd/lvl1/cafe/11.png', // Replace 'step3.jpg' with your actual image path
                      'STEP 9: Near the elevator',
                      'Go straight pass through the glass door until you can see musolla on your right '),

                  _ListTile(
                      'lib/Images/blockd/lvl1/cafe/13.png', // Replace 'step3.jpg' with your actual image path
                      'STEP 10: Musolla',
                      'Passing through the musholla, turn right'),

                  _ListTile(
                      'lib/Images/blockd/lvl1/cafe/14.png', // Replace 'step3.jpg' with your actual image path
                      'STEP 10: After the turn',
                      'Follow the path and turn left'),

                  _ListTile(
                    'lib/Images/blockd/lvl1/cafe/15.png', // Replace 'step3.jpg' with your actual image path
                    'You have arrived!', '',
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
    )));
  }

  Widget _ListTile(String imagePath, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 150, // Adjust the width as needed
            height: 150, // Adjust the height as needed
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontFamily: 'Times New Roman', fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
