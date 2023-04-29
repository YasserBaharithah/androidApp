import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/cont.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              height: 400,
              width: double.infinity,
              child: const Text(
                "Welcome to MyNTG This is a private area, for the lucky few who work in NTG "
                "and its subsidiaries. ",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 38,
                  fontFamily: 'lil',
                  color: Colors.white,
                ),
              ),
            ),
            Image.asset(
              "images/myNtg.png",
              fit: BoxFit.fill,
              height: 100,
            ),
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 380,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black38,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('login');
                        },
                        child: const Text(
                          "Login ",
                          style: TextStyle(
                            fontFamily: 'lil',
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      height: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 380,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black38,
                        ),
                        onPressed: () {
                          const Text("Yasser");
                        },
                        child: const Text(
                          "Reset Password",
                          style: TextStyle(
                            fontFamily: 'lil',
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
