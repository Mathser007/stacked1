import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LogiView extends StatelessWidget {
  LogiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      onViewModelReady: (model) {
        model.init();
      },
      onDispose: (model) {
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          body:Column(
            children: [
              TextField(
                controller: viewModel.ctrlr,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              ElevatedButton(onPressed: (){
                viewModel.submit();
              }, child: Text("submit"))
            ],
          ) ,

        );
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}


