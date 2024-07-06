import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key, required this.boxName, required this.image, this.imageheight=25});
  final String boxName;
  final String image;
  final double imageheight;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          SvgPicture.asset(widget.image,width: 35,height: widget.imageheight,),
          const SizedBox(width: 10,),
           Text(
            widget.boxName,
            style: Styles.textStyle14,
          ),
        ],
      ),
    );
  }
}
