import 'dart:convert';

import 'package:flutter/material.dart';

import '../model/product_model.dart';
import 'package:http/http.dart' as http;
class ProductProvider with ChangeNotifier {
  List<ProductModel> products = [];
  bool isLoading =false;
  Future<void> getProducts() async{
    isLoading =true;
    notifyListeners();
    try{
      final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
      if(response.statusCode==200){
        List<dynamic> data = json.decode(response.body);
        products =
            data.map((product) => ProductModel.fromJson(product)).toList();
      }
      else{
        throw Exception("Failed to load products");
      }
    }
    catch(error){
      rethrow;
    }
    finally{
      isLoading =false;
      notifyListeners();
    }

  }
  
}