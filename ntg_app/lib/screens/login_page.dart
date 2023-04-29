import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "images/logo.png",
                height: 250,
                width: 200,
              ),
              const Center(
                child: Text(
                  'مرحبا بك في بوابة المجموعة الوطنية للتقنية ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'arb',
                  ),
                ),
              ),
              const Text(
                'Welcome To MyNTG!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 21, fontFamily: 'lil', color: Colors.black45),
              ),
              const Divider(
                height: 20,
                color: Colors.white,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: "password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          const Text(
                            'If You Don\'t have account ',
                          ),
                          InkWell(
                            child: const Text(
                              'click here',
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('signup');
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 55,
                      width: 400,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black38,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('control');
                        },
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontFamily: 'lil',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
