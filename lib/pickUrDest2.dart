import 'package:flutter/material.dart';

class PickUrDest2Page extends StatelessWidget {
  const PickUrDest2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Stack(
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
                      Expanded(child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                          ),
                          child: Text('Button 1', style: TextStyle(color: Colors.black)),
                        ),),
                        Expanded(child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                          ),
                          child: Text('Button 2', style: TextStyle(color: Colors.black)),
                        ),),
                        Expanded(child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                          ),
                          child: Text('Button 3', style: TextStyle(color: Colors.black)),
                        ),),
                        Expanded(child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                          ),
                          child: Text('Button 4', style: TextStyle(color: Colors.black)),
                        ),),
                        Expanded(child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                          ),
                          child: Text('Button 5', style: TextStyle(color: Colors.black)),
                        ),)
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



class ImageWithDescription extends StatelessWidget {
  final String imagePath;
  final String description;

  const ImageWithDescription({required this.imagePath, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8.0),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () {
            // Handle the button press, e.g., navigate to the next page
            print("Find Button Pressed for $description");
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: const Text('Find', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}