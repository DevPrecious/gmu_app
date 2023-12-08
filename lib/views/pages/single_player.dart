import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gmu_app/constants/colors.dart';
import 'package:gmu_app/widgets/button_icon_widget.dart';
import 'package:gmu_app/widgets/round_button_widget.dart';

class SinglePlayer extends StatefulWidget {
  const SinglePlayer({super.key});

  @override
  State<SinglePlayer> createState() => _SinglePlayerState();
}

class _SinglePlayerState extends State<SinglePlayer> {
  double _value = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ButtonIconWidget(
            onTap: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Playing from playlist',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Bidemi Oloba',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: ButtonIconWidget(
              icon: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 20.0,
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300.h,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/bidemi.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4, 3),
                        blurRadius: 2.5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Winning Praise',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          'Bidemi Olaoba',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const Icon(
                      CupertinoIcons.heart_fill,
                      color: primaryColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Slider(
                  min: 0.0,
                  max: 100.0,
                  value: _value,
                  thumbColor: primaryColor,
                  activeColor: primaryColor,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1:46'),
                    Text('3:46'),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.repeat,
                      size: 30.w,
                    ),
                    Icon(
                      Icons.arrow_back_ios,
                      size: 30.w,
                    ),
                    const RoundButtonWidget(
                      backgroundColor: primaryColor,
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 30.w,
                    ),
                    Icon(
                      Icons.repeat,
                      size: 30.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  'Lyrics',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
