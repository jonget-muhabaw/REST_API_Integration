import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';
@JsonSerializable()
class ProductModel {
    int id;
 String title;
 double price;
 String description;
 String category;
 String image;
Rating? rating;
  ProductModel({required this.id, required this.title, required
   this.price, required
   this.description,  required
  this.category,  required
  this.image, this.rating});

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
@JsonSerializable()
class Rating{
  double? rate;
  int? count;
  Rating({this.rate, this.count});
factory Rating.fromJson(Map<String, dynamic> json) =>
      _$RatingFromJson(json);
  Map<String, dynamic> toJson() => _$RatingToJson(this);
}