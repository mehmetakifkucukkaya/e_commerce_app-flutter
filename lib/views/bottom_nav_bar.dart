import 'package:e_commerce_app_flutter/core/constants/app_color.dart';
import 'package:e_commerce_app_flutter/views/cart_page.dart';
import 'package:e_commerce_app_flutter/views/favorite_page.dart';
import 'package:e_commerce_app_flutter/views/home_page.dart';
import 'package:e_commerce_app_flutter/views/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2;

  List screens = [
    const Scaffold(),
    const FavoritePage(),
    const HomePage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: AppColors.kprimaryColor,
        child: const Icon(
          Icons.home,
          size: 35,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: Icon(Icons.grid_view_outlined,
                  size: 30,
                  color: currentIndex == 0
                      ? AppColors.kprimaryColor
                      : Colors.grey.shade400),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: Icon(Icons.favorite_border,
                  size: 30,
                  color: currentIndex == 1
                      ? AppColors.kprimaryColor
                      : Colors.grey.shade400),
            ),
            const SizedBox(width: 15),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              icon: Icon(Icons.shopping_cart_checkout_outlined,
                  size: 30,
                  color: currentIndex == 3
                      ? AppColors.kprimaryColor
                      : Colors.grey.shade400),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              icon: Icon(Icons.person,
                  size: 30,
                  color: currentIndex == 4
                      ? AppColors.kprimaryColor
                      : Colors.grey.shade400),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
