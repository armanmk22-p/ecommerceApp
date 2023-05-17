import 'dart:ui';

import 'package:ecommerce_app/constants/app_colors.dart';
import 'package:ecommerce_app/screens/category_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/product_list_screen.dart';
import 'package:ecommerce_app/widgets/product_items.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int selectedBottomNavigation = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: IndexedStack(
          index: selectedBottomNavigation ,
          children: getScreens(),
        ),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40,sigmaY: 40),
            child: BottomNavigationBar(
              onTap: (int index){
                setState(() {
                  selectedBottomNavigation = index;
                });
              },
              currentIndex: selectedBottomNavigation,
              type: BottomNavigationBarType.fixed,
              backgroundColor:Colors.transparent ,
              elevation: 0,
              selectedLabelStyle:const TextStyle(
                fontWeight: FontWeight.bold,fontSize: 10,
                color: AppColors.blue,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold,fontSize: 10,
                color: Colors.black,
              ),

              items: [
                BottomNavigationBarItem(
                  icon:Image.asset('assets/images/icon_profile.png') ,
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      child: Image.asset('assets/images/icon_profile_active.png'),
                      decoration:const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 13)
                          )
                        ],
                      ),
                    ),
                  ),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon:Image.asset('assets/images/icon_basket.png') ,
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      child: Image.asset('assets/images/icon_basket_active.png'),
                      decoration:const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 13)
                          )
                        ],
                      ),
                    ),
                  ),
                  label: 'Basket',
                ),
                BottomNavigationBarItem(
                  icon:Image.asset('assets/images/icon_category.png') ,
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      child: Image.asset('assets/images/icon_category_active.png'),
                      decoration:const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 13)
                          )
                        ],
                      ),
                    ),
                  ),
                  label: 'Category',
                ),
                BottomNavigationBarItem(
                  icon:Image.asset('assets/images/icon_home.png') ,
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      child: Image.asset('assets/images/icon_home_active.png'),
                      decoration:const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.blue,
                              blurRadius: 20,
                              spreadRadius: -7,
                              offset: Offset(0.0, 13)
                          )
                        ],
                      ),
                    ),
                  ),
                  label: 'Home',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getScreens() {
    return <Widget>[
     HomeScreen(),
      CategoryScreen(),
      ProductListScreen(),
      CategoryScreen(),
    ];
  }
}
