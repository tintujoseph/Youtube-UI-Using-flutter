import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/home1.dart';

class Sreachs extends StatefulWidget {
  const Sreachs({Key? key}) : super(key: key);

  @override
  State<Sreachs> createState() => _SreachsState();
}

class _SreachsState extends State<Sreachs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Homes();
                }));
              },
              icon: Icon(Icons.arrow_back, color: Colors.black)),
          title: Container(
            height: 40,
            width: 450,
            color: Colors.grey[50],
            child: Text(
              'serach here....',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
        body: Container(
            child: ListView(children: [
          SizedBox(
            height: 20,
            width: 20,
          ),
          ListTile(
            leading: Icon(Icons.timer),
            title: Text('Swami Song'),
            trailing: Icon(Icons.close),
          ),
          ListTile(
            leading: Icon(Icons.timer),
            title: Text('Cake Making '),
            trailing: Icon(Icons.close),
          ),
          ListTile(
            leading: Icon(Icons.timer),
            title: Text('English Song'),
            trailing: Icon(Icons.close),
          ),
        ])));
  }
}
