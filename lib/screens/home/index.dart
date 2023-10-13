import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: 100,
            top: 45,
            left: 25,
            child: Image.network(
              'https://res.cloudinary.com/dgnhucpz0/image/upload/v1697182176/shoes_shop/broading/sw3mcedac2ygkagmdqwt.png',
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.network(
                    'https://res.cloudinary.com/dgnhucpz0/image/upload/v1697181178/shoes_shop/broading/umltnfemymv7fxlx3hrv.png',
                  ),
                ),
                const Text(
                  'Hihi',
                  style: TextStyle(),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.network(
              'https://res.cloudinary.com/dgnhucpz0/image/upload/v1697181178/shoes_shop/broading/rwmnamajbr0kmeil1iph.png',
            ),
          ),
        ],
      ),
    );
  }
}
