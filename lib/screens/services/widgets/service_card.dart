import 'package:flutter/material.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top:20.0,left:20,bottom: 20),
        child: Container(
          width: 157,
          height: 192,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                  offset: const Offset(0, 2),
                ),
              ]),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 7,
                margin: const EdgeInsets.all(6),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/Image.png',
                            height: 103,
                            width: 151,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 5,
                          child: Container(
                            width: 60,
                            height: 25,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(27)),
                            child: const Center(
                              child: Text(
                                '\$100',
                                style: Styles.textStyle18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  'Logo Design -Graphic Design Graphic Design',
                  style: Styles.textStyle12.copyWith(color: Colors.black),
                  maxLines: 2,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(
                    '(4.5)',
                    style: Styles.textStyle12.copyWith(
                      color: Colors.yellow,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                    child: VerticalDivider(
                      width: 20,
                      thickness: 1,
                      color: Color(0xffC3C5C8),
                    ),
                  ),
                  Image.asset(
                    'assets/images/Group.png',
                    width: 20,
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Text('20', style: Styles.textStyle12),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
