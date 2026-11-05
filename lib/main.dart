import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF1F3F8),
        appBar: AppBar(
          title: const Text('Ruang Literasi'),
          backgroundColor: const Color(0xFF394C81),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://images.unsplash.com/photo-1507842217343-583bb7270b66',
                  width: double.infinity,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                'Fasilitas Perpustakaan',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF394C81),
                ),
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: infoCard(
                      Icons.menu_book,
                      'Koleksi',
                      'Buku',
                      const Color(0xFF526EAF),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: infoCard(
                      Icons.access_time,
                      'Jam Buka',
                      '08.00-16.00',
                      const Color(0xFF398477),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: infoCard(
                      Icons.wifi,
                      'Internet',
                      'Tersedia',
                      const Color(0xFFD18A3B),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 22),

              const Text(
                'Tempat Nyaman untuk Membaca',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Perpustakaan menyediakan ruang bagi pengunjung '
                'untuk membaca, belajar, dan mencari referensi. '
                'Suasana yang tenang membantu pelajar maupun '
                'masyarakat mengembangkan pengetahuan serta '
                'menumbuhkan kebiasaan membaca.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 22),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Perpustakaan Cendekia',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF394C81),
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFF526EAF),
                          size: 20,
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            'Yogyakarta, Indonesia',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.menu_book),
                  label: const Text('Jelajahi Koleksi'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF394C81),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoCard(
    IconData icon,
    String title,
    String value,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 27),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}