import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  send() {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
    if (Navigator.of(context).canPop() == false) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          elevation: 0,
          backgroundColor: Colors.teal,
          content: const Text(
            'You Cant Go Back !',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          duration: const Duration(milliseconds: 3000),
          action: SnackBarAction(
            label: 'Undo',
            textColor: Colors.black,
            onPressed: () {},
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
            icon: Icon(Icons.search),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.orangeAccent,
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: send,
                child: Text('Go Back'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('one');
                },
                child: Text('Go To Page One'),
              ),
            ],
          )),
    );
  }
}

class DataSearch extends SearchDelegate {
  List names = ['Yasser', 'Ahmed', 'Mohammed', 'Salem', 'Mohand'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
          FocusManager.instance.primaryFocus!.unfocus();
        },
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterNames =
        names.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemCount: query == '' ? names.length : filterNames.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            query = query == '' ? names[index] : filterNames[index];
            showResults(context);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            child: query == ''
                ? Text(
                    '${names[index]}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                : Text(
                    '${filterNames[index]}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
