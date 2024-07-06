import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hiring_app/widgets/custom_app_bar.dart';
import 'package:hiring_app/widgets/custom_button.dart';
import 'package:hiring_app/screens/register/widgets/gender_list.dart';
import 'package:hiring_app/screens/register/widgets/profile_picture.dart';
import 'package:hiring_app/screens/register/widgets/salary_field.dart';
import 'package:hiring_app/screens/register/widgets/skills_field.dart';
import 'package:hiring_app/screens/register/widgets/social_media.dart';
import 'package:hiring_app/widgets/text_field_widget.dart';

class CompleteDataScreen extends StatelessWidget {
  const CompleteDataScreen({super.key});

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
              const ProfilePicture(),
              const SizedBox(
                height: 14,
              ),
              const TextFieldWidget(
                fieldText: 'About',
                maxLines: 5,
                textfieldHeight: 113,
              ),
              const SizedBox(
                height: 14,
              ),
              const SalaryField(),
              const SizedBox(
                height: 14,
              ),
              const TextFieldWidget(
                fieldText: 'Birth Date',
                fieldIcon: FontAwesomeIcons.calendarDays,
              ),
              const SizedBox(
                height: 14,
              ),
              const GenderList(),
              const SizedBox(
                height: 14,
              ),
              const SkillsField(),
              const SizedBox(
                height: 14,
              ),
              const SocialMedia(),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                onTap: () {},
                buttonText: 'Submit',
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

