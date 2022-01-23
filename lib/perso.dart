import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/home1.dart';

class persons extends StatelessWidget {
  const persons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) {
                    return Homes1();
                  }));
                },
                icon: Icon(Icons.close, color: Colors.black))),
        body: Container(
            color: Colors.white,
            child: ListView(children: [
              SizedBox(
                height: 10,
                width: 20,
              ),
              ListTile(
                leading: CircleAvatar(child: Text('Tc')),
                title: Text('tomci'),
                trailing: Icon(Icons.arrow_forward),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.person_add),
                title: Text('Accout creation'),
              ),
              Container(
                height: 1,
                width: 500,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Your Channel'),
              ),
              ListTile(
                leading: Icon(Icons.bar_chart_rounded),
                title: Text('Time Watched'),
              ),
              Container(
                height: 1,
                width: 500,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.question_answer_rounded),
                title: Text('Help &FeedBack'),
              )
            ])));
  }
}
