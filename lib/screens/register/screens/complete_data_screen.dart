import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hiring_app/screens/register/controllers/gender_controller.dart';
import 'package:hiring_app/screens/register/widgets/gender_list.dart';
import 'package:hiring_app/screens/register/widgets/profile_picture.dart';
import 'package:hiring_app/screens/register/widgets/salary_field.dart';
import 'package:hiring_app/screens/register/widgets/skills_field.dart';
import 'package:hiring_app/screens/register/widgets/social_media.dart';
import 'package:hiring_app/widgets/text_field_widget.dart';

class CompleteDataScreen extends StatefulWidget {
    final GlobalKey<FormState> completeformKey;

  const CompleteDataScreen({super.key, required this.completeformKey});

  @override
  State<CompleteDataScreen> createState() => _CompleteDataScreenState();
}

class _CompleteDataScreenState extends State<CompleteDataScreen> {
  final TextEditingController about = TextEditingController();

  final TextEditingController salary = TextEditingController();

  final TextEditingController birthDate = TextEditingController();

  final TextEditingController skills = TextEditingController();

  final GenderController _genderController = GenderController();

  // final _completeFormKey = GlobalKey<FormState>();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != DateTime.now()) {
      setState(() {
        birthDate.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Form(
        key: widget.completeformKey,
        child: Column(
          children: [
            const ProfilePicture(),
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
            const SalaryField(),
            const SizedBox(
              height: 14,
            ),
            TextFieldWidget(
              controller: birthDate,
              fieldText: 'Birth Date',
              fieldIcon: FontAwesomeIcons.calendarDays,
              onPressed: () {
                _selectDate(context);
              },
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

              // if (_completeFormKey.currentState!.validate()) {
              //   setState(() {});
              // }

              // buttonText: 'Submit',
            // ),
            // const SizedBox(
            //   height: 60,
            // ),
          ],
        ),
      ),
    );
  }
}
