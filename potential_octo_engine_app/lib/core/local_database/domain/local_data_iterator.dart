import 'package:potential_octo_engine_app/core/api/data/models/product.dart';
import 'package:potential_octo_engine_app/core/local_database/data/model/basket_model.dart';

abstract class LocalDataIterator {
  List<BasketModel> saveToBasket({
    required Product product,
  });
  List<BasketModel> removeFromBasket({
    required Product product,
  });
  List<BasketModel> fetchBasket();
}
