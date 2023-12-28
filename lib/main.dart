import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          shadowColor: Color.fromARGB(255, 241, 238, 238),
          title: Text(
            'Facebook',
            style: TextStyle(
                color: Colors.blue.shade900, fontWeight: FontWeight.w800),
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Content for selected index: $_currentIndex',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
