import 'package:flutter/material.dart';
import 'package:tes_syklin/themes/colors.dart';


// CustomTextForm → widget buatan sendiri untuk input text
// Dibuat StatelessWidget karena tidak menyimpan state (hanya menampilkan TextFormField)
class CustomTextForm extends StatelessWidget {
  // Ketika kita bikin widget custom di Flutter (misalnya CustomTextForm), 
  //biasanya kita kasih parameter supaya widget itu fleksibel dipakai 
  //di banyak tempat.
  // label → teks hint yang muncul di dalam input
  // icon → widget tambahan di sisi kanan input (misalnya icon "mata" untuk password)
  final String? label;
  final Widget? icon;

  const CustomTextForm({super.key, this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // decoration → mengatur tampilan input (border, hint, icon, dll.)
      decoration: InputDecoration(
        // hintText → teks placeholder yang muncul sebelum user mengetik
        hintText: label,

        // suffixIcon → icon di bagian kanan input
        suffixIcon: icon,

        // hintStyle → styling untuk teks hint
        hintStyle: TextStyle(fontSize: 16, color: greyColor),

        // Border saat input belum fokus
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), // sudut border melengkung
          borderSide: BorderSide(color: greyColor, width: 1), // warna & ketebalan border
        ),

        // Border saat input sedang fokus (user mengetik)
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: greyColor, width: 1),
        ),
      ),
    );
  }
}
