import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_app/screens/register/register_screen.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';
import 'package:hiring_app/widgets/custom_app_bar.dart';
import 'package:hiring_app/widgets/custom_button.dart';
import 'package:hiring_app/widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(
              textAppBar: 'Account Login',
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 45,
                left: 75,
              ),
              child: SizedBox(
                width: 250,
                height: 250,
                child: SvgPicture.asset(
                  'assets/images/Login-cuate 1.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextFieldWidget(
              fieldText: 'Email Address',
            ),
            const SizedBox(
              height: 14,
            ),
            const TextFieldWidget(
              fieldText: 'Password',
              fieldIcon: Icons.visibility_off,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: AppColors.primaryColor,
                        value: value,
                        onChanged: (bool? newValue) {
                          setState(() {
                            value = newValue ?? false;
                          });
                        },
                      ),
                      const Text(
                        'Remember me',
                        style: Styles.textStyle12,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),
                    child: const Text(
                      'Forgot password?',
                      style: Styles.textStyle12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            CustomButton(
              onTap: () {},
              buttonText: 'Login',
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account ? ",
                  style: Styles.textStyle12,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const RegisterScreen();
                    }));
                  },
                  child: Text(
                    'Register',
                    style: Styles.textStyle12
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
