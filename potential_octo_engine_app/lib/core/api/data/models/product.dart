import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final int id;
  final String name;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final int cost;
  final String sizes;
  final int categoryId;
  final String? description;

  Product({
    this.description,
    required this.categoryId,
    required this.cost,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.sizes,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
