import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potential_octo_engine_app/core/api/data/models/product.dart';

part 'local_data_event.freezed.dart';

@freezed
class LocalDataEvent with _$LocalDataEvent {
  const LocalDataEvent._();

  const factory LocalDataEvent.save({
    required Product product,
  }) = _LocalDataSaveEvent;
  const factory LocalDataEvent.remove({
    required Product product,
  }) = _LocalDataRemoveEvent;
  const factory LocalDataEvent.fetch() = _LocalDataFetchEvent;
}
