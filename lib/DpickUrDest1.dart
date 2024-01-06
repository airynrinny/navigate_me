import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'DpickUrDest5.dart';
import 'DpickUrDest2.dart';
import 'DpickUrDest3.dart';
import 'DpickUrDest4.dart';
import 'naviGuideD_gamesmy.dart';

/*void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirestoreImageDisplay(),
  ));
}*/

class FirestoreImageDisplay extends StatefulWidget {
  const FirestoreImageDisplay({super.key});

  @override
  State<FirestoreImageDisplay> createState() => DPickUrDest1Page();
}

class DPickUrDest1Page extends FirestoreImageDisplay {
  final TextEditingController _searchController = TextEditingController();
  late String imageURl;
  final storage = FirebaseStorage.instance;
  void initState() {
    super.initState();
    imageURl = '';
    getImageUrl();
  }

  Future<void> getImageUrl() async {
    // Get the reference to the image file in Firebase Storage
    final ref = storage.ref().child('banner.jpg');
    // Get teh imageUrl to download URL
    final url = await ref.getDownloadURL();
    setState(() {
      imageURl = url;
    });
  }

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
                                  imagePath: 'images/UIAM.jpg',
                                  description: 'Description 1',
                                  url: 'https://www.example.com/1',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/UIAM.jpg',
                                  description: 'Description 2',
                                  url: 'https://www.example.com/2',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/UIAM.jpg',
                                  description: 'Description 3',
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
                                  imagePath: 'images/iium_logo.png',
                                  description: 'Description 4',
                                  url: 'https://www.example.com/4',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/iium_logo.png',
                                  description: 'Description 5',
                                  url: 'https://www.example.com/5',
                                ),
                              ),
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/iium_logo.png',
                                  description: 'Description 6',
                                  url: 'https://www.example.com/5',
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ImageWithDescription(
                                  imagePath: 'images/iium_logo.png',
                                  description: 'Description 7',
                                  url: 'https://www.example.com/4',
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
    if (description == 'Description 1') {
    } else if (description == 'Description 2') {
      // Handle the destination for the second button
    } else if (description == 'Description 3') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NaviGuideD_GamesMyPage(),
        ),
      );
    } else if (description == 'Description 4') {
      // Handle the destination for the fourth button
    } else if (description == 'Description 5') {
      // Handle the destination for the fifth button
    } else if (description == 'Description 6') {
      // Handle the destination for the sixth button
    } else if (description == 'Description 7') {
      // Handle the destination for the sixth button
    }
  }
}
