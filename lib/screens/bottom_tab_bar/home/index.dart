import 'package:flutter/material.dart';

// Import function
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

// import screen
import 'package:shop_shoes/screens/bottom_tab_bar/home/ButtonsTabBar/anyseason/AnySeason.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/ButtonsTabBar/basketball/Basketball.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/ButtonsTabBar/lifestyle/LifeStyle.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/ButtonsTabBar/ourcollection/OurCollection.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/ButtonsTabBar/running/Running.dart';

// component
import 'package:shop_shoes/screens/bottom_tab_bar/home/header/Header.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/search/Search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    'assets/home/slide_carousel_02.png',
    'assets/home/slide_carousel_03.png',
    'assets/home/slide_carousel_04.png',
  ];

  int _currentImageIndex = 0;

  List<String> kindList = [
    "Any season",
    "Our collection",
    "Life style",
    "Basketball",
    "Running",
  ];

  int _currentKindIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: 20,
              ),
              Search(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Trending products",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 95, 103),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Text(
                        "Nike original 2023",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 95, 103),
                        ),
                      ),
                    ),
                    CarouselSlider(
                      items: imageList.map((image) {
                        return Image.asset(image,
                            height: 200, fit: BoxFit.contain);
                      }).toList(),
                      options: CarouselOptions(
                        height: 150,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 2),
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
                  ],
                ),
              ),
              // slide_carousel_stack(price: price)
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                    physics:
                        const BouncingScrollPhysics(), // không hiển thị xanh thi kéo xuống hết
                    itemCount: kindList.length, // lấy đủ số lượng item
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentKindIndex = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              width: 100,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: _currentKindIndex == index
                                      ? const Color.fromARGB(255, 89, 217, 224)
                                      : const Color.fromARGB(
                                          255, 224, 229, 229),
                                  borderRadius: _currentKindIndex == index
                                      ? BorderRadius.circular(15)
                                      : BorderRadius.circular(5),
                                  border: _currentKindIndex == index
                                      ? Border.all(
                                          color: const Color.fromARGB(
                                              255, 89, 217, 224),
                                          width: 2)
                                      : Border.all(
                                          color: const Color.fromARGB(
                                              255, 170, 204, 204),
                                          width: 2)),
                              child: Center(
                                child: Text(
                                  kindList[index],
                                  style: GoogleFonts.laila(
                                    fontSize: 14,
                                    color: _currentKindIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: _currentKindIndex == index,
                            child: Container(
                              width: 50,
                              height: 3,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 89, 217, 224),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              ),

              // Main sreens
              Container(
                width: double.infinity,
                height: 310,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 224, 229, 229),
                ),
                child: {
                  0: const AnySeason(),
                  1: const OurCollection(),
                  2: const LifeStyle(),
                  3: const Basketball(),
                  4: const Running(),
                }[_currentKindIndex],
              )
            ],
          ),
        ),
      ),
    );
  }
}
