import 'package:flutter/material.dart';

class LifeStyle extends StatefulWidget {
  const LifeStyle({Key? key}) : super(key: key);

  @override
  State<LifeStyle> createState() => _LifeStyleState();
}

class _LifeStyleState extends State<LifeStyle> {
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
                    "New life style",
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
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 0, 95, 103)),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 223, 252, 248)
                                .withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Image(
                          image:
                              AssetImage("assets/home/life_style_new_03.png")),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 0, 95, 103)),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 223, 252, 248)
                                .withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Image(
                          image:
                              AssetImage("assets/home/life_style_new_04.png")),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 0, 95, 103)),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 223, 252, 248)
                                .withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Image(
                          image:
                              AssetImage("assets/home/life_style_new_03.png")),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 0, 95, 103)),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 223, 252, 248)
                                .withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Image(
                          image:
                              AssetImage("assets/home/life_style_new_04.png")),
                    ),
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
