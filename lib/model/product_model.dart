
import 'package:json_annotation/json_annotation.dart';
part "product_model.g.dart";
@JsonSerializable()
class Product{
  String name;
  String description;
  int price;
  String category;
  int stock;
  String sku;
  String image_url;
  Rating? rate;
Product({
  required this.name,
  required this.description,
  required this.price,
  required this.category,
  required this.stock,
  required this.sku,
  required this.image_url, this.rate
});
factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
@JsonSerializable()
class Rating{
  int rate ;
  int count;
  Rating({required this.rate, required this.count});
   // Factory method to convert JSON to User instance
  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);

  // Method to convert User instance to JSON
  Map<String, dynamic> toJson() => _$RatingToJson(this);
}