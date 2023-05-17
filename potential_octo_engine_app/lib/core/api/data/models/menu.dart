import 'package:json_annotation/json_annotation.dart';
import 'package:potential_octo_engine_app/core/api/data/models/product.dart';

part 'menu.g.dart';

@JsonSerializable()
class Menu {
  final int id;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'category_name')
  final String categoryName;
  final List<Product> products;
  Menu({
    required this.id,
    required this.imageUrl,
    required this.categoryName,
    required this.products,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  Map<String, dynamic> toJson() => _$MenuToJson(this);
}
