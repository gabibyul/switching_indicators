// lib/connection_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Подключаем наш Cubit
import 'connection_status_cubit.dart';

class ConnectionScreen extends StatelessWidget {
  // Размер SVG‑иконок
  static const double iconSize = 68.0;

  const ConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Создаём экземпляр Cubit — он будет доступен всем дочерним виджетам
      create: (_) => ConnectionStatusCubit(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SizedBox(
            // Фиксированные размеры экрана (1280x800)
            width: 1280,
            height: 800,

            // BlocBuilder подписывается на состояние Cubit
            child: BlocBuilder<ConnectionStatusCubit, ConnectionStatusState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  // Генерируем 4 индикатора по индексу 0..3
                  children: List.generate(4, (index) {
                    // Получаем состояние (true/false) для индикатора
                    final isConnected = state.statuses[index];

                    // Формируем имя SVG-файла в зависимости от состояния
                    final assetName =
                        'assets/${index + 1}_${isConnected ? 'green' : 'red'}_button.svg';

                    return Padding(
                      // Отступы 4px слева и справа — по ТЗ
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: SvgPicture.asset(
                        assetName,
                        width: iconSize,
                        height: iconSize,
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
