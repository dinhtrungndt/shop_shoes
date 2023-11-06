import 'package:flutter/material.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/ButtonsTabBar/anyseason/AnySeason.dart';
import 'package:shop_shoes/splashscreens/splash_screen.dart';

void main() {
  runApp(const MainShop_Shoes());
}

class MainShop_Shoes extends StatelessWidget {
  const MainShop_Shoes({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: AnySeason(),
    );
  }
}
