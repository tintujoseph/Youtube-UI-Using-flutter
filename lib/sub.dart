import 'package:flutter/material.dart';

class subs extends StatelessWidget {
  const subs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          title: CircleAvatar(child: Text('M.C')),
        ),
        body: ListView(children: [
          Container(
            height: 280,
            color: Colors.white,
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj3kAs-wgwoOOMmpCucrPM1uWg_bGDohV72g&usqp=CAU',
              height: 250,
              width: 250,
              fit: BoxFit.fitWidth,
            ),
          ),
          ListTile(
            leading: CircleAvatar(child: Text('M.C')),
            title: Text(
                '      how to make your youtube|English|         \n    M.C .  160k views .  1 sec ago  ',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            trailing: Icon(Icons.more_vert),
          )
        ]));
  }
}
