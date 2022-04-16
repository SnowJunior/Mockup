import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interapp/Presentation/design.dart';
import 'package:interapp/Presentation/dictionary.dart';
import 'package:interapp/Presentation/response.dart';

import 'info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final screens = [
    const InfoScreen(),
    const DesignPage(emailController: '', nameController: '', phoneController: '',),
    const ResponseScreen(),
    const DictionaryScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0xFF007EA7),
        backgroundColor: Colors.transparent,
        index: currentIndex,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        items: [
          SvgPicture.asset("assets/info.svg",color: Colors.white,),
          SvgPicture.asset("assets/layout-fluid.svg",color: Colors.white),
          SvgPicture.asset("assets/comment-alt(1).svg", color: Colors.white),
          SvgPicture.asset("assets/book-alt.svg", color: Colors.white),
        ],
        animationCurve: Curves.bounceInOut,
        animationDuration: const Duration(milliseconds: 300),
        height: 60,
      ),
    );
  }
}
