import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://via.placeholder.com/800x1200'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Recipe App',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 7, 135, 144),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Discover Amazing Recipes',
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 8, 182, 188),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: Text('Get Started',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 9, 122, 126),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
