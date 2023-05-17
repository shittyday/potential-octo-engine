import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potential_octo_engine_app/core/api/data/repository/api_repository.dart';

import 'catagory_state.dart';
import 'category_event.dart';

class CategoryBloc extends Bloc<CategoryEvent, CatagoryState> {
  final ApiRepository _apiRepository;
  CategoryBloc(this._apiRepository) : super(const CatagoryState.initState()) {
    on<CategoryEvent>((event, emit) async {
      switch (event) {
        case CategoryEvent.fetch:
          try {
            final response = await _apiRepository.fetchMenu();
            emit(CatagoryState.loaded(menu: response));
          } catch (error) {
            emit(CatagoryState.error(error: error));
          }
          break;
      }
    });
    add(CategoryEvent.fetch);
  }
}
