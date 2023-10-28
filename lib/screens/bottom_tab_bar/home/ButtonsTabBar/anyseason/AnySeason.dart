import 'package:flutter/material.dart';

class AnySeason extends StatefulWidget {
  const AnySeason({super.key});

  @override
  State<AnySeason> createState() => _AnySeasonState();
}

class _AnySeasonState extends State<AnySeason> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Text("AnySeason"),
      ],
    );
  }
}
