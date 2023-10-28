import 'package:flutter/material.dart';

class OurCollection extends StatefulWidget {
  const OurCollection({super.key});

  @override
  State<OurCollection> createState() => _OurCollectionState();
}

class _OurCollectionState extends State<OurCollection> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Our Collection"),
      ),
    );
  }
}
