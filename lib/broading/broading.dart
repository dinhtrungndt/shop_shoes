import 'package:flutter/material.dart';
import 'package:shop_shoes/screens/login_Email_SDT/index.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BroadingScreens extends StatefulWidget {
  const BroadingScreens({super.key});

  @override
  State<BroadingScreens> createState() => _BroadingScreensState();
}

class _BroadingScreensState extends State<BroadingScreens> {
  final List<String> imageList = [
    'assets/shoes_center.png',
    'assets/home/shoes_new_01.png',
    'assets/home/shoes_new_02.png',
  ];

  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 231, 244),
      body: Stack(
        children: [
          Positioned(
            width: 100,
            top: 45,
            left: 25,
            child: Image.asset(
              'assets/logo.png',
            ),
          ),
          Center(
            child: ListView(
              children: [
                Container(
                  child: Image.asset(
                    'assets/line_behind.png',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Column(
              children: [
                CarouselSlider(
                  items: imageList.map((image) {
                    return Image.asset(image);
                  }).toList(),
                  options: CarouselOptions(
                    height: 360, // Điều chỉnh chiều cao của carousel
                    autoPlay: true, // Tự động chuyển hình ảnh
                    autoPlayInterval:
                        const Duration(seconds: 2), // Thời gian chuyển hình ảnh
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentImageIndex = index;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.map((image) {
                    int index = imageList.indexOf(image);
                    return Container(
                      width: 10,
                      height: 10,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentImageIndex == index
                            ? const Color.fromARGB(255, 138, 218, 224)
                            : const Color.fromARGB(255, 41, 79, 81),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Bringing perfect shoes for you",
                    style: TextStyle(
                      fontSize: 43,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 28, 148, 157),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Smart, comfortable and elegant shoes for you",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 28, 148, 157),
                      ),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const LoginEmailPhone(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 93, 202, 209),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 10,
                      minimumSize: const Size(200, 50),
                    ),
                    child: const Text(
                      'Start >',
                      style: TextStyle(fontSize: 25, fontFamily: 'Poppins'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
