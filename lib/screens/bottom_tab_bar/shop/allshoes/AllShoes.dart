import 'package:flutter/material.dart';

class AllShoes extends StatefulWidget {
  const AllShoes({super.key});

  @override
  State<AllShoes> createState() => _AllShoesState();
}

class _AllShoesState extends State<AllShoes> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Text("All Shoes"),
        ],
      ),
    );
  }
}
