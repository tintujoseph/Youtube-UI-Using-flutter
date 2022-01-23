import 'package:flutter/material.dart';
import 'package:flutter_application_2/Serach.dart';

import 'package:flutter_application_2/home1.dart';
import 'package:flutter_application_2/lib.dart';
import 'package:flutter_application_2/noti.dart';
import 'package:flutter_application_2/perso.dart';
import 'package:flutter_application_2/sub.dart';

class Homes extends StatefulWidget {
  const Homes({Key? key}) : super(key: key);

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  int _currentindex = 0;
  final pages = [Homes1(), notis(), subs(), libarary()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (newIndex) {
          setState(() {
            _currentindex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              label: 'notification'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions,
                color: Colors.black,
              ),
              label: 'subscriptions'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library,
                color: Colors.black,
              ),
              label: 'Libarary')
        ],
      ),
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            height: 100,
            width: 100,
            child: Image.network(
                'data:image/jpeg;base64,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'),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.connected_tv, color: Colors.black)),
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Sreachs();
                  }));
                },
                icon: Icon(Icons.search, color: Colors.black)),
            IconButton(
                onPressed: () {
                  showBottom(context);
                },
                icon: Icon(Icons.add, color: Colors.black)),
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return persons();
                  }));
                },
                icon: Icon(Icons.person, color: Colors.black)),
          ]),
    );
  }
}

Future<void> showBottom(BuildContext context) async {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(children: [
          ListTile(
            leading: Icon(Icons.upload),
            title: Text(' Upload'),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text(' Add shorts'),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(Icons.live_tv),
            title: Text(' Go to live'),
          ),
        ]);
      });
}
