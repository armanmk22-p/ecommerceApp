import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Image.asset('assets/images/icon_apple_blue.png'),
                      Expanded(
                          child: Text(
                        'Iphone',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                          color: AppColors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                      Image.asset('assets/images/icon_back.png'),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  'Iphone 22 SE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44,right: 44),
                child: Container(
                  height: 284,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/icon_star.png'),
                              Text(
                                '4.6',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              SizedBox(height: double.infinity,
                                  child: Image.asset('assets/images/iphone.png')),
                              Spacer(),
                              Image.asset(
                                  'assets/images/icon_favorite_deactive.png'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height:70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 44),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: ((context, index) {
                              return Container(
                                margin: EdgeInsets.only(left: 20),
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                    width: 1,
                                    color: AppColors.grey,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Image.asset('assets/images/iphone.png'),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 20,right: 44,left: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Choose Color',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(8),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(8),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(8),),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 20,right: 44,left: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Choose Internal Memory',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 25,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,color: AppColors.grey,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8),),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Center(child: Text('128',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 25,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,color: AppColors.grey,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8),),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Center(child: Text('128',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 25,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,color: AppColors.grey,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8),),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Center(child: Text('128',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 24,left: 44,right: 44),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1,color: AppColors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(15),),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset('assets/images/icon_left_categroy.png'),
                    SizedBox(width: 10,),
                    Text('see',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 12,color: AppColors.blue,
                    ),),
                    Spacer(),
                    const Text('technical specifications',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 24,left: 44,right: 44),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1,color: AppColors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(15),),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset('assets/images/icon_left_categroy.png'),
                    SizedBox(width: 10,),
                    Text('see',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 12,color: AppColors.blue,
                    ),),
                    Spacer(),
                    const Text('product description',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 24,left: 44,right: 44),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1,color: AppColors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(15),),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset('assets/images/icon_left_categroy.png'),
                    SizedBox(width: 10,),
                    Text('see',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 12,color: AppColors.blue,
                    ),),
                    Spacer(),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(8),),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(8),),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 30,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.all(Radius.circular(8),),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 45,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(8),),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 60,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(8),),
                            ),
                            child: Center(child: Text('+12',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    const Text('users comments',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 20,right: 34,left: 34,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    PriceTagButtom(),
                    AddToBasketButtom(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class AddToBasketButtom extends StatelessWidget {
  const AddToBasketButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Positioned(
          child: Container(
            height: 60,
            width: 140,
            decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15),),
            ),
          ),
        ),
        Positioned(
          child: ClipRRect(
            borderRadius:BorderRadius.all(Radius.circular(15),),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
              child: Container(
                height: 53,
                width: 160,
                child: Center(child: Text('Add To Basket',style: TextStyle(fontSize: 16,color: Colors.white,),)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PriceTagButtom extends StatelessWidget {
  const PriceTagButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Positioned(
          child: Container(
            height: 60,
            width: 140,
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.all(Radius.circular(15),),
            ),
          ),
        ),
        Positioned(
          child: ClipRRect(
            borderRadius:BorderRadius.all(Radius.circular(15),),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
              child: Container(
                height: 53,
                width: 160,
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '\$',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '2,500',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            '2,300',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          child: Text(
                            '\%3',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
