import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'DpickUrDest5.dart';
import 'DpickUrDest2.dart';
import 'DpickUrDest3.dart';
import 'DpickUrDest4.dart';
import 'naviGuideD_gamesmy.dart';

class DPickUrDest1Page extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

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
                                    '1DNavigate Me',
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
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildCircularButton(
                                  context, '1', DPickUrDest1Page()),
                              _buildCircularButton(
                                  context, '2', DPickUrDest2Page()),
                              _buildCircularButton(
                                  context, '3', DPickUrDest3Page()),
                              _buildCircularButton(
                                  context, '4', DPickUrDest4Page()),
                              _buildCircularButton(
                                  context, '5', DPickUrDest5Page()),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/destL1/gamesmy.jpg',
                                  description: 'GamesMy',
                                  url: 'https://www.example.com/3',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/destL1/loungeM.jpg',
                                  description: 'Male Student Lounge',
                                  url: 'https://www.example.com/1',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/destL1/loungeF.jpg',
                                  description: 'Female Student Lounge',
                                  url: 'https://www.example.com/2',
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
                                  imagePath: 'images/destL1/or.jpg',
                                  description: 'ICTSS Operation Room',
                                  url: 'https://www.example.com/3',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/destL1/cita.jpg',
                                  description: 'CITA',
                                  url: 'https://www.example.com/3',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/destL1/hamzah.jpg',
                                  description: 'Hamzah Famsuri Resource Centre',
                                  url: 'https://www.example.com/3',
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/destL1/musollaF.jpg',
                                  description: 'Female Musholla',
                                  url: 'https://www.example.com/3',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/destL1/musollaM.jpg',
                                  description: 'Male Musholla',
                                  url: 'https://www.example.com/3',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/destL1/cafe.jpg',
                                  description: 'KICT Cafeteria',
                                  url: 'https://www.example.com/3',
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
    if (description == 'GamesMy') {
    } else if (description == 'Male Student Lounge') {
      // Handle the destination for the second button
    } else if (description == 'Female Student Lounge') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NaviGuideD_GamesMyPage(),
        ),
      );
    } else if (description == 'ICTSS Operating Room') {
      // Handle the destination for the fourth button
    } else if (description == 'CITA') {
      // Handle the destination for the fifth button
    } else if (description == 'Female Musolla') {
      // Handle the destination for the sixth button
    } else if (description == 'Male Musolla') {
      // Handle the destination for the sixth button
    } else if (description == 'KICT Cafeteria') {
      // Handle the destination for the sixth button
    }
  }
}
