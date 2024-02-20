import 'package:flutter/material.dart';
import 'adminPickUrDest1.dart';
// import 'pickUrDest1.dart';

class AdminLoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: Container(
                height: MediaQuery.of(context).size.height, // Set the height here
                decoration: const BoxDecoration(
                  color: Colors.tealAccent,
                ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                        'NavigateMe',
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16.0),
                    const Text(
                        '     Key in admin email and password',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 16.0),
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
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
                        // Hardcoded email and password for demo purposes
                        const String validEmail = 'naviMeadmin@gmail.com';
                        const String validPassword = 'adminNavi';

                        // Check if the entered email and password are valid
                        if (_emailController.text == validEmail &&
                            _passwordController.text == validPassword) {
                          print("Admin Login Successful");
                          // Uncomment the lines below when you want to navigate to the next page
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AdminPickUrDest1Page(),
                          ));
                        } else {
                          print("Invalid Email or Password");
                          // Show a SnackBar with an error message
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Invalid Email or Password'),
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
              ),
            );
          },
        ),
      ),
    );
  }
}
