
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/theme_cubit.dart';

class ThemeToggleCard extends StatelessWidget {
  const ThemeToggleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, mode) {
        final modeGelap = mode == ThemeMode.dark;
        final warna = Theme.of(context).colorScheme;

        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Card(
            child: SwitchListTile(
              title: const Text('Mode Gelap'),
              subtitle: const Text(
                'Aktifkan tampilan gelap aplikasi',
              ),
              secondary: Icon(
                modeGelap
                    ? Icons.dark_mode
                    : Icons.light_mode,
                color: warna.primary,
              ),
              value: modeGelap,
              onChanged: (nilai) {
                context.read<ThemeCubit>().ubahTema(nilai);
              },
            ),
          ),
        );
      },
    );
  }
}
