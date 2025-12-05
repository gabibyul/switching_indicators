// lib/connection_status_state.dart

// Это обязательная строка — связывает файл state с cubit
part of 'connection_status_cubit.dart';

// Freezed формирует иммутабельный класс состояния ConnectionStatusState
@freezed
class ConnectionStatusState with _$ConnectionStatusState {
  // Единственное поле — список статусов индикаторов
  // Индекс соответствует номеру кнопки (0 = кнопка 1 и т.д.)
  const factory ConnectionStatusState({required List<bool> statuses}) =
      _ConnectionStatusState;
}
