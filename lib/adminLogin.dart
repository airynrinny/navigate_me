import 'package:flutter/material.dart';

import 'pickUrDest1.dart';

class AdminLoginPage extends StatelessWidget {
final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Hardcoded username and password for demo purposes
                        const String validUsername = 'admin';
                        const String validPassword = 'password';

                        // Check if the entered username and password are valid
                        if (_usernameController.text == validUsername &&
                            _passwordController.text == validPassword) {
                          print("Admin Login Successful");
                          // Uncomment the lines below when you want to navigate to the next page
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PickUrDest1Page(),
                          ));
                        } else {
                          print("Invalid Username or Password");
                          // Show a SnackBar with an error message
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Invalid Username or Password'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        }
                      },
                      child: const Text('Log In'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
