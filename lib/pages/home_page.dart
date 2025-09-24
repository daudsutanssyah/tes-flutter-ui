import 'package:flutter/material.dart';
import 'package:tes_syklin/themes/colors.dart';
import 'package:tes_syklin/widget/layanan_widget.dart';
import 'package:tes_syklin/widget/rekomendasi_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 45),
        children: [
          Row(
            // mainAxisAlignment → mengatur posisi anak-anak widget secara horizontal
            // spaceBetween → widget pertama di kiri, widget terakhir di kanan
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            // crossAxisAlignment → mengatur posisi anak-anak widget secara vertikal
            // center → semua widget disejajarkan di tengah secara vertikal
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              // Bagian kiri → teks ucapan sambutan (dalam bentuk Column)
              Column(
                // crossAxisAlignment.start → teks rata kiri
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Teks 1: "Selamat Datang!"
                  Text(
                    'Selamat Datang!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600, // semi-bold
                      color: secondaryColor, // pakai warna tema sekunder
                    ),
                  ),
                  // Teks 2: "Mau dibantu apa hari ini?"
                  Text(
                    'Mau dibantu apa hari ini?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: greyColor, // pakai warna abu-abu
                    ),
                  ),
                ],
              ),

              // Bagian kanan → tombol notifikasi (ikon bel)
              IconButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan → masih kosong
                  // Nanti bisa diisi untuk membuka halaman notifikasi
                },
                icon: Image.asset(
                  'assets/ic-notifikasi.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ],
          ),

          SizedBox(height: 20),
          Stack(
            children: [
              // Background image
              Image.asset(
                'assets/img-cta.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // Tulisan & hiasan
              Positioned(
                top: 70,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cucian Numpuk\nbikin pusing?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Ayo Cuci!',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LayananWidget(imagePath: "assets/laundry.png", label: 'Laundry'),
              LayananWidget(
                imagePath: "assets/img-dryclean.png",
                label: 'Dry Clean',
              ),
              LayananWidget(imagePath: "assets/setrika.png", label: 'Setrika'),
              LayananWidget(
                imagePath: "assets/img-lainnya.png",
                label: 'Lainnya',
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Rekomendasi',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: greyColor,
            ),
          ),
          SizedBox(height: 20),
          RekomendasiCard(
            imagePath: 'assets/img-drycleaning.png',
            nama: 'Dry Cleaning',
            harga: 'IDR 10000 / Kg',
          ),
          SizedBox(height: 20),
          RekomendasiCard(
            imagePath: 'assets/img-setrika.png',
            nama: 'Setrika',
            harga: 'IDR 5000 / Kg',
          ),
        ],
      ),
    );
  }
}
