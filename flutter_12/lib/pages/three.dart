import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  setPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('name', 'Yasser');
    pref.setInt('ID', 22);
    pref.setDouble('Uid', 21.5);
    print('Successes');
  }

  var userName;
  var id;
  var dd;
  getPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      userName = pref.getString('name');
      id = pref.getInt('ID');
      dd = pref.getDouble('Uid');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Three'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () async {
              await setPref();
            },
            child: Text('Set Cache'),
          ),
          Text('${userName}'),
          Text('${id}'),
          Text('${dd}'),
          ElevatedButton(
            onPressed: () async {
              await getPref();
            },
            child: Text('Get Cache'),
          ),
        ],
      ),
    );
  }
}
