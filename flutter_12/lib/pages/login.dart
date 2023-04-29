import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var userName;
    var password;

    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    send() {
      var formData = formKey.currentState;
      if (formData!.validate()) {
        formData.save();
        print('user name is : $userName  ');
        print('Password is : $password  ');

        Navigator.of(context).pushReplacementNamed('home');
      } else {
        print('Not Valid Input');
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Text('Login Page'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello There !',
                  style: Theme.of(context).textTheme.headline2,
                ),
                const Divider(
                  height: 20,
                  color: Colors.white,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Name',
                  ),
                  onSaved: (text) {
                    userName = text;
                  },
                  validator: (text) {
                    if (text!.length < 5) {
                      return 'You Must Enter 5 letters at least';
                    } else {
                      return null;
                    }
                  },
                ),
                const Divider(
                  height: 20,
                  color: Colors.white,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                  ),
                  onSaved: (text) {
                    password = text;
                  },
                  validator: (text) {
                    if (text!.length < 5) {
                      return 'You Must Enter 5 Numbers at least';
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: send,
                  child: const Text('Enter'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
