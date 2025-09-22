import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Tambahkan package intl untuk format harga
import 'package:flutter_application_1/models/product-model.dart';
class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(currencyFormatter.format(product.price), style: const TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  const Text("Deskripsi Produk", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text("Ini adalah deskripsi untuk produk sepatu berkualitas tinggi yang nyaman digunakan untuk berbagai aktivitas sehari-hari."),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 16)),
                      onPressed: () {},
                      child: const Text("Tambah ke Keranjang"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
