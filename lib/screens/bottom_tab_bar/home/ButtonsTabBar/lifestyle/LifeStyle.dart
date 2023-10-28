import 'package:flutter/material.dart';

class LifeStyle extends StatefulWidget {
  const LifeStyle({super.key});

  @override
  State<LifeStyle> createState() => _LifeStyleState();
}

class _LifeStyleState extends State<LifeStyle> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Text("LifeStyle"),
      ],
    );
  }
}
