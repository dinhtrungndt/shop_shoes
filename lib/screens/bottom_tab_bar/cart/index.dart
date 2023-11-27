import 'package:flutter/material.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/search/Search.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('assets/back_login.png'),
                ),
                Text(
                  "Giỏ hàng",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 95, 103)),
                ),
                Image(
                  image: AssetImage('assets/home/account.png'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Search(),
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Text(
                  "1 Item",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 95, 103)),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Row(
                      children: [
                        Image(
                          image: AssetImage('assets/cart/item_01.png'),
                          width: 130,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "Nike Club Max",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 95, 103)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$584.95",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 95, 103)),
                            ),
                            Text(
                              "Blule",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 95, 103)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 320,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(233, 0, 101, 233),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        const Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 100)),
                            Text(
                              "+",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 25)),
                            Text(
                              "1",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 25)),
                            Text(
                              "-",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  width: 30,
                  height: 160,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(233, 233, 0, 35),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
