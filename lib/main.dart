import 'package:flutter/material.dart';
import 'package:my_app/pages/product_page.dart';
import 'package:my_app/providers/product_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>ProductProvider())
  ]));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ecommece APP",
      home:ProductPage() ,
    );
  }
}