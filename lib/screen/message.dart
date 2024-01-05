// message_ui.dart

import 'package:flutter/material.dart';
import 'homepage.dart';

class MessageUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message UI'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ini adalah halaman pesan.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryanimation) =>
                            Homepage(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return child;
                        },
                        transitionDuration: Duration(microseconds: 0)));
              },
              child: Text('Kembali ke Screen 1'),
            ),
          ],
        ),
      ),
    );
  }
}
