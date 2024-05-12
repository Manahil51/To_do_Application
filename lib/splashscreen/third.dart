import 'package:flutter/material.dart';
import 'package:flutter_application_1/login%20and%20signup/welcome.dart';
import 'package:flutter_application_1/splashscreen/forthpage.dart';
import 'package:flutter_application_1/splashscreen/second.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
              'assets/images/4.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/5.png',
              width: 150,
              height: 100,
            ),
            const SizedBox(height: 5),
            const Text(
              'Create daily routine',
              style: TextStyle(color: Colors.white, fontSize: 34),
            ),
            const SizedBox(height: 15),
            const Text(
              'in Uptodo you can create your personalized routine to say productive',
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
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                ); // Navigate to splash screen
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ForthPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
