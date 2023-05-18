import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potential_octo_engine_app/core/local_database/domain/local_data_iterator.dart';
import 'package:potential_octo_engine_app/core/local_database/event/local_data_event.dart';
import 'package:potential_octo_engine_app/core/local_database/state/local_data_state.dart';

class LocalDataBloc extends Bloc<LocalDataEvent, LocalDataState> {
  final LocalDataIterator _iterator;

  LocalDataBloc(this._iterator) : super(const LocalDataState.init()) {
    on<LocalDataEvent>((event, emit) {
      event.when(
        save: (product) async {
          emit(LocalDataState.loaded(basket: [
            ..._iterator.saveToBasket(product: product),
          ]));
        },
        remove: (product) {
          try {
            emit(LocalDataState.loaded(
                basket: [..._iterator.removeFromBasket(product: product)]));
          } catch (e) {
            LocalDataState.error(error: e);
          }
        },
        fetch: () async {
          try {
            emit(
              LocalDataState.loaded(
                basket: [..._iterator.fetchBasket()],
              ),
            );
          } catch (e) {
            LocalDataState.error(error: e);
          }
        },
      );
    });
  }
}
