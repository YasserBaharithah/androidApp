import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key, this.title}) : super(key: key);

  final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: ListTile(
            title: Text(
              title!,
              style: TextStyle(
                fontFamily: 'lil',
                fontSize: 21,
                color: Colors.black,
              ),
            ),
          ),
          onTap: () {
            print('object');
          },
        ),
        const Divider(
          color: Colors.blueGrey,
          height:3,
          thickness: 2,
        ),
      ],
    );
  }
}
