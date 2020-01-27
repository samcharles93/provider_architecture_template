import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:provider_start/core/view_models/start_up_view_model.dart';
import 'package:provider_start/ui/widgets/loading_animation.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<StartUpViewModel>.withConsumer(
      viewModel: StartUpViewModel(),
      onModelReady: (model) => model.handleStartUpLogic(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: LoadingAnimation(),
        ),
      ),
    );
  }
}
