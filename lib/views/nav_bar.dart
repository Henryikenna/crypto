import 'package:crypto/views/another_page.dart';
import 'package:crypto/views/home.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentTndex = 0;

  List<Widget> pages = [
    const Home(),
    const AnotherPage(),
    const AnotherPage(),
    const AnotherPage(),
  ];
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    // double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: pages.elementAt(_currentTndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // selectedItemColor: const Color(0xFFFBC700),
          // unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              _currentTndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/1.1.png",
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: "",
              activeIcon: Image.asset(
                "assets/icons/1.2.png",
                height: myHeight * 0.03,
                color: const Color(0xFFFBC700),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/2.1.png",
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: "",
              activeIcon: Image.asset(
                "assets/icons/2.2.png",
                height: myHeight * 0.03,
                color: const Color(0xFFFBC700),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/3.1.png",
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: "",
              activeIcon: Image.asset(
                "assets/icons/3.2.png",
                height: myHeight * 0.03,
                color: const Color(0xFFFBC700),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/4.1.png",
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: "",
              activeIcon: Image.asset(
                "assets/icons/4.2.png",
                height: myHeight * 0.03,
                color: const Color(0xFFFBC700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
