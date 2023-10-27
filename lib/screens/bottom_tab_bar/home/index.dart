import 'package:flutter/material.dart';

// component
import 'package:shop_shoes/screens/bottom_tab_bar/home/search/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double price = 289;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage("assets/home/menu.png"),
                ),
                Image(
                  image: AssetImage("assets/logo.png"),
                  width: 80,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image(
                        image: AssetImage("assets/home/cart.png"),
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/home/account.png"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TextFieldSearch(),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trending products",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 95, 103),
                    ),
                  ),
                  Text(
                    "Nike original 2023",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 0, 95, 103),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                const Image(
                    image: AssetImage("assets/home/background_trending.png")),
                const Image(
                    image: AssetImage("assets/home/boder_treding_in.png")),
                const Image(image: AssetImage("assets/home/line_treding.png")),
                const Padding(
                  padding: EdgeInsets.only(top: 0, left: 120),
                  child:
                      Image(image: AssetImage("assets/home/shoes_treding.png")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nike Air Max 270",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 95, 103),
                        ),
                      ),
                      const Text(
                        "Men’s shoes",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 95, 103),
                        ),
                      ),
                      Text(
                        "\$${price.toStringAsFixed(0)}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 95, 103),
                        ),
                      ),
                      const Image(
                          image: AssetImage("assets/home/star_treding.png")),
                      const SizedBox(
                        height: 7,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 13, 207, 225),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(60, 40),
                        ),
                        child: const Text(
                          "Shop now",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
