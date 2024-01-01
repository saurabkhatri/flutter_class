import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_buddies/features/home_page.dart';

import '../contacts/contact_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),),

      body: dashboardbody(bottomNavIndex),

      //body: Column(
        //children: [
        //   Text("Dashboard")
        // ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "home",
          ),

          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("assets/dashboard/contacts-active.svg"),
            icon: SvgPicture.asset("assets/dashboard/contacts-inactive.svg"),
            label: "Contact",
          ),

          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.admin_panel_settings_outlined),
            label: "Profile",
          ),

        ],

        currentIndex: bottomNavIndex,

        onTap: (index){
          setState(() {
            bottomNavIndex = index;
          });
        }
      ),
    );
  }

  Widget dashboardbody(int bottomNavIndex) {
    switch(bottomNavIndex){
      case 0:
        return HomePage();

      case 1:
        return ContactPage();

      case 2:
        return Text('Profile Page');

      default:
        return Text('Nothing');


    }
  }
}
