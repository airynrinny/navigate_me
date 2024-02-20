import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget imageDesc(BuildContext context, String imagePath, String description,
    String url, Widget destination) {
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => destination,
            ),
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

/*
 */
void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
