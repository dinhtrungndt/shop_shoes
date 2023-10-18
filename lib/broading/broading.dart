import 'package:flutter/material.dart';
import 'package:shop_shoes/screens/login_Email_SDT/index.dart';

class BroadingScreens extends StatefulWidget {
  const BroadingScreens({super.key});

  @override
  State<BroadingScreens> createState() => _BroadingScreensState();
}

class _BroadingScreensState extends State<BroadingScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 214, 231, 244),
      body: Stack(
        children: [
          Positioned(
            width: 100,
            top: 45,
            left: 25,
            child: Image.asset(
              'assets/logo.png',
            ),
          ),

          Center(
            child: ListView(
              children: [
                Container(
                  child: Image.asset(
                    'assets/line_behind.png',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Column(
              children: [
                Positioned(
                  right: 5,
                  child: Image.asset(
                    'assets/shoes_center.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 28, 148, 157),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 136, 141),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 59, 101, 104),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 121, 147, 149),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Bringing perfect shoes for you",
                    style: TextStyle(
                        fontSize: 43,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 28, 148, 157)),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Smart, comfortable and elegant shoes for you",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: Color.fromARGB(255, 28, 148, 157)),
                      textAlign: TextAlign.center),
                ),
                // bottom chuyển qua Homescreen(),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_) => const LoginEmailPhone()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 93, 202, 209),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 10,
                      minimumSize: const Size(200, 50),
                    ),
                    child: const Text(
                      'Start >',
                      style: TextStyle(fontSize: 25, fontFamily: 'Poppins'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
