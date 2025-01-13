
import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';
@JsonSerializable()
class User{
  String name;
  String lastName;
  String email;
  User({required this.name, required this.lastName, required this.email});
  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}