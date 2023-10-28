import 'package:flutter/material.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/header/Header.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [Header()],
        ),
      ),
    );
  }
}
