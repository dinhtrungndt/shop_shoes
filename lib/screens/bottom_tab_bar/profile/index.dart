import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 10)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: AssetImage('assets/back_login.png')),
                Text(
                  "Hồ sơ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 95, 103)),
                ),
                Image(image: AssetImage('assets/profile/cart.png')),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              width: 350,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 101, 190, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Image(
                    image: AssetImage('assets/profile/avatar.png'),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    "Nguyễn Đình Trưng",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 95, 103)),
                  ),
                  Text(
                    "nguyendinhtrung.it@gmai.com",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 0, 95, 103)),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            const Image(image: AssetImage('assets/profile/caidatthongtin.png')),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Image(image: AssetImage('assets/profile/dathang.png')),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Image(image: AssetImage('assets/profile/hotro.png')),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Image(image: AssetImage('assets/profile/dangxuat.png')),
          ],
        ),
      ),
    );
  }
}
