import 'package:flutter/material.dart';

class notis extends StatelessWidget {
  const notis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(child: Text('M.C')),
                title: Text(
                    '   how to make your youtube|English| \n  \n   45 min ago....'),
                trailing: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj3kAs-wgwoOOMmpCucrPM1uWg_bGDohV72g&usqp=CAU'),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: 1));
  }
}
