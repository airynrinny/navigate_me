import 'package:flutter/material.dart';

class ImageData {
  final String imagePath;
  final String description;
  final String url;

  ImageData({required this.imagePath, required this.description, required this.url});
}

class AdminPickUrDest1Page extends StatefulWidget {
  @override
  _AdminPickUrDest1PageState createState() => _AdminPickUrDest1PageState();
}

class _AdminPickUrDest1PageState extends State<AdminPickUrDest1Page> {
  final TextEditingController _searchController = TextEditingController();
  final List<ImageData> images = [
    ImageData(imagePath: 'images/UIAM.jpg', description: 'Description 1', url: 'https://www.example.com/1'),
    ImageData(imagePath: 'images/UIAM.jpg', description: 'Description 2', url: 'https://www.example.com/2'),
    ImageData(imagePath: 'images/UIAM.jpg', description: 'Description 3', url: 'https://www.example.com/3'),
    ImageData(imagePath: 'images/iium_logo.png', description: 'Description 4', url: 'https://www.example.com/4'),
    ImageData(imagePath: 'images/iium_logo.png', description: 'Description 5', url: 'https://www.example.com/5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            for (int i = 0; i < images.length; i++)
                              _buildCircularButton(context, (i + 1).toString(), images[i]),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        // Two rows of images with descriptions
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < images.length; i++)
                              Expanded(
                                child: ImageWithDescription(imageData: images[i], isAdmin: true),
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
    );
  }

  Widget _buildCircularButton(BuildContext context, String label, ImageData imageData) {
    return CircleAvatar(
      radius: 20, // Adjust the radius as needed
      backgroundColor: Colors.white,
      child: ElevatedButton(
        onPressed: () {
          print("Button Pressed for $label");
          _showEditingInterface(context, imageData);
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
              child: const Text('Search', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  void _showEditingInterface(BuildContext context, ImageData imageData) {
    // Implement your editing interface here
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Editing Interface'),
          content: Column(
            children: [
              Image.asset(
                imageData.imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8.0),
              Text(
                imageData.description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8.0),
              // Add your editing widgets here
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Implement save or update logic here
                Navigator.of(context).pop(); // Close the editing interface
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text('Save', style: TextStyle(color: Colors.black)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the editing interface
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text('Cancel', style: TextStyle(color: Colors.black)),
            ),
          ],
        );
      },
    );
  }
}

class ImageWithDescription extends StatelessWidget {
  final ImageData imageData;
  final bool isAdmin;

  const ImageWithDescription({required this.imageData, required this.isAdmin});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageData.imagePath,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () {
            _launchURL(imageData.url); // Add the URL you want to open
          },
          child: Text(
            imageData.description,
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
            print("Find Button Pressed for ${imageData.description}");
            if (isAdmin) {
              // Handle the admin edit functionality here directly
              _showEditingInterface(context, imageData);
            } else {
              // Handle the regular user functionality here
              // You can navigate to a different page or perform other actions
            }
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
    // Implementation of URL launching
  }
}

void _showEditingInterface(BuildContext context, ImageData imageData) {
}
