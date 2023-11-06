import 'package:flutter/material.dart';
import 'package:shop_shoes/services/products.dart';

class SelectItem extends StatelessWidget {
  const SelectItem({
    Key? key,
    required this.colors,
    required this.Shoes,
    required this.pickColorList,
    required this.price,
  }) : super(key: key);

  final List<Color> colors;
  final List<Image> Shoes;
  final List<List<Image>> pickColorList;
  final double price;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: productsAPI.getProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Loading state
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.hourglass_empty, size: 36, color: Colors.blue),
              Text(
                "Loading...",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              )
            ],
          );
        } else if (snapshot.hasError) {
          // Error state
          return Text("Error: ${snapshot.error}");
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          // No data state
          return const Text("No products available.");
        } else {
          final products = snapshot.data!;
          return Scaffold(
            body: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final product = products[index];
                Color itemColor = colors[index % colors.length];
                Image itemShoes = Shoes[index % Shoes.length];
                List<Image> itemPickColorList =
                    pickColorList[index % pickColorList.length];
                final kind = product['kind'];
                final name = product['name'];
                final productPrice = product['price'];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 177,
                        height: 309,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: itemColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/cart_item_list.png")),
                                  Image(
                                      image: AssetImage(
                                          "assets/favorite_item_list.png")),
                                ],
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 10)),
                              Row(
                                children: [
                                  Text(
                                    kind,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 0, 95, 103),
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 5)),
                              Row(
                                children: [
                                  Text(
                                    name,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 0, 95, 103),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 5)),
                              Row(
                                children: [
                                  Text(
                                    "\$$productPrice",
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 0, 95, 103),
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Image(
                                image: itemShoes.image,
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 10)),
                              Row(
                                children: [
                                  for (var item in itemPickColorList)
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        children: [
                                          Image(
                                            image: item.image,
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/account_item_01.png"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Our happy customers",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 10,
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/star_item.png"),
                                              width: 8,
                                            ),
                                            Text("4.9",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 95, 103),
                                                  fontSize: 8,
                                                )),
                                            Text("(15K Reviews)",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 170, 170, 170),
                                                  fontSize: 8,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 7),
                                      child: Image(
                                          image: AssetImage(
                                              "assets/next_item.png")),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          );
        }
      },
    );
  }
}
