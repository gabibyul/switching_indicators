// lib/connection_status_cubit.dart

// Подключаем flutter_bloc — пакет, который содержит Cubit и BlocBuilder
import 'package:flutter_bloc/flutter_bloc.dart';

// Подключаем freezed, чтобы генерировать immutable-состояния
import 'package:freezed_annotation/freezed_annotation.dart';

// Указываем файлы, которые будут сгенерированы build_runner‑ом
part 'connection_status_state.dart';
part 'connection_status_cubit.freezed.dart';

// Cubit отвечает за управление состоянием индикаторов подключения
class ConnectionStatusCubit extends Cubit<ConnectionStatusState> {
  ConnectionStatusCubit()
    : super(
        // Начальное состояние — все индикаторы выключены (false)
        const ConnectionStatusState(statuses: [false, false, false, false]),
      );

  // Метод обновляет ОДНО конкретное состояние по индексу (0–3)
  void updateStatus(int index, bool isConnected) {
    // Создаём копию списка, чтобы не изменять состояние напрямую
    final newStatuses = List<bool>.from(state.statuses);

    // Проверяем, что индекс в пределах 0..3
    if (index >= 0 && index < newStatuses.length) {
      newStatuses[index] = isConnected; // Меняем значение только одной кнопки

      // Публикуем новое состояние (emit — главный механизм Cubit)
      emit(ConnectionStatusState(statuses: newStatuses));
    }
  }

  // Метод обновляет ВСЕ 4 индикатора разом
  void updateAll(List<bool> statuses) {
    // Принимаем только список длиной 4, чтобы избежать ошибок
    if (statuses.length == 4) {
      emit(ConnectionStatusState(statuses: statuses));
    }
  }
}
