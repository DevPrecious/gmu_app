import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gmu_app/constants/constants.dart';
import 'package:gmu_app/features/auth/views/login_screen.dart';
import 'package:gmu_app/widgets/round_button_widget.dart';
import 'package:gmu_app/widgets/text_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              hintText: 'Full name',
              controller: _usernameController,
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFieldWidget(
              hintText: 'Email address',
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
            const Center(
              child: RoundButtonWidget(
                backgroundColor: UiConstants.primaryColor,
                icon: Icon(
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
                  Get.to(() => const LoginScreen());
                },
                child: Text(
                  'Login',
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
