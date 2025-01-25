
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:my_app/model/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  bool _isLoading = false;
List<Product> get products => _products;
  bool get isLoading => _isLoading;
  Future<void> fetchProducts() async{
    _isLoading=true;
    notifyListeners();
    try{
      final response = await http.get(Uri.parse('https://api.jsoning.com/mock/public/products'));

      if(response.statusCode==200){
        final List<dynamic> data = json.decode(response.body);
        _products = data.map((item)=> Product.fromJson(item)).toList();
      }
else{
  throw Exception("Failed to load products");
}

    }
    catch(e){
rethrow;
    }
    finally{
      _isLoading = false;
      notifyListeners();
    }
  }
}
