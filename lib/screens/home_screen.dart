import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../widgets/banner_slider.dart';
import '../widgets/product_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundScaffoldColor,
      body: SafeArea(
        child: Center(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 44, right: 44, bottom: 32,top: 20),
                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 16,),
                        Image.asset('assets/images/icon_search.png'),
                        SizedBox(width: 10,),
                        Expanded(
                            child: Text(
                              'search products',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        Image.asset('assets/images/icon_apple_blue.png'),
                        SizedBox(width: 16,),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: BannerSlider(),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 44, right: 44, bottom: 20,top:32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 44),
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CategoryHorizontalItemList(),
                          );
                        })),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 44, right: 44, bottom: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'Best Selling',
                        style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 44),
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: ProductItems(),
                          );
                        })),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 44, right: 44, bottom: 20, top: 32),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'The Most Visited',
                        style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 44),
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: ProductItems(),
                          );
                        })),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryHorizontalItemList extends StatelessWidget {
  const CategoryHorizontalItemList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: ShapeDecoration(
                  color: Colors.red,
                  shadows: [
                    BoxShadow(
                        color: Colors.red,
                        blurRadius: 25,
                        spreadRadius: -12,
                        offset: Offset(0.0, 15))
                  ],
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
            ),
            Icon(
              Icons.add,
              size: 32,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Test',
          style: TextStyle(fontFamily: 'SB', fontSize: 12),
        ),
      ],
    );
  }
}
