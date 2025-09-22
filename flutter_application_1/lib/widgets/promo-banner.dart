import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  final String dataTextBanner;
  const PromoBanner({super.key, required this.dataTextBanner});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, 
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          dataTextBanner,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}