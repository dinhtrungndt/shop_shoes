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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 0, 108, 111),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              bottomTabBarItem(Icons.home, 'Home', 0),
              bottomTabBarItem(Icons.store, 'Shop', 1),
              bottomTabBarItem(Icons.shopping_cart, 'Cart', 2),
              bottomTabBarItem(Icons.person, 'Profile', 3),
            ],
          ),
        ),
      ),
    );
  }

  MaterialButton bottomTabBarItem(IconData icon, String text, int tabIndex) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {
        setState(() {
          currentScreen = screens[tabIndex];
          currentTab = tabIndex;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: currentTab == tabIndex
                ? const Color.fromARGB(255, 0, 95, 103)
                : Colors.grey,
          ),
          Text(
            text,
            style: TextStyle(
              color: currentTab == tabIndex
                  ? const Color.fromARGB(255, 0, 95, 103)
                  : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
