// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
    name: json['name'] as String,
    description: json['description'] as String,
    price: (json['price'] as num).toInt(),
    category: json['category'] as String,
    stock: (json['stock'] as num).toInt(),
    sku: json['sku'] as String,
    image_url: json['image_url'] as String,
    rate: json['rate'] != null
        ? Rating.fromJson(json['rate'] as Map<String, dynamic>)
        : null);
        Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'category': instance.category,
      'stock': instance.stock,
      'sku': instance.sku,
      'image_url': instance.image_url,
      'rate': instance.rate,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      rate: (json['rate'] as num).toInt(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
