import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double textFieldWidth;

  const Header({
    super.key,
    this.textFieldWidth = 370,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
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
      ],
    );
  }
}
