




import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

import '../model/Products.dart';
import '../webservice/productprovider.dart';

class HomeViewModel extends BaseViewModel {
  var provider;
  init(BuildContext context){
    print("init provider");
    provider = Provider.of<ProductProvider>(context);
    provider.loaddata();
  }

  List<Products> _products = [];

  List<Products> get products => _products;



  Future<void> setdata() async {
    var s=provider.products;
    print("p length${s.length}");
    _products=await provider.products;
    notifyListeners();
    print("_p length${_products.length}");
  }
  }
