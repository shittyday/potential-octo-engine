import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potential_octo_engine_app/core/api/data/models/menu.dart';

part 'catagory_state.freezed.dart';

@freezed
class CatagoryState with _$CatagoryState {
  const CatagoryState._();

  const factory CatagoryState.initState() = _CatagoryInitState;
  const factory CatagoryState.loaded({
    required List<Menu> menu,
  }) = _CatagoryLoadedState;
  const factory CatagoryState.error({
    required Object? error,
  }) = _CatagoryErrorState;
}
