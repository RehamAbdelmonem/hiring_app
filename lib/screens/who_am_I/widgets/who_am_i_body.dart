import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hiring_app/screens/register/controllers/gender_controller.dart';
import 'package:hiring_app/screens/register/controllers/user_type_controller.dart';
import 'package:hiring_app/screens/register/widgets/gender_list.dart';
import 'package:hiring_app/screens/register/widgets/profile_picture.dart';
import 'package:hiring_app/screens/register/widgets/skills_field.dart';
import 'package:hiring_app/screens/register/widgets/social_media.dart';
import 'package:hiring_app/screens/register/widgets/user_type_list.dart';
import 'package:hiring_app/utils/styles.dart';
import 'package:hiring_app/widgets/text_field_widget.dart';

class WhoAmIBody extends StatefulWidget {
  const WhoAmIBody({super.key});

  @override
  State<WhoAmIBody> createState() => _WhoAmIBodyState();
}

class _WhoAmIBodyState extends State<WhoAmIBody> {
  final TextEditingController firstName = TextEditingController();

  final TextEditingController lastName = TextEditingController();

  final TextEditingController emailAddress = TextEditingController();

  final TextEditingController password = TextEditingController();

  final UserTypeController _userTypeController = UserTypeController();

  final TextEditingController about = TextEditingController();

  final TextEditingController salary = TextEditingController();

  final TextEditingController birthDate = TextEditingController();

  final TextEditingController skills = TextEditingController();

  final TextEditingController socialMedia = TextEditingController();

  final GenderController _genderController = GenderController();
  
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 55, left: 10),
              child: Text(
                'Who Am I',
                style: Styles.appBarStyle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfilePicture(),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFieldWidget(
                    controller: firstName,
                    fieldText: 'First Name'),
                ),
                Expanded(
                  child: TextFieldWidget(
                    controller: lastName,
                    fieldText: 'Last Name'),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            TextFieldWidget(
              controller: emailAddress,
              fieldText: 'Email Address'),
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
            UserTypeList(
              controller: _userTypeController,
            ),
            const SizedBox(
              height: 14,
            ),
            TextFieldWidget(
              controller: about,
              fieldText: 'About',
              maxLines: 5,
              textfieldHeight: 113,
            ),
            const SizedBox(
              height: 14,
            ),
            TextFieldWidget(
              controller: salary,
              fieldText: 'Salary'),
            const SizedBox(
              height: 14,
            ),
            TextFieldWidget(
              controller: birthDate,
              fieldText: 'Birth Date',
              fieldIcon: FontAwesomeIcons.calendarDays,
            ),
            const SizedBox(
              height: 14,
            ),
            GenderList(
              controller: _genderController,
            ),
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
          ],
        ),
      );
  }
}