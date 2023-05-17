
import 'package:ecommerce_app/widgets/product_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundScaffoldColor,
      body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                  EdgeInsets.only(left: 44, right: 44, bottom: 32, top: 20),
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
                        SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Text(
                              'Best Selling',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                                color: AppColors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        Image.asset('assets/images/icon_apple_blue.png'),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 44,),
                sliver:SliverGrid(
                  delegate: SliverChildBuilderDelegate(((context, index) {
                    return ProductItems();
                  })),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2/2.9,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
