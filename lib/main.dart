import 'package:flutter/material.dart';
import 'package:shop_shoes/splashscreens/splash_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
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
