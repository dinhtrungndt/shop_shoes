import 'package:flutter/material.dart';

// Login Email
import 'Email/index.dart';
import 'package:shop_shoes/screens/login_Email_SDT/Phone/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      initialIndex: 0,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Positioned(
              width: 444.44,
              height: 460.64,
              top: 250,
              left: 20,
              child: Image.asset('assets/Ellipse-237.png'),
            ),
            Positioned(
              width: 491.77,
              height: 503.55,
              top: 80,
              right: 10,
              child: Image.asset('assets/Ellipse-238.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      top: 50, left: 30, right: 20, bottom: 20),
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
                Container(
                  padding: const EdgeInsets.all(7),
                  margin: const EdgeInsets.only(
                    top: 15,
                    left: 30,
                    right: 30,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(219, 251, 251, 251),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  width: 354,
                  child: SizedBox(
                    height: 30,
                    child: TabBar(
                      controller: _tabController,
                      tabs: const [
                        Tab(
                          child: Text(
                            "Email",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 95, 103)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Phone Number",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 95, 103)),
                          ),
                        ),
                      ],
                      indicator: BoxDecoration(
                        color: const Color.fromARGB(
                            255, 255, 255, 255), // Màu thanh dưới khi chọn tab
                        borderRadius:
                            BorderRadius.circular(30.0), // Border tròn
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // Màu shadow
                            // offset: Offset(0, 4), // Điểm bắt đầu của shadow
                            blurRadius: 4, // Mức độ mờ
                            spreadRadius: 0, // Phạm vi lan rộng của shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      LoginEmail(),
                      LoginPhone(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
