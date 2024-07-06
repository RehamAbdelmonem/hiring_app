import 'package:flutter/material.dart';
import 'package:hiring_app/screens/register/complete_data_screen.dart';
import 'package:hiring_app/widgets/custom_app_bar.dart';
import 'package:hiring_app/widgets/custom_button.dart';
import 'package:hiring_app/widgets/text_field_widget.dart';
import 'package:hiring_app/screens/register/widgets/user_type_list.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              const Row(
                children: [
                  Expanded(
                    child: TextFieldWidget(fieldText: 'First Name'),
                  ),
                  Expanded(
                    child: TextFieldWidget(fieldText: 'Last Name'),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              const TextFieldWidget(fieldText: 'Email Address'),
              const SizedBox(
                height: 14,
              ),
              const TextFieldWidget(
                fieldText: 'Password',
                fieldIcon: Icons.visibility_off,
              ),
              const SizedBox(
                height: 14,
              ),
              const TextFieldWidget(
                fieldText: 'Confirm Password',
                fieldIcon: Icons.visibility_off,
              ),
              const SizedBox(
                height: 14,
              ),
              const UserTypeList(),
              Padding(
                padding: const EdgeInsets.only(left: 194, top: 40),
                child: CustomButton(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const CompleteDataScreen();
                    }));
                  },
                  buttonText: 'Next',
                  buttonWidth: 160,
                  buttonHeight: 56,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}











  
//   class CustomContentWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text(
//           'Custom Content Widget',
//           style: TextStyle(fontSize: 24.0),
//         ),
//       ),
//     );
//   }
// }

// class SteperItemSection extends StatefulWidget {
//   final Widget contentWidget;
//   const SteperItemSection({Key? key, required this.contentWidget})
//       : super(key: key);

//   @override
//   State<SteperItemSection> createState() => _SteperItemSectionState();
// }

// class _SteperItemSectionState extends State<SteperItemSection> {
//   int currentStep = 0;

//   List<Map<String, String>> steplist = [
//     {'task': '1', 'content': "Step 1"},
//     {'task': '2', 'content': "Step 2"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         double stepperHeight = constraints.maxHeight;
//         double stepperWidth = constraints.maxWidth;

//         return SingleChildScrollView(
//           child: SizedBox(
//             height: stepperHeight * 0.9, // Adjust as needed
//             width: stepperWidth,
//             child: Stepper(
//               physics: const NeverScrollableScrollPhysics(),
//               connectorThickness: 2,
//               elevation: 0,
//               // type: StepperType.horizontal,
//               currentStep: currentStep,
//               controlsBuilder:
//                   (BuildContext context, ControlsDetails controls) {
//                 return const Row(
//                   children: <Widget>[
//                     SizedBox.shrink(),
//                   ],
//                 );
//               },
//               onStepTapped: (step) => setState(() {
//                 currentStep = step;
//               }),
//               steps: getSteps(),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void commonOnTap() {
//     bool isLastStep = (currentStep == getSteps().length - 1);
//     if (isLastStep) {
//       // Do something with this information
//     } else {
//       setState(() {
//         currentStep += 1;
//       });
//     }
//   }

//   final double fontSize = 17;
//   List<Step> getSteps() {
//     var itemList = steplist.asMap().entries.map<Step>((e) {
//       var i = e.key;
//       var item = e.value;
//       return Step(
//         title:Text(
//               StepState.indexed == StepState.indexed ? item['content'] ?? "" : "",
//               style: TextStyle(
//                   fontSize: fontSize, color: currentStep >= i ? Colors.blue : null),
//             ), 
        
//         state: currentStep > i ? StepState.complete : StepState.indexed,
//         isActive: currentStep >= i,
//         content: widget.contentWidget,
//       );
//     });
//     return itemList.toList();
//   }
// }