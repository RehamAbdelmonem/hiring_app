import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hiring_app/utils/app_colors.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
      child: GestureDetector(
        onTap: () {},
        child: Center(
          child: Stack(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: const Color(0xffEAFFF5),
                  border: Border.all(
                    width: 1,
                    color: AppColors.primaryColor,
                  ),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Clipped-1.png')),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: const Icon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
