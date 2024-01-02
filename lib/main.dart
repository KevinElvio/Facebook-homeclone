import 'dart:html';

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
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          shadowColor: Color.fromARGB(255, 241, 238, 238),
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.w900,
                          fontSize: 24),
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    weight: 50,
                  ),
                  const Icon(
                    Icons.circle,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 40,
                  ),
                  Icon(
                    Icons.forum_outlined,
                    size: 40,
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                  ),
                  Icon(
                    Icons.widgets,
                    size: 40,
                  ),
                ],
              )
            ],
          ),
          iconTheme: IconThemeData(color: Colors.blue.shade900),
        ),
        body: Container(
          color: Color.fromARGB(255, 221, 221, 221),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: screenWidth,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 90.0,
                          height: 130.0,
                          decoration: BoxDecoration(
                              shape: BoxShape
                                  .rectangle, // Mengatur bentuk kotak menjadi lingkaran
                              color: Color.fromARGB(255, 180, 180, 180),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Text('test')
            ],
          ),
        ));
  }
}
