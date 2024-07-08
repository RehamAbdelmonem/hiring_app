import 'package:flutter/material.dart';
import 'package:hiring_app/screens/register/controllers/user_type_controller.dart';
import 'package:hiring_app/screens/register/screens/complete_data_screen.dart';
import 'package:hiring_app/widgets/custom_app_bar.dart';
import 'package:hiring_app/widgets/custom_button.dart';
import 'package:hiring_app/widgets/text_field_widget.dart';
import 'package:hiring_app/screens/register/widgets/user_type_list.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController firstName = TextEditingController();

  final TextEditingController lastName = TextEditingController();

  final TextEditingController emailAddress = TextEditingController();

  final TextEditingController password = TextEditingController();

  final TextEditingController confirmPassword = TextEditingController();

  final UserTypeController _userTypeController = UserTypeController();

  final _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Form(
            key: _registerFormKey,
            child: Column(
              children: [
                const CustomAppBar(textAppBar: 'Register'),
                const SizedBox(height: 45),
                Row(
                  children: [
                    Expanded(
                      child: TextFieldWidget(
                          controller: firstName, fieldText: 'First Name'),
                    ),
                    Expanded(
                      child: TextFieldWidget(
                          controller: lastName, fieldText: 'Last Name'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                TextFieldWidget(
                    controller: emailAddress, fieldText: 'Email Address'),
                const SizedBox(
                  height: 14,
                ),
                TextFieldWidget(
                  controller: password,
                  fieldText: 'Password',
                  fieldIcon: Icons.visibility_off,
                ),
                const SizedBox(
                  height: 14,
                ),
                TextFieldWidget(
                  controller: confirmPassword,
                  fieldText: 'Confirm Password',
                  fieldIcon: Icons.visibility_off,
                ),
                const SizedBox(
                  height: 14,
                ),
                UserTypeList(
                  controller: _userTypeController,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 194, top: 40),
                  child: CustomButton(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return CompleteDataScreen();
                      }));


                      // if (_registerFormKey.currentState!.validate()) {
                      //   showSnackBar(context, 'Fill the required fields');
                      // }
                      // else{
                      //   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      //     return CompleteDataScreen();
                      //   }));
                      //   setState(() {

                      //   });
                      // }

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
      ),
    );
  }
}
