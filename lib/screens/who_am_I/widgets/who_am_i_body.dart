import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hiring_app/screens/register/widgets/gender_list.dart';
import 'package:hiring_app/screens/register/widgets/profile_picture.dart';
import 'package:hiring_app/screens/register/widgets/skills_field.dart';
import 'package:hiring_app/screens/register/widgets/social_media.dart';
import 'package:hiring_app/screens/register/widgets/user_type_list.dart';
import 'package:hiring_app/utils/styles.dart';
import 'package:hiring_app/widgets/text_field_widget.dart';

class WhoAmIBody extends StatelessWidget {
  const WhoAmIBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 55, left: 10),
              child: Text(
                'Who Am I',
                style: Styles.appBarStyle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ProfilePicture(),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFieldWidget(fieldText: 'First Name'),
                ),
                Expanded(
                  child: TextFieldWidget(fieldText: 'Last Name'),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            TextFieldWidget(fieldText: 'Email Address'),
            SizedBox(
              height: 14,
            ),
            TextFieldWidget(
              fieldText: 'Password',
              fieldIcon: Icons.visibility_off,
            ),
            SizedBox(
              height: 14,
            ),
            UserTypeList(),
            SizedBox(
              height: 14,
            ),
            TextFieldWidget(
              fieldText: 'About',
              maxLines: 5,
              textfieldHeight: 113,
            ),
            SizedBox(
              height: 14,
            ),
            TextFieldWidget(fieldText: 'Salary'),
            SizedBox(
              height: 14,
            ),
            TextFieldWidget(
              fieldText: 'Birth Date',
              fieldIcon: FontAwesomeIcons.calendarDays,
            ),
            SizedBox(
              height: 14,
            ),
            GenderList(),
            SizedBox(
              height: 14,
            ),
            SkillsField(),
            SizedBox(
              height: 14,
            ),
            SocialMedia(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      );
  }
}