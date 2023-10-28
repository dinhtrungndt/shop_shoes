import 'package:flutter/material.dart';

class AnySeason extends StatefulWidget {
  const AnySeason({super.key});

  @override
  State<AnySeason> createState() => _AnySeasonState();
}

class _AnySeasonState extends State<AnySeason> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Men's",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 95, 103),
                ),
              ),
              Text(
                "All >",
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(255, 0, 95, 103),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 7),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Image(
                    image: AssetImage(
                        "assets/home/list_hovertical_new_mens_01.png")),
                Image(
                    image: AssetImage(
                        "assets/home/list_hovertical_new_mens_02.png")),
                Image(
                    image: AssetImage(
                        "assets/home/list_hovertical_new_mens_01.png")),
                Image(
                    image: AssetImage(
                        "assets/home/list_hovertical_new_mens_02.png")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
