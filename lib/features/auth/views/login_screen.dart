import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gmu_app/constants/constants.dart';
import 'package:gmu_app/features/app/views/home_screen.dart';
import 'package:gmu_app/features/auth/views/register_screen.dart';
import 'package:gmu_app/widgets/round_button_widget.dart';
import 'package:gmu_app/widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Experience\nLuxury again!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Login your account',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFieldWidget(
              hintText: 'Username',
              controller: _usernameController,
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFieldWidget(
              hintText: 'Password',
              isPassword: true,
              controller: _passwordController,
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: RoundButtonWidget(
                backgroundColor: UiConstants.primaryColor,
                onTap: () {
                  Get.to(
                    transition: Transition.zoom,
                    () => const HomeScreen(),
                  );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                color: UiConstants.primaryColor,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Get.to(
                    transition: Transition.upToDown,
                    () => const RegisterScreen(),
                  );
                },
                child: Text(
                  'Create Account',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
