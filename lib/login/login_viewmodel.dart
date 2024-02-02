




import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

import '../model/Products.dart';
import '../webservice/productprovider.dart';

class LoginViewModel extends BaseViewModel {
  TextEditingController ctrlr=TextEditingController();
  void init(){}
  void submit(){
    print(ctrlr.text.toString());
  }

  }
