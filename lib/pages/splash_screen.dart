import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tes_syklin/pages/login_page.dart';

// SplashScreen adalah halaman pertama yang muncul saat aplikasi dijalankan
// Karena butuh timer (ada perubahan state), maka dibuat sebagai StatefulWidget
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

// State dari SplashScreen
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // initState() → dipanggil sekali saat widget pertama kali dibuat
    // Di sini kita langsung memanggil fungsi untuk pindah halaman (movingPage)
    movingPage();
  }

  // Fungsi untuk pindah halaman setelah delay 2 detik
  void movingPage() {
    Timer(Duration(seconds: 2), () {
      // Navigator.pushReplacement() → ganti halaman SplashScreen
      // dengan halaman LoginPage (tidak bisa kembali ke Splash lagi)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // build() → membangun UI SplashScreen
    return Scaffold(
      // Scaffold = struktur dasar halaman
      body: Center(
        // Center → menempatkan widget di tengah layar
        // Image.asset → menampilkan logo dari folder assets
        child: Image.asset('assets/Logo.png', width: 150),
      ),
    );
  }
}

