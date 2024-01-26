import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gmu_app/constants/colors.dart';
import 'package:gmu_app/features/auth/views/login_screen.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                'GMU - Gospel everywhere',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Image.asset(
                'assets/images/lagoom.png',
                scale: 1.1,
              ),
              Text(
                'find your favorite,\ngospel artiste here!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'time to find your favorite\nmusic gospel song here today!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SwipeableButtonView(
                  isFinished: isFinished,
                  buttontextstyle: Theme.of(context).textTheme.bodyMedium,
                  onFinish: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: const LoginScreen(),
                      ),
                    );
                    setState(() {
                      isFinished = false;
                    });
                  },
                  onWaitingProcess: () {
                    Future.delayed(
                      const Duration(seconds: 2),
                      () {
                        setState(() {
                          isFinished = true;
                        });
                      },
                    );
                  },
                  activeColor: primaryColor,
                  buttonWidget: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  ),
                  buttonText: 'Enter the realm',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
