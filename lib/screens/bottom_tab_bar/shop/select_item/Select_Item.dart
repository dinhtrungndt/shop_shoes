import 'package:flutter/material.dart';

class SelectItem extends StatelessWidget {
  const SelectItem({
    super.key,
    required this.colors,
    required this.Shoes,
    required this.pickColorList,
    required this.price,
  });

  final List<Color> colors;
  final List<Image> Shoes;
  final List<List<Image>> pickColorList;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Color itemColor = colors[index % colors.length];
          Image itemShoes = Shoes[index % Shoes.length];
          List<Image> itemPickColorList =
              pickColorList[index % pickColorList.length];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 177,
                  height: 309,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: itemColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                                image: AssetImage("assets/cart_item_list.png")),
                            Image(
                                image: AssetImage(
                                    "assets/favorite_item_list.png")),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 10)),
                        const Row(
                          children: [
                            Text(
                              "Nike",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 95, 103),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 5)),
                        const Row(
                          children: [
                            Text(
                              "EPIC-REACT",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 95, 103),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 5)),
                        Row(
                          children: [
                            Text(
                              "\$$price",
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
                        const Padding(padding: EdgeInsets.only(bottom: 10)),
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
                                image: AssetImage("assets/account_item_01.png"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Our happy customers",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 10,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image(
                                        image:
                                            AssetImage("assets/star_item.png"),
                                        width: 8,
                                      ),
                                      Text("4.9",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 0, 95, 103),
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
                                    image: AssetImage("assets/next_item.png")),
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
}
