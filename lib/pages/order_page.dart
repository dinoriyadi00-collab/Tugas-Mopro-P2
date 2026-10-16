import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Status Pesanan'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check_circle,
                  color: Colors.deepOrange,
                  size: 64,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Pesanan Kamu Diterima!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Tunjukkan struk digital ini ke kasir Bu Sari.',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'KANTIN BU SARI',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      const Center(
                        child: Text('Universitas Pakuan', style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ),
                      const SizedBox(height: 16),
                      const Divider(thickness: 1),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('No. Antrean:'),
                          Text('#093', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Menu:'),
                          Text('Mie Tek-Tek Telor', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Total Harga:'),
                          Text(
                            'Rp 20.000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
                  icon: const Icon(Icons.home),
                  label: const Text('Kembali ke Daftar Menu'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}