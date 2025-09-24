import 'package:flutter/material.dart';
import 'package:tes_syklin/pages/bottom_nav.dart';
import 'package:tes_syklin/themes/colors.dart';
import 'package:tes_syklin/widget/custom_text_form.dart';

// Halaman Login, dibuat sebagai StatelessWidget
// Karena di sini hanya menampilkan form + navigasi, tidak ada state yang berubah-ubah
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold = kerangka dasar halaman (sudah ada AppBar, Body, FAB)
      body: ListView(
        // ListView → agar halaman bisa di-scroll kalau kontennya tinggi
        children: [
          // Gambar banner/login
          Image.asset('assets/img-login.png'),

          SizedBox(height: 40),

          // Judul / tagline aplikasi
          Text(
            'Laundry lebih mudah!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: secondaryColor, // warna custom
            ),
          ),

          SizedBox(height: 20),

          // Container untuk membungkus form login
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20), // jarak kiri-kanan
            child: Column(
              children: [
                // Input username (pakai custom widget TextFormField)
                CustomTextForm(label: "Masukkan Username"),

                SizedBox(height: 20),

                // Input password (ada ikon mata untuk show/hide password)
                CustomTextForm(
                  label: "Masukkan Password",
                  icon: Image.asset('assets/ic-eyes.png'),
                ),

                SizedBox(height: 5),

                // Teks "Lupa Password" ditaruh di kanan bawah
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Lupa Password",
                    style: TextStyle(fontSize: 16, color: primaryColor),
                  ),
                ),

                SizedBox(height: 20),

                // Tombol "Masuk"
                SizedBox(
                  height: 50,
                  width: double.infinity, // full lebar
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor, // warna tombol
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ), // rounded corner
                      ),
                    ),
                    onPressed: () {
                      // Saat tombol ditekan → pindah ke halaman BottomNav
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNav()),
                      );
                    },
                    child: Text(
                      'Masuk',
                      style: TextStyle(fontSize: 16, color: whiteColor),
                    ),
                  ),
                ),

                SizedBox(height: 100),

                // Teks "Belum punya akun? Daftar"
                Text.rich(
                  // Text.rich → dipakai kalau kita mau bikin teks dengan beberapa style berbeda
                  // dalam satu baris atau satu kalimat
                  TextSpan(
                    children: [
                      // Bagian pertama dari kalimat
                      TextSpan(
                        text: 'Belum punya akun? ', // teks biasa
                        style: TextStyle(
                          fontSize: 16,
                          color: secondaryColor, // warna abu-abu / sekunder
                        ),
                      ),

                      // Bagian kedua dari kalimat (teks "Daftar")
                      TextSpan(
                        text: 'Daftar',
                        style: TextStyle(
                          fontSize: 16,
                          color: primaryColor, // warna hijau (utama)
                          fontWeight:
                              FontWeight.w600, // lebih tebal (semi-bold)
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center, // rata tengah
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
