import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'naviGuideCafe_StdLounge.dart';
import 'pickUrDest2.dart';
import 'pickUrDest3.dart';
import 'pickUrDest4.dart';
import 'pickUrDest5.dart';

class PickUrDest1Page extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/pickDestBG.png",
              fit: BoxFit.cover,
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10.0),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.search,
                                        color: Colors.white),
                                    onPressed: () => _showSearchDialog(context),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 16.0),
                              const Column(
                                children: [
                                  Text(
                                    'Navigate Me',
                                    style: TextStyle(
                                      fontSize: 44,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Pick Your Destination - Level 1',
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
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildCircularButton(context, '1', PickUrDest1Page()),
                              _buildCircularButton(context, '2', PickUrDest2Page()),
                              _buildCircularButton(context, '3', PickUrDest3Page()),
                              _buildCircularButton(context, '4', PickUrDest4Page()),
                              _buildCircularButton(context, '5', PickUrDest5Page()),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'assets/images/Cafelv1/MultimediaStudio1.png',
                                  description: 'Male Std Lounge',
                                  url: 'https://www.example.com/1',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'assets/images/Cafelv1/MultimediaStudio2.png',
                                  description: 'Female Std Lounge',
                                  url: 'https://www.example.com/2',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'assets/images/Cafelv1/OR.png',
                                  description: 'Operation Room',
                                  url: 'https://www.example.com/3',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'assets/images/Cafelv1/MaleMusolla.png',
                                  description: 'Male Musolla',
                                  url: 'https://www.example.com/4',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'assets/images/Cafelv1/Musollafemale.png',
                                  description: 'Female Musolla',
                                  url: 'https://www.example.com/5',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'assets/images/Cafelv1/HamzahFansuri.png',
                                  description: 'Hamzah Fansuri',
                                  url: 'https://www.example.com/6',
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'assets/images/Cafelv1/Gamesmy.png',
                                  description: 'Gamesmy',
                                  url: 'https://www.example.com/4',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'assets/images/Cafelv1/CITA.png',
                                  description: 'Centre of IT Advancement',
                                  url: 'https://www.example.com/5',
                                ),
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
      radius: 20,
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

  Future<void> _showSearchDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Search'),
          content: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: 'Enter your search query...',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                String searchQuery = _searchController.text;
                print("Search Button Pressed with query: $searchQuery");
                // Add your search functionality here
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              child:
                  const Text('Search', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }
}

class ImageWithDescription extends StatelessWidget {
  final String imagePath;
  final String description;
  final String url;

  const ImageWithDescription(
      {required this.imagePath, required this.description, required this.url});

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
            _launchURL(url);
          },
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () {
            _handleFindButtonPress(context);
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

  void _handleFindButtonPress(BuildContext context) {
    // Modify the logic based on your requirements
    if (description == 'Male Std Lounge') {
      
    } else if (description == 'Female Std Lounge') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NaviGuideCafe_StdLoungePage(),
        ),
      );
    } else if (description == 'Operation Room') {
      // Handle the destination for the third button
    } else if (description == 'Male Musolla') {
      // Handle the destination for the fourth button
    } else if (description == 'Female Musolla') {
      // Handle the destination for the fifth button
    } else if (description == 'Hamzah Fansuri') {
      // Handle the destination for the sixth button
    } else if (description == 'Gamesmy') {
      // Handle the destination for the sixth button
    } else if (description == 'Centre of IT Advancement') {
      // Handle the destination for the sixth button
    }
  }
}
