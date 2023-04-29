import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class One extends StatefulWidget {
  One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  Future getPost() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(Uri.parse(url));
    var body = jsonDecode(response.body);
    return body;
  }

  Future addPost() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.post(
      Uri.parse(url),
      body: {
        'title': 'Yasser',
        'body': 'How Are You Men',
        'userId': '1',
      },
    );
    var body = jsonDecode(response.body);
    print(body);
    return body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Dialogue Build'),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ElevatedButton(onPressed: addPost, child: Text('Add Post')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('two');
              },
              child: Text('Go page Two')),
          FutureBuilder(
            future: getPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Text(
                      '${snapshot.data[index]}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    );
                  },
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
