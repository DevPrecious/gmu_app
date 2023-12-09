import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopArtisteWidget extends StatelessWidget {
  const TopArtisteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70.w,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
          ),
        ),
        Text(
          'Don Moen',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
