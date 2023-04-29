import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<String> tasks = ['Item 1', 'Item 2', 'Item 3'];

  String? selectedItem = 'Select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        centerTitle: true,
        title: const Text(
          ' Action Center',
          style: TextStyle(
            fontFamily: 'lil',
            fontSize: 21,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(7.0),
        padding: EdgeInsets.all(7.0),
        decoration: const BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: ListView(
          children: [
            const Text(
              'New Request !',
              style: TextStyle(
                fontSize: 21,
                fontFamily: 'lil',
              ),
            ),
            const Divider(
              height: 15,
              thickness: 2,
              color: Colors.white,
              endIndent: 230,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              padding: const EdgeInsets.all(20),
              height: 150,
              width: 400,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Search For Any Services You Need !',
                      fillColor: Colors.white,
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'lob',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 200,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        print('Yasser');
                      },
                      child: const Text(
                        'Search ',
                        style: TextStyle(fontFamily: 'lil', fontSize: 21),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 250,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: Colors.orangeAccent,
                child: ListTile(
                  leading: Icon(
                    Icons.pending_actions,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'My Pending Request ',
                    style: TextStyle(
                        fontSize: 21, fontFamily: 'lil', color: Colors.white),
                  ),
                  trailing: Text(
                    '0',
                    style: TextStyle(
                        fontFamily: 'lil', fontSize: 21, color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: Colors.green,
                child: ListTile(
                  leading: Icon(
                    Icons.access_time_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Task Waiting For Me  ',
                    style: TextStyle(
                        fontSize: 21, fontFamily: 'lil', color: Colors.white),
                  ),
                  trailing: Text(
                    '0',
                    style: TextStyle(
                        fontFamily: 'lil', fontSize: 21, color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: Colors.red,
                child: ListTile(
                  leading: Icon(
                    Icons.task,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Task Waiting as Role! ',
                    style: TextStyle(
                        fontSize: 21, fontFamily: 'lil', color: Colors.white),
                  ),
                  trailing: Text(
                    '0',
                    style: TextStyle(
                      fontFamily: 'lil',
                      fontSize: 21,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
