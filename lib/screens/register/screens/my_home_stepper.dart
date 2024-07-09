import 'package:flutter/material.dart';
import 'package:hiring_app/helper/show_snack_bar.dart';
import 'package:hiring_app/screens/register/screens/complete_data_screen.dart';
import 'package:hiring_app/screens/register/screens/register_screen.dart';
import 'package:hiring_app/screens/register/widgets/my_custom_stepper.dart';
import 'package:hiring_app/screens/who_am_I/screens/who_am_i.dart';
import 'package:hiring_app/utils/app_colors.dart';
import 'package:hiring_app/utils/styles.dart';
import 'package:hiring_app/widgets/custom_app_bar.dart';

class MyHomeStepper extends StatefulWidget {
  const MyHomeStepper({super.key});

  @override
  State<MyHomeStepper> createState() => _MyHomeStepperState();
}

class _MyHomeStepperState extends State<MyHomeStepper> {
  int currentStep = 1;
  int stepLength = 2;
  List<String> stepTexts = ['Register', 'Complete Data'];
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _completeFormKey = GlobalKey<FormState>();

 next() {
  if (currentStep == 1) {
    if (_registerFormKey.currentState?.validate() ?? false) {
      goTo(currentStep + 1);
    } else {
      showSnackBar(context, 'Fill the required fields');
    }
  } else if (currentStep == stepLength) {
    if (_completeFormKey.currentState?.validate() ?? false) {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WhoAmI()),
    );
    } else {
     showSnackBar(context, 'Fill the required fields');
    }
  } 
}

  goTo(int step) {
    setState(() => currentStep = step);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const CustomAppBar(textAppBar: 'Register'),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    stepLength, (index) => getUpperElementOfStepper(index)),
              ),
              MyCustomStepper(
                totalSteps: stepLength,
                width: MediaQuery.of(context).size.width,
                curStep: currentStep,
                stepCompleteColor: AppColors.primaryColor,
                currentStepColor: AppColors.fieldColor,
                inactiveColor: const Color(0xffE6EAEF),
                lineWidth: 3.5,
                stepTexts: stepTexts,
              ),
              const SizedBox(
                height: 45,
              ),
              currentStep == 1
                  ? RegisterScreen(formKey: _registerFormKey)
                  : currentStep == 2
                      ?  CompleteDataScreen(completeformKey: _completeFormKey,)
                      : const WhoAmI(),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: currentStep == stepLength
                ? const EdgeInsets.only(bottom: 20)
                : const EdgeInsets.only(left: 194, bottom: 20),
            child: GestureDetector(
              onTap: () {
                next();
              },
              child: Container(
                alignment: Alignment.center,
                width: currentStep == stepLength ? 350 : 160,
                height: currentStep == stepLength ? 60 : 56,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  currentStep == stepLength ? 'Submit' : 'Next',
                  style: Styles.textStyle18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getUpperElementOfStepper(index) {
    Color textColor;
    if (index + 1 <= currentStep) {
      textColor = AppColors.primaryColor;
    } else {
      textColor = const Color(0xffE6EAEF);
    }
    return Text(
      stepTexts[index],
      style: TextStyle(
        color: textColor,
        fontSize: 13,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
      ),
    );
  }
}
