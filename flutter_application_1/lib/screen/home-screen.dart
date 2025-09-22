import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product-model.dart'; // Sesuaikan nama proyek
import 'package:flutter_application_1/widgets/product-card.dart';
import 'package:flutter_application_1/widgets/promo-banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toko Sepatu', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. HEADER (bisa berupa banner atau info lainnya)
            const PromoBanner(dataTextBanner: 'Diskon Kilat Akhir Pekan!'),

            // 2. SECTION PROMO LAINNYA (contoh list horizontal)
            _buildSectionTitle('Promo Pilihan'),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                children: const [
                  PromoBanner(dataTextBanner: 'Gratis Ongkir'),
                  PromoBanner(dataTextBanner: 'Cashback 20%'),
                  PromoBanner(dataTextBanner: 'Beli 1 Gratis 1'),
                ],
              ),
            ),
            
            // 3. SECTION PRODUK
            _buildSectionTitle('Semua Produk'),
            GridView.builder(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 produk per baris
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7, // Rasio lebar:tinggi card
              ),
              itemCount: dummyProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(product: dummyProducts[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
