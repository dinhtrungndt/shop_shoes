import 'package:flutter/material.dart';

// Screens
import 'package:shop_shoes/screens/bottom_tab_bar/cart/index.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/home/index.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/profile/index.dart';
import 'package:shop_shoes/screens/bottom_tab_bar/shop/index.dart';

class MainHomeScreens extends StatefulWidget {
  const MainHomeScreens({
    super.key,
  });

  @override
  State<MainHomeScreens> createState() => _MainHomeScreensState();
}

class _MainHomeScreensState extends State<MainHomeScreens> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const ShopScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  final List<List<ImageProvider>> tabImages = [
    [
      const AssetImage("assets/home.png"),
      const AssetImage("assets/home_click.png")
    ],
    [
      const AssetImage("assets/shop.png"),
      const AssetImage("assets/shop_click.png")
    ],
    [
      const AssetImage("assets/cart.png"),
      const AssetImage("assets/cart_click.png")
    ],
    [
      const AssetImage("assets/profile.png"),
      const AssetImage("assets/profile_click.png")
    ],
  ];

  final List<List<ImageProvider>> tabAdress = [
    [
      const AssetImage("assets/home.png"),
      const AssetImage("assets/home_click.png")
    ],
    [
      const AssetImage("assets/shop.png"),
      const AssetImage("assets/shop_click.png")
    ],
    [
      const AssetImage("assets/cart.png"),
      const AssetImage("assets/cart_click.png")
    ],
    [
      const AssetImage("assets/profile.png"),
      const AssetImage("assets/profile_click.png")
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 10,
        child: const Icon(
          Icons.add,
          size: 45,
          color: Color.fromARGB(255, 0, 99, 108),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              bottomTabBarItem(tabImages[0], 'Home', 0),
              bottomTabBarItem(tabImages[1], 'Shop', 1),
              bottomTabBarItem(tabImages[2], 'Cart', 2),
              bottomTabBarItem(tabImages[3], 'Profile', 3),
            ],
          ),
        ),
      ),
    );
  }

  MaterialButton bottomTabBarItem(
      List<ImageProvider> images, String text, int tabIndex) {
    return MaterialButton(
      minWidth: 50,
      onPressed: () {
        setState(() {
          currentScreen = screens[tabIndex];
          currentTab = tabIndex;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Visibility(
          //   visible: currentTab == tabIndex,
          //   child: Container(
          //     width: 10,
          //     height: 10,
          //     decoration: BoxDecoration(
          //       color: const Color.fromARGB(255, 0, 95, 103),
          //       borderRadius: BorderRadius.circular(5),
          //     ),
          //   ),
          // ),
          Image(
            image: currentTab == tabIndex
                ? const AssetImage("assets/adress_click.png")
                : const AssetImage("assets/adress.png"),
          ),
          const SizedBox(
            height: 5,
          ),
          Image(
              image: currentTab == tabIndex
                  ? images[1]
                  : images[0]), // Sử dụng ảnh từ danh sách tabImages
          Text(
            text,
            style: TextStyle(
              color: currentTab == tabIndex
                  ? const Color.fromARGB(255, 0, 95, 103)
                  : Colors.grey,
              fontWeight:
                  currentTab == tabIndex ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
