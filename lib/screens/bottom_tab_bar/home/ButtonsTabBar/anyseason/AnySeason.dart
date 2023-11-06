import 'package:flutter/material.dart';
import 'package:shop_shoes/services/products.dart';

class AnySeason extends StatefulWidget {
  const AnySeason({Key? key}) : super(key: key);

  @override
  State<AnySeason> createState() => _AnySeasonState();
}

class _AnySeasonState extends State<AnySeason> {
  List<Image> listNewMen = [
    const Image(image: AssetImage("assets/home/shoes_new_01.png")),
    const Image(image: AssetImage("assets/home/shoes_new_02.png")),
  ];

  List<Color> listColors = [
    Color.fromARGB(133, 115, 237, 85),
    const Color.fromARGB(133, 85, 224, 237),
    const Color.fromARGB(133, 237, 237, 85),
    const Color.fromARGB(133, 214, 63, 248),
    const Color.fromARGB(133, 237, 85, 85),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New Men's",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 95, 103),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "All >",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 95, 103),
                        ),
                      )),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 7),
              ),
              SizedBox(
                height: 240,
                child: FutureBuilder<List<Map<String, dynamic>>>(
                  future: productsAPI.getProducts(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // Loading state
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.hourglass_empty,
                              size: 36, color: Colors.blue),
                          Text(
                            "Loading...",
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          )
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return Text("Error: ${snapshot.error}");
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Text("No products available.");
                    } else {
                      final products = snapshot.data!;
                      return Container(
                        child: ListView.builder(
                          itemCount: products.length,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Image itemNewMen =
                                listNewMen[index % listNewMen.length];
                            Color itemlistColors =
                                listColors[index % listColors.length];
                            final product = products[index];
                            final name = product['name'];
                            final kind = product['kind'];
                            final productPrice = product['price'];
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 200,
                                    height: 240,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                        color: itemlistColors),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Stack(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                'assets/home/favorite_outline.png'),
                                          ),
                                          Positioned(
                                            top: 0,
                                            left: 30,
                                            child:
                                                Image(image: itemNewMen.image),
                                          ),
                                          Positioned(
                                            top: 150,
                                            left: 10,
                                            child: Text(
                                              name,
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 95, 103),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 20,
                                            left: 10,
                                            child: Text(
                                              "\$$productPrice",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 95, 103),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 10,
                                            left: 10,
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/home/pickColor.png'),
                                            ),
                                          ),
                                          Positioned(
                                            left: 10,
                                            bottom: 0,
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/home/item_star.png'),
                                            ),
                                          ),
                                          Positioned(
                                            top: 190,
                                            right: 0,
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 37, 244, 0),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 27,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sale",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 95, 103),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "All >",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 95, 103),
                        ),
                      )),
                ],
              ),
              const Image(image: AssetImage("assets/home/sale.png")),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
