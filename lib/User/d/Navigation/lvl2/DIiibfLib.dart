import 'package:flutter/material.dart';

class DIiibfLibPage extends StatelessWidget {
  const DIiibfLibPage({super.key});

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
                      const Text(
                        'Destination: IIiBF Library',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40.0),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl1/iiibflib/1.png'),
                        title: const Text('STEP 1: Block D'),
                        subtitle:
                            const Text('Take the elevator and go to Level 2'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl1/iiibflib/2.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 2: At level 2'),
                        subtitle: const Text('Turn right'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl1/iiibflib/3.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 3: At the hallway'),
                        subtitle: const Text('Go straight'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl1/iiibflib/5.png'), // Replace 'step2.jpg' with your actual image path
                        title: const Text('STEP 4: There is a fake plant'),
                        subtitle: const Text(
                            'Turn to the room on your right after reaching the fake plant'),
                      ),
                      ListTile(
                        leading: Image.asset(
                            'lib/Images/blockd/lvl1/iiibflib/6.png'), // Replace 'step3.jpg' with your actual image path
                        title: const Text('You have arrived!'),
                      ),
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
