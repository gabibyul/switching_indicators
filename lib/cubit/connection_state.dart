// lib/cubit/connection_state.dart

part of 'connection_cubit.dart';

@freezed
class ConnectionStateTe with _$ConnectionStateTe {
  const factory ConnectionStateTe.initial() = _Initial;
  const factory ConnectionStateTe.changes({required List<bool> statuses}) =
      _Changes;
}
