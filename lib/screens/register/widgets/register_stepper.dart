import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentStep = 0;
  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep = currentStep + 1; //currentStep+=1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1; //currentStep-=1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: details.onStepContinue,
            child: const Text('Next'),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: details.onStepCancel,
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        elevation: 0, 
        controlsBuilder: controlBuilders,
        type: StepperType.vertical,
        physics: const ScrollPhysics(),
        onStepTapped: onStepTapped,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        currentStep: currentStep, //0, 1, 2
        steps: [
          Step(
              title: const Text('Step 1'),
              content: Column(
                children: const [
                  Text('This is the first step.'),
                ],
              ),
              isActive: currentStep >= 0,
              state:
                  currentStep >= 0 ? StepState.complete : StepState.disabled),
          Step(
            title: const Text('Step 2'),
            content: const Text('This is the Second step.'),
            isActive: currentStep >= 0,
            state: currentStep >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Step 3'),
            content: const Text('This is the Third step.'),
            isActive: currentStep >= 0,
            state: currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
        ],
      ),
    );
  }
}



  
//   class CustomContentWidget extends StatelessWidget {
//   const CustomContentWidget({super.key});

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
//             height: stepperHeight * 0.9, 
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