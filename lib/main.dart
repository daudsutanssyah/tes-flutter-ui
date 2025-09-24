import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tes_syklin/pages/splash_screen.dart';

// Titik awal program Flutter.

// runApp() = menjalankan aplikasi Flutter.

// Parameternya adalah widget root, di sini MyApp.
// ➡️ Jadi: “setiap aplikasi Flutter selalu mulai dari main() lalu menampilkan widget pertama.

// Titik awal eksekusi aplikasi Flutter
void main() {
  // runApp() digunakan untuk menjalankan widget root aplikasi
  // di sini widget root kita adalah MyApp()
  runApp(const MyApp());
}

// MyApp adalah widget utama aplikasi (root widget)
// karena StatelessWidget → dia sendiri tidak punya state yang berubah-ubah
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // build() adalah method yang wajib ada di setiap widget
  // di sini kita mengembalikan MaterialApp sebagai kerangka utama aplikasi
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false → menghilangkan label "debug"
      // di pojok kanan atas saat aplikasi dijalankan dalam mode debug
      debugShowCheckedModeBanner: false,

      // theme: ThemeData(...) → mengatur tema global aplikasi
      // di sini kita pakai GoogleFonts.dmSans untuk mengganti semua font default
      theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),

      // home: SplashScreen() → menentukan halaman pertama yang tampil
      // saat aplikasi dijalankan, yaitu SplashScreen
      home: SplashScreen(),
    );
  }
}
