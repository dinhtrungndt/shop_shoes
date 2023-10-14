import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// child: Stack(
//   children: [
//     Positioned(
//       width: 444.44,
//       height: 460.64,
//       top: 250,
//       left: 20,
//       child: Image.asset('assets/Ellipse-237.png'),
//     ),
//     Positioned(
//       width: 491.77,
//       height: 503.55,
//       top: 80,
//       right: 10,
//       child: Image.asset('assets/Ellipse-238.png'),
//     ),
//   ],
// ),

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, left: 30, right: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/back_login.png'),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Image.asset('assets/logo.png'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: SizedBox(
                width: 200,
                child: Text(
                  "Welcome to Sneak Care, Login now!",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 0, 95, 103)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
