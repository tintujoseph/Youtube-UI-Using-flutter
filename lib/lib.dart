import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';

class libarary extends StatelessWidget {
  const libarary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Text('Recent'),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.timer),
              title: Text('History'),
            ),
            ListTile(
              leading: Icon(Icons.library_add),
              title: Text('Your video'),
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text('English Song'),
            ),
            ListTile(
              leading: Icon(Icons.timer),
              title: Text('Watch later'),
            )
          ],
        ),
      ),
    );
  }
}
