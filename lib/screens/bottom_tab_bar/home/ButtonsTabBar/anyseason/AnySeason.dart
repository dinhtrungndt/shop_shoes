import 'package:flutter/material.dart';

class AnySeason extends StatefulWidget {
  const AnySeason({Key? key}) : super(key: key);

  @override
  State<AnySeason> createState() => _AnySeasonState();
}

class _AnySeasonState extends State<AnySeason> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New Men's",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 95, 103),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "All >",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 95, 103),
                        ),
                      )),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 7),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sale",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 95, 103),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "All >",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 95, 103),
                        ),
                      )),
                ],
              ),
              const Image(image: AssetImage("assets/home/sale.png")),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
