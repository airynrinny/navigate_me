import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:navigate_me/User/d/Level/DpickUrDest1.dart';
import 'package:navigate_me/User/cafe/Level/pickUrDest1.dart';

class StartingPointPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "lib/Images/startingPointBg.png",
              fit: BoxFit.cover,
            ),
            // Centered content
            Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 70),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 0),
                              Column(
                                children: [
                                  Text(
                                    'Navigate Me',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 44,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Pick Your Starting point',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 100),
                          // Two rows of images with descriptions
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // First row
                              Expanded(
                                child: ImageWithDescription(
                                    imagePath: 'lib/Images/block_d.jpg',
                                    description: 'Block D',
                                    url: 'https://www.example.com/1',
                                    destination: DDestLvl1()),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          // Second row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageWithDescription(
                                    imagePath: 'lib/Images/cafe.png',
                                    description: 'KICT Cafeteria',
                                    url: 'https://www.example.com/1',
                                    destination: PickUrDest1Page()),
                              ),
                            ],
                          ),
                        ],
                      ),
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

  Widget _buildCircularButton(
      BuildContext context, String label, Widget destination) {
    return CircleAvatar(
      radius: 20, // Adjust the radius as needed
      backgroundColor: Colors.white,
      child: ElevatedButton(
        onPressed: () {
          print("Button Pressed for $label");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => destination,
            ),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Text(
          label,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

class ImageWithDescription extends StatelessWidget {
  final String imagePath;
  final String description;
  final String url;
  final Widget destination;

  const ImageWithDescription(
      {required this.imagePath,
      required this.description,
      required this.url,
      required this.destination});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            _launchURL(url); // Add the URL you want to open
          },
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black, // Set the color to indicate it's a link
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => destination),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: const Text('Start', style: TextStyle(color: Colors.black)),
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
