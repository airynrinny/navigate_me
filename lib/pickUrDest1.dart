import 'package:flutter/material.dart';
import 'pickUrDest2.dart';

class PickUrDest1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "images/pickDestBG.png",
              fit: BoxFit.cover,
            ),
            // Centered content
            const Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10.0),
                    Text(
                      'Navigate Me',
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Pick Your Destination',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle button 1 press
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Text('Button 1', style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigate to PickUrDest2Page
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PickUrDest2Page()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Text('Button 2', style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Text('Button 3', style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Text('Button 4', style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            child: Text('Button 5', style: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    // Two rows of images with descriptions
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // First row
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/UIAM.jpg', description: 'Description 1'),
                        ),
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/UIAM.jpg', description: 'Description 2'),
                        ),
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/UIAM.jpg', description: 'Description 3'),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Second row
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/iium_logo.png', description: 'Description 4'),
                        ),
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/iium_logo.png', description: 'Description 5'),
                        ),
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/iium_logo.png', description: 'Description 6'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
