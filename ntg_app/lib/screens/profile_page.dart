import 'package:flutter/material.dart';

import '../component/card_widget.dart';
import '../component/drawer_list.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'My Information',
          style: TextStyle(
            fontSize: 21,
            color: Colors.white,
            fontFamily: 'lil',
          ),
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          width: 200,
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text(
                  'Yasser Ahmed',
                  style: TextStyle(
                    fontFamily: 'lil',
                    color: Colors.black,
                  ),
                ),
                accountEmail: Text(
                  'yasser.a@acs.com.sa',
                  style: TextStyle(
                    fontFamily: 'lil',
                    color: Colors.white,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/me.png'),
                ),
              ),
              DrawerList(title: 'Personal'),
              DrawerList(title: 'Increment'),
              DrawerList(title: 'PaySlip'),
              DrawerList(title: 'Vacation'),
              DrawerList(title: 'Document'),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            CardWidget(title: 'Employee No', detail: '223087'),
            CardWidget(title: 'Full Name', detail: 'Yasser Ahmed Mohammed'),
            CardWidget(title: 'Department ', detail: 'MIS'),
            CardWidget(title: 'Position', detail: 'Junior Developer'),
            CardWidget(title: 'Contact Info', detail: '05573659200'),
            CardWidget(
              title: 'Address',
              detail: 'Riyadh-Aziziah',
            ),
            CardWidget(
              title: 'Iqama No',
              detail: '2115264265',
            ),
            CardWidget(title: 'Direct Manager', detail: 'Mr.Khalid Omar '),
            CardWidget(title: 'Second Manager', detail: 'Khalid Mohammed'),
            CardWidget(
              title: 'Join Date',
              detail: '10/4/2023',
            ),
            CardWidget(
              title: 'Nationality',
              detail: 'Yemen',
            ),
            CardWidget(
              title: 'Bank det.',
              detail: 'SA5610000011100311381210',
            ),
          ],
        ),
      ),
    );
  }
}
