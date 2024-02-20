import 'package:flutter/material.dart';

class ImageData {
  String imagePath;
  String description;
  String url;

  ImageData({
    required this.imagePath,
    required this.description,
    required this.url,
  });
}

class AdminPickUrDest1Page extends StatefulWidget {
  @override
  _AdminPickUrDest1PageState createState() => _AdminPickUrDest1PageState();
}

class _AdminPickUrDest1PageState extends State<AdminPickUrDest1Page> {
  final TextEditingController _searchController = TextEditingController();
  final List<ImageData> images = [
    ImageData(
      imagePath: 'lib/Images/UIAM.jpg',
      description: 'Description 1',
      url: 'https://www.example.com/1',
    ),
    ImageData(
      imagePath: 'lib/Images/UIAM.jpg',
      description: 'Description 2',
      url: 'https://www.example.com/2',
    ),
    ImageData(
      imagePath: 'lib/Images/UIAM.jpg',
      description: 'Description 3',
      url: 'https://www.example.com/3',
    ),
    ImageData(
      imagePath: 'lib/Images/iium_logo.png',
      description: 'Description 4',
      url: 'https://www.example.com/4',
    ),
    ImageData(
      imagePath: 'lib/Images/iium_logo.png',
      description: 'Description 5',
      url: 'https://www.example.com/5',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "lib/Images/pickDestBG.png",
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
                            _buildImageButtons(context),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        // Two rows of images with descriptions
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < images.length; i++)
                              Expanded(
                                child: ImageWithDescription(
                                  imageData: images[i],
                                  isAdmin: true,
                                  onTap: () => _showImageEditingInterface(
                                      context, images[i]),
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
    );
  }

  Widget _buildImageButtons(BuildContext context) {
    return Column(
      children: images.map((imageData) {
        return _buildEditableImage(context, imageData);
      }).toList(),
    );
  }

  Widget _buildEditableImage(BuildContext context, ImageData imageData) {
    return GestureDetector(
      onTap: () => _showImageEditingInterface(context, imageData),
      child: Column(
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
        ],
      ),
    );
  }

  void _showSearchDialog(BuildContext context) {
    showDialog(
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

  void _showImageEditingInterface(BuildContext context, ImageData imageData) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController descriptionController =
            TextEditingController(text: imageData.description);
        TextEditingController urlController =
            TextEditingController(text: imageData.url);

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
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                ),
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: urlController,
                decoration: const InputDecoration(
                  labelText: 'URL',
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                _saveImageChanges(
                  imageData,
                  descriptionController.text,
                  urlController.text,
                );
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
              child:
                  const Text('Cancel', style: TextStyle(color: Colors.black)),
            ),
          ],
        );
      },
    );
  }

  void _saveImageChanges(
    ImageData imageData,
    String newDescription,
    String newUrl,
  ) {
    setState(() {
      // Update the image data with the new values
      imageData.description = newDescription;
      imageData.url = newUrl;
    });
    // Optionally, you can save the updated data to a database or any other storage mechanism.
  }
}

class ImageWithDescription extends StatelessWidget {
  final ImageData imageData;
  final bool isAdmin;
  final VoidCallback onTap;

  const ImageWithDescription({
    required this.imageData,
    required this.isAdmin,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
        ],
      ),
    );
  }
}
