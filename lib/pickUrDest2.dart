import 'package:flutter/material.dart';
import 'package:fyp_project/naviGuideCafe_MPH.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pickUrDest1.dart';
import 'pickUrDest3.dart';
import 'pickUrDest4.dart';
import 'pickUrDest5.dart';

class PickUrDest2Page extends StatelessWidget {
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
                                    'Pick Your Destination - Level 2',
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
                          // Two rows of images with descriptions
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // First row
                              Expanded(
                                child: ImageWithDescription(
                                    imagePath: 'assets/images/Cafelv2/5MPH.png',
                                    description: 'MPH',
                                    url: 'https://www.example.com/1'),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                    imagePath: 'assets/images/Cafelv2/PGOffice.png',
                                    description: 'PG Office',
                                    url: 'https://www.example.com/2'),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                    imagePath: 'assets/images/Cafelv2/IIBFLib.png',
                                    description: 'IiBF Library',
                                    url: 'https://www.example.com/3'),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          // Second row
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageWithDescription(
                                    imagePath: 'assets/images/Cafelv2/IIBF.png',
                                    description: 'IiBF',
                                    url: 'https://www.example.com/4'),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                    imagePath: 'assets/images/Cafelv2/IAT.png',
                                    description: 'IAT',
                                    url: 'https://www.example.com/5'),
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
                _performSearch(context, searchQuery);
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

  void _performSearch(BuildContext context, String searchQuery) {
    // Implement your search logic here
    // For example, you can filter the destinations based on the search query
    List<String> destinations = [
      'MPH',
      'PG Office',
      'IiBF Library',
      'IiBF',
      'IAT',
    ];

    List<String> filteredDestinations = destinations
        .where((destination) =>
            destination.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    // Display the filtered destinations
    _showSearchResultsDialog(context, filteredDestinations);
  }

  void _showSearchResultsDialog(
      BuildContext context, List<String> results) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Search Results'),
          content: Column(
            children: results
                .map((result) => ListTile(
                      title: Text(result),
                      // Add logic to navigate to the selected destination when tapped
                      onTap: () {
                        // Handle the tap, e.g., navigate to the selected destination
                        Navigator.pop(context);
                      },
                    ))
                .toList(),
          ),
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
    if (description == 'MPH') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NaviGuideCafe_MHPPage(),
        ),
      );
    } else if (description == 'PG Office') {
      // Handle the destination for 'PG Office'
    } else if (description == 'IiBF Library') {
      // Handle the destination for 'IiBF Library'
    } else if (description == 'IiBF') {
      // Handle the destination for 'IiBF'
    } else if (description == 'IAT') {
      // Handle the destination for 'IAT'
    }
    // Add more conditions if needed for other destinations
  }
}
