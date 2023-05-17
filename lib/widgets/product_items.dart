import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 160,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Stack(alignment: AlignmentDirectional.center, children: [
            Expanded(child: Container()),
            Image.asset('assets/images/iphone.png'),
            Positioned(
              child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset('assets/images/active_fav_product.png')),
              top: 0,
              right: 10,
            ),
            Positioned(
              bottom: 0,
              left: 5,
              child: Container(
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
            )
          ]),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Iphone ProMax 13',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 53,
                decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.blue,
                          blurRadius: 25,
                          spreadRadius: -12,
                          offset: Offset(0.0, 15)),
                    ]),
                child: Padding(
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
                      SizedBox(
                          width: 24,
                          child: Image.asset(
                              'assets/images/icon_right_arrow_cricle.png')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
