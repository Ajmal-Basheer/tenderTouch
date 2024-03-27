import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tendertouchdup/Login/Login.dart';
import 'package:tendertouchdup/Pages/Home.dart';
import 'package:tendertouchdup/Profile/profile.dart';
import 'package:tendertouchdup/SignUp/SignUp.dart';

class bottomnavbar extends StatefulWidget {  @override
State<StatefulWidget> createState() => gnav();
}
class gnav extends State {
  final pageController = PageController(initialPage: 1);

  final List<Widget> bottomBarPages = [
    SignUp(),
    Home(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.blue.shade800,
        padding: EdgeInsets.symmetric(horizontal: 35,vertical: 3),
        child: GNav(
          backgroundColor: Colors.blue.shade800,
          color: Colors.white,
          gap: 14,
          selectedIndex: 1,
          padding: EdgeInsets.all(10),
          activeColor: Colors.blue.shade800,
          hoverColor: Colors.blue,
          tabBackgroundColor: Colors.white.withOpacity(1.0),
          tabBorder: Border.all(color: Colors.blue.shade800),
          tabActiveBorder: Border.all(color: Colors.blue.shade800),
          duration: Duration(milliseconds: 650),
          tabBorderRadius: 50,
          iconSize: 23,
          tabs: [
            GButton(icon: Icons.people,
              text: "Join us",
            ),
            GButton(icon: Icons.home,
              text: "Home",
            ),
            GButton(icon: Icons.person,
              text: "Profile",
            ),
          ],
          onTabChange: (index) {
            pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }
}