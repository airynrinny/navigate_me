import 'package:flutter/material.dart';

Widget circularButton(BuildContext context, String label, Widget destination) {
  return CircleAvatar(
    radius: 20,
    backgroundColor: Colors.white,
    child: ElevatedButton(
      onPressed: () {
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
