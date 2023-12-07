import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmu_app/views/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            textTheme: GoogleFonts.josefinSansTextTheme(
              TextTheme(
                bodyLarge: TextStyle(
                  fontSize: 35.sp,
                  fontWeight: FontWeight.w500,
                ),
                bodyMedium: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          home: child,
        );
      },
      child: const WelcomeScreen(),
    );
  }
}
