import 'package:flutter/material.dart';
import 'package:flutter_examples/screens/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ListTile(
              title: Text(
                'Welcome !',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.person_outline,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'User Name'),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 250,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
                child: const Text(
                  'Enter',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow,
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
