import 'package:flutter/material.dart';
import 'package:flutter_application_1/login%20and%20signup/welcome.dart';
import 'package:flutter_application_1/splashscreen/splashscreen.dart';
import 'package:flutter_application_1/splashscreen/third.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WelcomePage()),
            );
          },
          child: const Text(
            'Skip',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/2.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/3.png',
              width: 150,
              height: 100,
            ),
            const SizedBox(height: 5),
            const Text(
              'Manage your tasks',
              style: TextStyle(color: Colors.white, fontSize: 34),
            ),
            const SizedBox(height: 15),
            const Text(
              'you can easily manage all of your daily tasks in DoMe for free',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SplashScreen()),
                ); // Navigate to splash screen
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
