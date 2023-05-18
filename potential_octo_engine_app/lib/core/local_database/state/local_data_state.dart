import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potential_octo_engine_app/core/local_database/data/model/basket_model.dart';

part 'local_data_state.freezed.dart';

@freezed
class LocalDataState with _$LocalDataState {
  const LocalDataState._();

  const factory LocalDataState.init() = _LocalDataInitState;
  const factory LocalDataState.loaded({
    @Default([]) List<BasketModel> basket,
  }) = _LocalDataLoadedState;
  const factory LocalDataState.error({
    required Object? error,
  }) = _LocalDataErrorState;
}
