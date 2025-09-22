import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product-model.dart'; // Sesuaikan nama 'ecommerce' dengan nama proyek Anda
import 'package:flutter_application_1/screen/detail-screen.dart';
import 'package:flutter_application_1/screen/home-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Sepatu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/detail': (context) => DetailScreen(
          product: ModalRoute.of(context)!.settings.arguments as Product,
        ),
      },
    );
  }
}