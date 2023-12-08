import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gmu_app/constants/colors.dart';
import 'package:gmu_app/widgets/app_bar_widget.dart';
import 'package:gmu_app/widgets/get_started_widget.dart';
import 'package:gmu_app/widgets/music_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List genres = [
    'Energies',
    'Worship',
    'Praise',
    '9ja',
    'Live show',
    'Xperience',
    'Don Moen'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          'GMU',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                const Icon(Icons.search),
                SizedBox(
                  width: 10.w,
                ),
                const CircleAvatar(),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 6.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 40.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: genres.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    child: Chip(
                      label: Text(
                        genres[index],
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const GetStartedWidget(
              heading: 'MUSIC TO GET YOU STARTED',
              body: 'Welcome Precious',
            ),
            SizedBox(
              height: 20.h,
            ),
            const MusicCard(),
            SizedBox(
              height: 20.h,
            ),
            const MusicCard(),
            SizedBox(
              height: 20.h,
            ),
            const MusicCard(),
            SizedBox(
              height: 20.h,
            ),
            const MusicCard(),
          ],
        ),
      ),
    );
  }
}
