import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:switching_indicators/cubit/connection_cubit.dart';

class StatusButtons extends StatelessWidget {
  const StatusButtons({super.key});

  static const double iconSize = 68.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionCubit, ConnectionStateTe>(
      builder: (context, state) {
        final statuses = state.when(
          initial: () => [false, false, false, false], // дефолт
          changes: (statuses) => statuses,
        );

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            final status = statuses[index];
            final assetName = status
                ? 'assets/${index + 1}_green_button.svg'
                : 'assets/${index + 1}_red_button.svg';

            return Padding(
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
    );
  }
}
