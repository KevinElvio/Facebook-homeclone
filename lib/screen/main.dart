import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shadowColor: Color.fromARGB(255, 241, 238, 238),
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
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 145, 145, 145),
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
                    color: const Color.fromARGB(255, 255, 255, 255),
                    margin: EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth,
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                  width: 70,
                                  color: Color.fromARGB(255, 250, 250, 250),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 50,
                                      ),
                                    ],
                                  )),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                color: Color.fromARGB(255, 255, 255, 255),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Oniel",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 33, 33, 34),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '12 jam lalu',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 97, 97, 102),
                                          fontWeight: FontWeight.w100),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Text('Hari ini RKJ seruuuu!!',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          height: 500,
                          width: screenWidth,
                          color: const Color.fromARGB(255, 129, 129, 129),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
