import 'package:flutter/material.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/shop/select_item/Select_Item.dart';

class AllShoes extends StatefulWidget {
  const AllShoes({super.key});

  @override
  State<AllShoes> createState() => _AllShoesState();
}

class _AllShoesState extends State<AllShoes> {
  double price = 130.000;

  List<Color> colors = [
    const Color.fromARGB(134, 85, 105, 237),
    const Color.fromARGB(133, 85, 224, 237),
    const Color.fromARGB(133, 237, 237, 85),
    const Color.fromARGB(133, 214, 63, 248),
    const Color.fromARGB(133, 237, 85, 85),
  ];

  List<Image> Shoes = [
    const Image(image: AssetImage("assets/shop/shoes_item_01.png")),
    const Image(image: AssetImage("assets/shop/shoes_item_02.png")),
  ];

  List<List<Image>> pickColorList = [
    [
      const Image(image: AssetImage("assets/pick_color_item_02.png")),
      const Image(image: AssetImage("assets/pick_color_item_03.png")),
      const Image(image: AssetImage("assets/pick_color_item_blue.png")),
    ],
    [
      const Image(image: AssetImage("assets/pick_color_item_02.png")),
      const Image(image: AssetImage("assets/pick_color_item_03.png")),
      const Image(image: AssetImage("assets/pick_color_item_blue.png")),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectItem(
        colors: colors,
        Shoes: Shoes,
        pickColorList: pickColorList,
        price: price,
      ),
    );
  }
}
