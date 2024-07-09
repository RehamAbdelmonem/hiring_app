import 'package:flutter/material.dart';
import 'package:hiring_app/screens/register/controllers/user_type_controller.dart';
import 'package:hiring_app/widgets/text_field_widget.dart';
import 'package:hiring_app/screens/register/widgets/user_type_list.dart';

class RegisterScreen extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const RegisterScreen({super.key, required this.formKey});

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


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Form(
        key: widget.formKey,
        child: Column(
          children: [
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

            //       // if (_registerFormKey.currentState!.validate()) {
            //       //   showSnackBar(context, 'Fill the required fields');
            //       // }
            //       // else{
            //       //   Navigator.of(context).push(MaterialPageRoute(builder: (context){
            //       //     return CompleteDataScreen();
            //       //   }));
            //       //   setState(() {

            //       //   });
            //       // }

            //     },
            //     buttonText: 'Next',
            //     buttonWidth: 160,
            //     buttonHeight: 56,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
