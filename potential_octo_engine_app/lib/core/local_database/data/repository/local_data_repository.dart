import 'dart:developer';

import 'package:potential_octo_engine_app/core/api/data/models/product.dart';
import 'package:potential_octo_engine_app/core/local_database/data/model/basket_model.dart';
import 'package:potential_octo_engine_app/core/local_database/domain/local_data_iterator.dart';
import 'package:sqlite3/sqlite3.dart';

class LocalDataRepository implements LocalDataIterator {
  late final sqLite = sqlite3.openInMemory();
  LocalDataRepository() {
    try {
      sqLite.execute('''CREATE TABLE IF NOT EXISTS shopping_cart (
        product_id INTEGER PRIMARY KEY,
        quantity INTEGER,
        price REAL,
        total_price REAL
    )''');
    } catch (e) {
      log('$e');
    }
  }

  @override
  List<BasketModel> saveToBasket({
    required Product product,
  }) {
    sqLite.execute(
        '''INSERT INTO shopping_cart (product_id, quantity, price, total_price)
VALUES (${product.id},  1, ${product.cost}, ${product.cost})
ON CONFLICT (product_id)
DO UPDATE SET quantity = shopping_cart.quantity + 1, total_price = shopping_cart.total_price + ${product.cost};
''');
    final select = sqLite.select('SELECT * FROM shopping_cart');
    final basket = <BasketModel>[];
    for (final row in select) {
      basket.add(BasketModel.fromJson(row));
    }
    return basket;
  }

  @override
  List<BasketModel> removeFromBasket({
    required Product product,
  }) {
    sqLite.execute('''UPDATE shopping_cart
SET quantity = quantity - 1,
    total_price = total_price - ${product.cost}
WHERE product_id = ${product.id};
''');
    final select = sqLite.select('SELECT * FROM shopping_cart');
    final basket = <BasketModel>[];
    for (final row in select) {
      basket.add(BasketModel.fromJson(row));
    }
    return basket;
  }

  @override
  List<BasketModel> fetchBasket() {
    final select = sqLite.select('SELECT * FROM shopping_cart');
    final basket = <BasketModel>[];
    for (final row in select) {
      basket.add(BasketModel.fromJson(row));
    }
    return basket;
  }
}
