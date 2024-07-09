
import 'package:flutter/material.dart';
import 'package:hiring_app/models/skills_data.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class SkillsField extends StatefulWidget {
  const SkillsField({super.key});

  @override
  State<SkillsField> createState() => _SkillsFieldState();
}

class _SkillsFieldState extends State<SkillsField> {
  List inputdata = skillsdata;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Skills',
            style: Styles.textStyle16,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.fieldColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            width: 350,
            height: 100,
            child: Wrap(
                spacing: 5,
                children: List.generate(inputdata.length, (index) {
                  return InputChip(
                    label: Text(
                      inputdata[index]['name'],
                      style: Styles.textStyle12.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    selected: inputdata[index]['selected'],
                    onPressed: () {
                      inputdata[index]['selected'] =
                          !inputdata[index]['selected'];
                      setState(() {});
                    },
                    showCheckmark: false,
                    selectedColor: const Color(0xffE9F9F1),
                    deleteIconColor: AppColors.primaryColor,
                    onDeleted: () {
                      inputdata.remove(index);
                      setState(() {});
                    },
                  );
                })),
          ),
        ),
      ],
    );
  }
}