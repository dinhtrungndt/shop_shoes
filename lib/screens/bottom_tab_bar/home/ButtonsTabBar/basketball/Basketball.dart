import 'package:flutter/material.dart';

class Basketball extends StatefulWidget {
  const Basketball({super.key});

  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Text("Basketball"),
      ],
    );
  }
}
