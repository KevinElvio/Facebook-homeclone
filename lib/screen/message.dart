// message_ui.dart

import 'package:flutter/material.dart';
import 'homepage.dart';

class MessageUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryanimation) =>
                                    Homepage(),
                            transitionsBuilder: (context, animation,
                                secondaryanimation, child) {
                              return child;
                            },
                            transitionDuration:
                                const Duration(microseconds: 0)));
                  },
                  child: const Icon(
                    Icons.home,
                    size: 40,
                    color: Color.fromARGB(255, 61, 58, 58),
                  ),
                ),
                const Icon(
                  Icons.forum_outlined,
                  size: 40,
                  color: Color.fromARGB(255, 13, 71, 161),
                ),
                const Icon(
                  Icons.notifications,
                  size: 40,
                  color: Color.fromARGB(255, 61, 58, 58),
                ),
                const Icon(
                  Icons.widgets,
                  size: 40,
                  color: Color.fromARGB(255, 61, 58, 58),
                ),
              ],
            )
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ini adalah halaman pesan.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
