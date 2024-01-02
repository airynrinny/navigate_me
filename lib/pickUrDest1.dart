import 'package:flutter/material.dart';
import 'package:fyp_project/startingPoint.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pickUrDest2.dart';
import 'pickUrDest3.dart';

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
                                    icon: const Icon(Icons.search, color: Colors.white),
                                    onPressed: () => _showSearchDialog(context),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 16.0),
                              const Column(
                                children: [
                                  Text(
                                    '1Navigate Me',
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
                              _buildCircularButton(context, '1', PickUrDest1Page()),
                              _buildCircularButton(context, '2', PickUrDest2Page()),
                              _buildCircularButton(context, '3', PickUrDest3Page()),
                              _buildCircularButton(context, '4', PickUrDest1Page()),
                              _buildCircularButton(context, '5', PickUrDest1Page()),
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
                          // Second row
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularButton(BuildContext context, String label, Widget destination) {
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
                _performSearch(searchQuery);

                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              child: const Text('Search', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }
}

void _performSearch(String searchQuery) {
  // Replace this with your actual search logic
  // For example, filter the images and descriptions based on the search query
  // You may need to maintain a list of original items and a filtered list
  // and update the UI accordingly.
  // You might also consider using a state management solution for more complex scenarios.

  // For demonstration purposes, let's just print the search query.
  print("Performing search with query: $searchQuery");
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
              color: Colors.black, // Set the color to indicate it's a link
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () {
            _navigateToStartingPointPage(context);
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

void _navigateToStartingPointPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StartingPointPage(title: 'NavigateMe'),
      ),
    );
  }
