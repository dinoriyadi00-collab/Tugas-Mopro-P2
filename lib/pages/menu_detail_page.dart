import 'package:flutter/material.dart';

class MenuDetailPage extends StatelessWidget {
  const MenuDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Menu'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ilustrasi Header / Gambar Mockup
            Container(
              height: 220,
              width: double.infinity,
              color: Colors.deepOrange.shade100,
              child: const Center(
                child: Icon(
                  Icons.fastfood,
                  size: 80,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Mie Tek-Tek Telor',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Tersedia',
                          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Rp 20.000',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 8),
                  const Text(
                    'Deskripsi Menu',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Mie Tek-Tek lezat dengan bumbu rempah pilihan khas Bu Sari, dilengkapi telur dadar.',
                    style: TextStyle(color: Colors.black87, height: 1.4),
                  ),
                  const SizedBox(height: 24),
                  
                  // Catatan Pesanan Tambahan (TextField)
                  const Text(
                    'Catatan untuk Penjual (Opsional)',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Contoh: Jangan pedes.',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Tombol Pesan Sekarang
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/pesan');
                      },
                      icon: const Icon(Icons.shopping_cart),
                      label: const Text(
                        'Pesan Sekarang',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}