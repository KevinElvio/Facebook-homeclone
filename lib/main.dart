import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 140.0,
                    enableInfiniteScroll: false,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.5,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: screenWidth * 0.8,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 184, 184, 184)),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth,
                    height: MediaQuery,
                    margin: EdgeInsets.only(top: 5),
                    color: Color.fromARGB(255, 255, 255, 255),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
