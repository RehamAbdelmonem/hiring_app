import 'package:flutter/material.dart';
import 'package:hiring_app/utils/app_colors.dart';

class MyCustomStepper extends StatelessWidget {
  final double width;
  final int totalSteps;
  final int curStep;
  final Color stepCompleteColor;
  final Color currentStepColor;
  final Color inactiveColor;
  final double lineWidth;
  final List<String> stepTexts;

  const MyCustomStepper({
    super.key,
    required this.width,
    required this.curStep,
    required this.stepCompleteColor,
    required this.totalSteps,
    required this.inactiveColor,
    required this.currentStepColor,
    required this.lineWidth,
    required this.stepTexts,
  }) : assert(curStep > 0 == true && curStep <= totalSteps + 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 70.0,
        right: 70.0,
      ),
      width: width,
      child: Row(
        children: _steps(),
      ),
    );
  }

  getCircleColor(i) {
    var color;
    if (i + 1 < curStep) {
      color = stepCompleteColor;
    } else if (i + 1 == curStep)
      color = currentStepColor;
    else
      color = const Color(0xffE6EAEF);
    return color;
  }

  getBorderColor(i) {
    var color;
    if (i + 1 < curStep || i + 1 == curStep) {
      color = const Color(0xff1DBF73);
    } else
      color = inactiveColor;

    return color;
  }

  getLineColor(i) {
    var color =
        curStep > i + 1 ? const Color(0xff1DBF73) : const Color(0xffE6EAEF);
    return color;
  }

  List<Widget> _steps() {
    var list = <Widget>[];
    for (int i = 0; i < totalSteps; i++) {
      var circleColor = getCircleColor(i);
      var borderColor = getBorderColor(i);
      var lineColor = getLineColor(i);

      list.add(
        Container(
          width: 28.0,
          height: 28.0,
          child: getInnerElementOfStepper(i),
          decoration: BoxDecoration(
            color: circleColor,
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
            border: Border.all(
              color: borderColor,
              width: 2.0,
            ),
          ),
        ),
      );

      if (i != totalSteps - 1) {
        list.add(
          Expanded(
            child: Container(
              height: lineWidth,
              color: lineColor,
            ),
          ),
        );
      }
    }

    return list;
  }

  Widget getInnerElementOfStepper(index) {
    if (index + 1 < curStep) {
      return const Icon(
        Icons.check,
        color: Colors.white,
        size: 16.0,
      );
    } else if (index + 1 == curStep) {
      return Center(
        child: Text(
          '$curStep',
          style: const TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    } else
      return Container();
  }
}
