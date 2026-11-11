import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../navigation/app_routes.dart';
import '../cubit/favorit_cubit.dart';
import '../cubit/pengajuan_cubit.dart';
import '../widgets/theme_toggle_card.dart';

class HalamanWarga extends StatelessWidget {
  const HalamanWarga({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),

            // Foto Profil Warga
            const CircleAvatar(
              radius: 40,
              child: Icon(
                Icons.person,
                size: 45,
              ),
            ),

            const SizedBox(height: 20),

            // Judul Profil Warga
            Text(
              'Profil Warga',
              style: tema.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text('Nama: Warga Nusantara'),

            const SizedBox(height: 20),

            // Custom Widget Pengaturan Tema
            const ThemeToggleCard(),

            const SizedBox(height: 25),

            // Tombol Riwayat Laporan
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.riwayat,
                );
              },
              icon: const Icon(Icons.history),
              label: const Text('Riwayat Laporan'),
            ),

            const SizedBox(height: 30),

            // Judul Layanan Favorit
            Text(
              'Layanan Favorit',
              style: tema.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Daftar Layanan Favorit
            BlocBuilder<FavoritCubit, Set<String>>(
              builder: (context, favorit) {
                if (favorit.isEmpty) {
                  return const Text(
                    'Belum ada layanan favorit',
                  );
                }

                return Column(
                  children: favorit.map((layanan) {
                    return Card(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 5,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.star,
                          color: tema.colorScheme.primary,
                        ),
                        title: Text(layanan),
                      ),
                    );
                  }).toList(),
                );
              },
            ),

            const SizedBox(height: 30),

            // Judul Daftar Pengajuan
            Text(
              'Daftar Pengajuan',
              style: tema.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Daftar Pengajuan Layanan
            BlocBuilder<PengajuanCubit, List<String>>(
              builder: (context, pengajuan) {
                if (pengajuan.isEmpty) {
                  return const Text(
                    'Belum ada pengajuan layanan',
                  );
                }

                return Column(
                  children: pengajuan.map((layanan) {
                    return Card(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 5,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.assignment_turned_in,
                          color: tema.colorScheme.primary,
                        ),
                        title: Text(layanan),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.delete_outline,
                          ),
                          onPressed: () {
                            context
                                .read<PengajuanCubit>()
                                .hapusPengajuan(layanan);
                          },
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
