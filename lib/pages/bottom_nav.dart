import 'package:flutter/material.dart';
import 'package:tes_syklin/pages/home_page.dart';

// BottomNav adalah halaman dengan BottomNavigationBar (menu bawah aplikasi)
// Dibuat StatefulWidget karena index tab akan berubah-ubah saat user klik
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  // Variabel untuk menyimpan index tab yang sedang dipilih
  int selectedIndex = 0;

  // Daftar halaman yang akan ditampilkan sesuai tab yang dipilih
  static final List<Widget> screenList = [
    HomePage(), // Tab 0 → Halaman Beranda
    Center(child: Text("Halaman Pesanan (dummy)")), // Tab 1 → Dummy Pesanan
    Center(child: Text("Halaman Profil (dummy)")), // Tab 2 → Dummy Profil
  ];

  // Fungsi untuk mengganti halaman sesuai tab yang diklik
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body menampilkan halaman sesuai tab yang sedang dipilih
      body: screenList[selectedIndex],

      // BottomNavigationBar diletakkan di bawah Scaffold
      bottomNavigationBar: Container(
        // Memberikan efek bayangan di atas BottomNavigationBar
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(
                (0.15 * 255).toInt(),
              ), // warna hitam transparan
              offset: const Offset(
                0,
                -4,
              ), // arah bayangan (dari atas ke bawah negatif Y)
              blurRadius: 15, // tingkat blur
            ),
          ],
        ),
        child: BottomNavigationBar(
          // Daftar item menu bawah
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                  bottom: 4,
                ), // jarak ikon dengan label
                child: Image.asset(
                  'assets/ic-home-green.png',
                  width: 20,
                  height: 20,
                ),
              ),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Image.asset(
                  'assets/ic-pesanan.png',
                  width: 20,
                  height: 20,
                ),
              ),
              label: "Pesanan",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Image.asset(
                  'assets/ic-profil.png',
                  width: 20,
                  height: 20,
                ),
              ),
              label: "Profil",
            ),
          ],

          // Index tab yang aktif
          currentIndex: selectedIndex,

          // Fungsi yang dipanggil ketika user tap item menu
          onTap: onItemTapped,

          // Warna background menu bawah
          backgroundColor: Colors.white,

          // Jenis menu: fixed (semua item selalu tampil)
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
