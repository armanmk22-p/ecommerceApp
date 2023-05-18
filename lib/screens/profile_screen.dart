import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../widgets/profile_category_items_chip.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScaffoldColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 44, right: 44, bottom: 32, top: 20),
              child: Container(
                height: 46,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset('assets/images/icon_apple_blue.png'),
                    const Expanded(
                      child: Text(
                        'Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.blue),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Text(
              'Arman Mahmoudbeik',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '00989373168625',
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: const [
                ProfileCategoryItemsChip(),
                ProfileCategoryItemsChip(),
                ProfileCategoryItemsChip(),
                ProfileCategoryItemsChip(),
                ProfileCategoryItemsChip(),
                ProfileCategoryItemsChip(),
                ProfileCategoryItemsChip(),
                ProfileCategoryItemsChip(),
              ],
            ),
            const Spacer(),
            const Text(
              'Apple Shop',
              style: TextStyle(fontSize: 10, color: AppColors.grey),
            ),
            const Text('v-1.0',
                style: TextStyle(fontSize: 10, color: AppColors.grey)),
            const Text('Instagram.com/mk2009',
                style: TextStyle(fontSize: 10, color: AppColors.grey))
          ],
        ),
      ),
    );
  }
}
