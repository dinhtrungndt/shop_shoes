import 'package:flutter/material.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/header/Header.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/search/Search.dart';

// Import function
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/shop/allshoes/AllShoes.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/shop/men/Men.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/shop/outdoor/OutDoor.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/shop/sales/Sales.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/shop/women/Women.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<String> kindList = [
    "All Shoes",
    "Men",
    "Women",
    "Outdoor",
    "Sales",
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
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Search(
                    textFieldWidth: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: InkWell(
                      onTap: () {},
                      child: const Image(
                          image: AssetImage("assets/shop/menu.png")),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              const Row(
                children: [
                  Text(
                    "Select category",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color.fromARGB(255, 0, 95, 103),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              SizedBox(
                height: 50,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Select products",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color.fromARGB(255, 0, 95, 103),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "All >",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 160, 160, 160),
                        ),
                      )),
                ],
              ),
              // Main sreens
              Container(
                width: double.infinity,
                height: 310,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 224, 229, 229),
                ),
                child: {
                  0: const AllShoes(),
                  1: const Men(),
                  2: const Women(),
                  3: const OutDoor(),
                  4: const Sales(),
                }[_currentKindIndex],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Selling products",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color.fromARGB(255, 0, 95, 103),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "All >",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 160, 160, 160),
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 10.0),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Image(
                        image:
                            AssetImage("assets/shop/Selling_product_01.png")),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                    ),
                    Image(
                        image:
                            AssetImage("assets/shop/Selling_product_02.png")),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
