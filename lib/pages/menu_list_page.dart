import 'package:flutter/material.dart';

class MenuListPage extends StatelessWidget {
  const MenuListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> menuList = [
      {'name': 'Mie Tek-Tek telor', 'price': 'Rp 20.000', 'category': 'Makanan Utama'},
      {'name': 'Nasi Goreng Gila', 'price': 'Rp 15.000', 'category': 'Makanan Utama'},
      {'name': 'Es Teh Manis', 'price': 'Rp 4.000', 'category': 'Minuman'},
      {'name': 'Es Jeruk Sunkis', 'price': 'Rp 5.000', 'category': 'Minuman'},
      {'name': 'Mix Platter', 'price': 'Rp 8.000', 'category': 'Cemilan'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kantin Bu Sari - Daftar Menu'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        elevation: 2,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              Navigator.pushNamed(context, '/pesan');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Selamat Datang (Menggunakan Container & BoxDecoration)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.deepOrange, Colors.orangeAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Datang di Kantin Bu Sari! 🍲',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Nikmati makanan rumahan lezat, higienis, dan ramah di kantong mahasiswa.',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Menu Favorit Hari Ini',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            
            // Daftar Menu menggunakan ListView builder/mapping
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menuList.length,
              itemBuilder: (context, index) {
                final menu = menuList[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(12),
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.restaurant, color: Colors.deepOrange),
                    ),
                    title: Text(
                      menu['name']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
                        Text(menu['category']!, style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
                        const SizedBox(height: 4),
                        Text(
                          menu['price']!,
                          style: const TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/detail');
                      },
                      child: const Text('Detail'),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}