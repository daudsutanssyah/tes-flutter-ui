import 'package:flutter/material.dart';
import 'package:tes_syklin/themes/colors.dart';

class RekomendasiCard extends StatelessWidget {
  final String imagePath, nama, harga;
  const RekomendasiCard({
    super.key,
    required this.imagePath,
    required this.nama,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(imagePath),
        Positioned(
          bottom: 16,
          left: 13,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: whiteColor,
                ),
              ),
              Text(harga, style: TextStyle(fontSize: 20, color: whiteColor)),
            ],
          ),
        ),
      ],
    );
  }
}
