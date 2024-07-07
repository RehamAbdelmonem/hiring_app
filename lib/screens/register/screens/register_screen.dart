import 'package:flutter/material.dart';
import 'package:hiring_app/screens/register/screens/complete_data_screen.dart';
import 'package:hiring_app/widgets/custom_app_bar.dart';
import 'package:hiring_app/widgets/custom_button.dart';
import 'package:hiring_app/widgets/text_field_widget.dart';
import 'package:hiring_app/screens/register/widgets/user_type_list.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            children: [
              const CustomAppBar(textAppBar: 'Register'),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: TextFieldWidget(fieldText: 'First Name'),
                  ),
                  Expanded(
                    child: TextFieldWidget(fieldText: 'Last Name'),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              const TextFieldWidget(fieldText: 'Email Address'),
              const SizedBox(
                height: 14,
              ),
              const TextFieldWidget(
                fieldText: 'Password',
                fieldIcon: Icons.visibility_off,
              ),
              const SizedBox(
                height: 14,
              ),
              const TextFieldWidget(
                fieldText: 'Confirm Password',
                fieldIcon: Icons.visibility_off,
              ),
              const SizedBox(
                height: 14,
              ),
              const UserTypeList(),
              Padding(
                padding: const EdgeInsets.only(left: 194, top: 40),
                child: CustomButton(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const CompleteDataScreen();
                    }));
                  },
                  buttonText: 'Next',
                  buttonWidth: 160,
                  buttonHeight: 56,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




