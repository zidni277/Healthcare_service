import 'package:flutter/material.dart';
import 'statistics_screen.dart'; // Pastikan file ini diimpor

class InsuranceDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111827), // Warna latar belakang layar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.black, // Latar belakang hitam untuk ikon kembali
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white), // Ikon tombol kembali
            onPressed: () {
              Navigator.pushNamed(context, '/getStarted');
            },
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white, // Latar belakang putih untuk ikon notifikasi
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.black), // Ikon notifikasi
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white, // Latar belakang putih untuk ikon pengaturan
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.settings, color: Colors.black), // Ikon pengaturan
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding untuk semua sisi
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20), // Padding di dalam container
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 120, 184, 216), // Warna latar belakang kartu
                borderRadius: BorderRadius.circular(20), // Sudut melengkung
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Spasi di antara elemen
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.black, // Warna latar belakang hitam untuk ikon
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.menu, color: Colors.white), // Ikon menu
                          ),
                          SizedBox(width: 10), // Jarak antara ikon dan teks
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.black, // Latar belakang hitam untuk teks
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              '\$20k',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // Warna teks putih
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward, color: Colors.black), // Ikon panah
                        onPressed: () {
                          // Navigasi ke halaman StatisticsScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => StatisticsScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Jarak antar elemen
                  Text(
                    'Health Individual Insurances',
                    style: TextStyle(
                      fontSize: 35,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 15), // Jarak antar elemen
                  Container(
                    height: 40, // Tinggi progress bar
                    width: double.infinity, // Lebar penuh
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white24, // Warna latar progress bar
                    ),
                    child: FractionallySizedBox(
                      widthFactor: 0.635, // Proporsi progress bar (representasi "spent")
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(173, 50, 47, 47), // Warna progress yang terisi
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Jarak antar elemen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Spent: \$12.7k',
                        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Text(
                        'Available: \$7.3k',
                        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Jarak antar elemen utama
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildActionButton(Icons.description, 'Document'), // Tombol aksi
                _buildActionButton(Icons.article, 'Plans'),
                _buildActionButton(Icons.download, 'Download'),
              ],
            ),
            SizedBox(height: 20), // Jarak antar elemen
            _buildFileTile('PH345F43EKG', '0.8 MB', '20 Sep'), // Informasi file
            SizedBox(height: 10),
            _buildFileTile('PK784F43EKG', '0.6 MB', '20 Sep'),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun tombol aksi
  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white, // Latar belakang putih untuk tombol aksi
            borderRadius: BorderRadius.circular(12), // Bentuk kotak dengan sudut melengkung
          ),
          child: Icon(icon, color: Colors.black), // Ikon tombol
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  // Fungsi untuk menampilkan informasi file
  Widget _buildFileTile(String refCode, String size, String date) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.black, // Warna latar belakang hitam untuk kontainer file
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.insert_drive_file, color: Colors.white), // Ikon file
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Ref Code $refCode', // Kode referensi file
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text(
            size, // Ukuran file
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: 10),
          Text(
            date, // Tanggal file
            style: TextStyle(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
