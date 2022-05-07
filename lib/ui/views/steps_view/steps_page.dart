import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/app/ua_style.dart';
import 'package:uafrontend/datamodels/step_data.dart';
import 'package:uafrontend/ui/views/steps_view/banner/steps_banner.dart';
import 'package:uafrontend/ui/views/steps_view/steps_view_model.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class StepsPage extends ViewModelWidget<StepsViewModel> {
  late BuildContext context;
  late StepsViewModel viewModel;

  StepsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, StepsViewModel viewModel) {
    if (viewModel.loadingInProgress) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    // This function will be triggered when a step is tapped
    _stepTapped(int step) {
      viewModel.stepTapped(step);
    }

    // This function will be called when the continue button is tapped
    _stepContinue() {
      viewModel.stepContinue();
    }

    // This function will be called when the cancel button is tapped
    _stepCancel() {
      viewModel.stepCancel();
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          StepsBanner(viewModel.content),
          Stepper(
            type: StepperType.vertical,
            physics: const ScrollPhysics(),
            currentStep: viewModel.currentStepIndex,
            onStepTapped: (step) => _stepTapped(step),
            onStepContinue: _stepContinue,
            onStepCancel: _stepCancel,
            steps: [
              for (var step in viewModel.stepList) stepWidget(viewModel, step),
            ],
          ),
        ],
      ),
    );
  }

  Step stepWidget(StepsViewModel viewModel, StepData currentStep) {
    return Step(
      title: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: Text(
          currentStep.name,
          style: const TextStyle(
              fontSize: 22.0,
              color: UaColors.darkTextColor,
              fontFamily: "IBM Plex",
              fontWeight: FontWeight.w700),
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
        child: Container(
          child: MarkdownBody(
            // controller: controller,
            selectable: true,
            data: currentStep.content,
            styleSheet: MarkdownStyleSheet(
              p: const TextStyle(
                  fontSize: 18.0,
                  color: UaColors.darkTextColor,
                  fontFamily: "IBM Plex",
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      isActive: viewModel.currentStepIndex >= currentStep.index - 1,
      state: viewModel.currentStepIndex >= currentStep.index
          ? StepState.complete
          : StepState.disabled,
    );
  }
}
