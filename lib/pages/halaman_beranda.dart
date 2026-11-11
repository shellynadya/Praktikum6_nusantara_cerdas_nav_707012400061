import 'package:flutter/material.dart';

class HalamanBeranda extends StatelessWidget {
  const HalamanBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Selamat Datang, Warga!',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Nusantara Cerdas Mobile siap membantu kebutuhan layanan warga.',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[700],
            ),
          ),

          const SizedBox(height: 24),

          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.indigo.shade100,
                    child: const Icon(
                      Icons.person,
                      size: 32,
                      color: Colors.indigo,
                    ),
                  ),

                  const SizedBox(width: 16),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Warga Nusantara',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Akses layanan publik dengan mudah.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            'Layanan Utama',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.5,
            children: const [
              _KartuLayanan(
                icon: Icons.description,
                title: 'Perizinan',
              ),
              _KartuLayanan(
                icon: Icons.local_hospital,
                title: 'Kesehatan',
              ),
              _KartuLayanan(
                icon: Icons.directions_bus,
                title: 'Transportasi',
              ),
              _KartuLayanan(
                icon: Icons.assignment,
                title: 'Pengajuan',
              ),
            ],
          ),

          const SizedBox(height: 24),

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.notifications_active,
                color: Colors.indigo,
              ),
              title: const Text(
                'Informasi Layanan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Gunakan menu Layanan untuk melihat dan mengajukan layanan publik.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _KartuLayanan extends StatelessWidget {
  final IconData icon;
  final String title;

  const _KartuLayanan({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 32,
              color: Colors.indigo,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// izza bisa jaga rahasia kann sut ya cuman kamu, aku salwaa, anakin, lia sama nadya april aja yang tau, jangan bilang kesiapa siapa termasuk anakin sut diem aja keep sikapnya biasa aja normal jangan keliatan atau bilang bilang ada soal bocoran, aku nanti dimarahin salwa, plis plis