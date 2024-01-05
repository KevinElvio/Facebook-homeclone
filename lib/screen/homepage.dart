import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'message.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Icon(
                  Icons.home,
                  size: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryanimation) =>
                                    MessageUI(),
                            transitionsBuilder: (context, animation,
                                secondaryanimation, child) {
                              return child;
                            },
                            transitionDuration:
                                const Duration(microseconds: 0)));
                  },
                  child: const Icon(
                    Icons.forum_outlined,
                    size: 40,
                  ),
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
          color: Color.fromARGB(255, 206, 203, 203),
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                margin: EdgeInsets.only(top: 2),
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
                    margin: EdgeInsets.only(top: 2),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth,
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                  width: 60,
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
                                          fontSize: 18,
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
                          margin: EdgeInsets.only(left: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              'mengawali tahun dengan optimis, mengakhiri tahun dengan memaafkan<3',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          height: 500,
                          width: screenWidth,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Color.fromARGB(66, 168, 168, 168),
                            width: 1,
                          ))),
                          child:
                              Image.asset('assets/images/GCplz0ybMAAvjUh.jpg'),
                        ),
                        Container(
                          width: screenWidth,
                          margin: const EdgeInsets.only(top: 20, bottom: 20),
                          padding: EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              border: Border(
                            top: BorderSide(
                              color: Color.fromARGB(66, 168, 168, 168),
                              width: 1,
                            ),
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  width: 100,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.thumb_up_outlined,
                                        size: 30,
                                      ),
                                      Text("Suka")
                                    ],
                                  )),
                              Container(
                                  width: 100,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.comment_outlined,
                                        size: 30,
                                      ),
                                      Text("Komentar")
                                    ],
                                  )),
                              Container(
                                  width: 100,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.share,
                                        size: 30,
                                      ),
                                      Text("Bagikan")
                                    ],
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    margin: EdgeInsets.only(top: 2),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth,
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                  width: 60,
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
                                          fontSize: 18,
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
                          margin: EdgeInsets.only(left: 20, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              'mengawali tahun dengan optimis, mengakhiri tahun dengan memaafkan<3',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          height: 500,
                          width: screenWidth,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Color.fromARGB(66, 168, 168, 168),
                            width: 1,
                          ))),
                          child:
                              Image.asset('assets/images/GCplz0ybMAAvjUh.jpg'),
                        ),
                        Container(
                          width: screenWidth,
                          margin: const EdgeInsets.only(top: 20, bottom: 20),
                          padding: EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              border: Border(
                            top: BorderSide(
                              color: Color.fromARGB(66, 168, 168, 168),
                              width: 1,
                            ),
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  width: 100,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.thumb_up_outlined,
                                        size: 30,
                                      ),
                                      Text("Suka")
                                    ],
                                  )),
                              Container(
                                  width: 100,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.comment_outlined,
                                        size: 30,
                                      ),
                                      Text("Komentar")
                                    ],
                                  )),
                              Container(
                                  width: 100,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.share,
                                        size: 30,
                                      ),
                                      Text("Bagikan")
                                    ],
                                  )),
                            ],
                          ),
                        )
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
