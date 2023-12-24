import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10.0),
                    const Text(
                      'Navigate Me',
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'Pick Your Destination',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              print("Button Pressed for button 1");
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PickUrDest1Page(),
                          ),
                        );
                            },
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            child: const Text('Button 1', style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              print("Button Pressed for button 1");
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PickUrDest2Page(),
                          ),
                        );
                            },
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            child: const Text('Button 2', style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              print("Button Pressed for button 1");
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PickUrDest1Page(),
                          ),
                        );
                            },
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            child: const Text('Button 3', style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              print("Button Pressed for button 1");
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PickUrDest1Page(),
                          ),
                        );
                            },
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            child: const Text('Button 4', style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              print("Button Pressed for button 1");
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PickUrDest1Page(),
                          ),
                        );
                            },
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Colors.white),
                            ),
                            child: const Text('Button 5', style: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    // Two rows of images with descriptions
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // First row
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/UIAM.jpg', description: 'Description 1', url: 'https://www.example.com/1'),
                        ),
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/UIAM.jpg', description: 'Description 2', url: 'https://www.example.com/2'),
                        ),
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/UIAM.jpg', description: 'Description 3', url: 'https://www.example.com/3'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Second row
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/iium_logo.png', description: 'Description 4', url: 'https://www.example.com/4'),
                        ),
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/iium_logo.png', description: 'Description 5', url: 'https://www.example.com/5'),
                        ),
                        Expanded(
                          child: ImageWithDescription(imagePath: 'images/iium_logo.png', description: 'Description 6', url: 'https://www.example.com/6'),
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
  final String url;

  const ImageWithDescription({required this.imagePath, required this.description, required this.url});

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
        GestureDetector(
          onTap: () {
            _launchURL(url); // Add the URL you want to open
          },
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.blue, // Set the color to indicate it's a link
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () {
            print("Find Button Pressed for $description");
            // Handle the button press, e.g., navigate to the next page
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: const Text('Find', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
