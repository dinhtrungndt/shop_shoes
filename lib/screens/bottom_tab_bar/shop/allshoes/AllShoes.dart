import 'package:flutter/material.dart';

class AllShoes extends StatefulWidget {
  const AllShoes({super.key});

  @override
  State<AllShoes> createState() => _AllShoesState();
}

class _AllShoesState extends State<AllShoes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("All Shoes"),
    );
  }
}
