
import 'package:flutter/material.dart';

class ProfileCategoryItemsChip extends StatelessWidget {
  const ProfileCategoryItemsChip({
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
