import 'package:flutter/material.dart';
import 'package:my_flutter/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 241, 11, 30),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color.fromARGB(255, 0, 42, 255),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}
