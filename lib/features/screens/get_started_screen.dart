import 'package:flutter/material.dart';
import '../../core/global_component/string_constants.dart';
import '../../core/global_component/image_constants.dart'; // Impor jika Anda membuat konstanta untuk gambar

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(223, 255, 255, 255),
      body: Stack(
        children: [
          // Menambahkan gambar latar belakang yang transparan
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
  ImageConstants.background, // Menggunakan konstanta untuk gambar
  fit: BoxFit.cover,
),
            ),
          ),
          // Tambahan elemen dekoratif pada bagian kiri atas
          Stack(
            children: [
              // Ikon lingkaran
              Positioned(
                top: 40,
                left: 16,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  child: Icon(Icons.grid_view, color: Colors.white),
                ),
              ),
              // Kotak "Health Insurances" di sebelah kanan ikon
              Positioned(
                top: 40,
                left: 80, // Ubah nilai ini agar berada di sebelah kanan ikon
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    'Health Insurances',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          // Konten utama dan tombol di bagian bawah layar
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Kotak hitam dengan teks utama '400k'
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "400k", // Huruf K sudah menjadi kecil
                          style: TextStyle(
                            fontSize: 100,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          StringConstants.insuredClients,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Tombol 'Get Started' di bawah konten utama
                  Container(
                    width: 380, // Mengatur lebar tombol agar sesuai dengan konten 400k
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(134, 162, 186, 202),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 7), // Menjaga tinggi tombol
                      ),
                      onPressed: () {
                        print("Get Started button pressed"); // Tambahkan ini untuk debugging
                        Navigator.pushNamed(context, '/insurance-detail');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Mengatur elemen dalam Row
                        children: [
                          Icon(Icons.check_circle, size: 70, color: Colors.black),
                          Expanded( // Membuat teks mengisi sisa ruang
                            child: Center( // Menempatkan teks di tengah
                              child: Text(
                                StringConstants.getStarted,
                                style: TextStyle(color: Colors.black, fontSize: 30),
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward, size: 30, color: Colors.black), // Menambahkan ikon anak panah
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
