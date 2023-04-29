import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  Future getPost() async {
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(Uri.parse(url));
    var body = jsonDecode(response.body);

    return body;
  }

  Future addPost() async {
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.post(Uri.parse(url), body: {
      'userId': '1',
      'body': 'Yasser',
      'title': 'Hello',
    });
    var body = jsonDecode(response.body);
    print(body);
    return body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Page Two'),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ElevatedButton(
            onPressed: addPost,
            child: Text('Add Post'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('three');
              },
              child: Text('Go To Page Three')),
          FutureBuilder(
            future: getPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    color: Colors.blue,
                  ),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      child: Text('${snapshot.data[index]}'),
                    );
                  },
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
