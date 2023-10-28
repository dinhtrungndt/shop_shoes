import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
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
        SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search for products",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
              ),
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Image(image: AssetImage("assets/home/button_search.png")),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
