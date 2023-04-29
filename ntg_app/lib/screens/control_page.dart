import 'package:flutter/material.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('profile');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "معلوماتي",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'arb',
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.chrome_reader_mode,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "CRM",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.desktop_mac_sharp,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "DMS",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.money,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Finance",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        " المالية",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.barcode_reader,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Sale",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        " المبيعات",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.car_crash,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Logistic",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "اللوجستية",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.local_offer_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Offers",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "العروض",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.browse_gallery,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Gallery",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "معرض الصور",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.brown,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.support_agent,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Support",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                      Text(
                          "الدعم الفني",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('task');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.task,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Requests/Tasks",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'lil',
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "المهام",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'arb',
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
          ),
        ),
      ),
    );
  }
}
