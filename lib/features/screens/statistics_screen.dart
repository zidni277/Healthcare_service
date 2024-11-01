import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E1621), // Warna latar belakang utama
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Header AppBar custom
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tambahkan ikon panah kembali
                Container(
                decoration: BoxDecoration(
                  color: Color(0xFF252A34), // Warna latar belakang ikon
                  shape: BoxShape.circle,   // Bentuk lingkaran
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    // Kembali ke layar "insurance_detail_screen.dart"
                    Navigator.pushNamed(context, '/insurance-detail');
                  },
                ),
              ),

                Row(
                  children: [
                    _buildCircleButton(Icons.grid_view, backgroundColor: Color(0xFF78B8D8)), // Ikon menu di kiri
                    SizedBox(width: 10), // Jarak antara ikon dan tombol "Statistics"
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      decoration: BoxDecoration(
                        color: Color(0xFF78B8D8),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'Statistics',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60),
            // Baris tombol D, M, Y
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildDateButton('D', isActive: false),
                _buildDateButton('M', isActive: false),
                _buildDateButton('Y', isActive: true),
              ],
            ),
            SizedBox(height: 30), // Menyesuaikan jarak antara header dan grid
            // Header dengan ikon spesialisasi
            Row(
              children: [
                _buildIconOnlyHeaderItem(Icons.medical_services),
                SizedBox(width: 7),
                _buildIconOnlyHeaderItem(Icons.brush),
                SizedBox(width: 7),
                _buildIconOnlyHeaderItem(Icons.cut),
                SizedBox(width: 7),
                _buildIconOnlyHeaderItem(Icons.accessibility_new),
                SizedBox(width: 7),
                _buildIconOnlyHeaderItem(Icons.psychology),
                SizedBox(width: 7),
                _buildIconOnlyHeaderItem(Icons.person),
                SizedBox(width: 7),
                _buildIconOnlyHeaderItem(Icons.healing),
                SizedBox(width: 7),
                _buildIconOnlyHeaderItem(Icons.favorite),
              ],
            ),
            SizedBox(height: 8), // Jarak antara ikon header dan grid
            // Grid data dengan indikator persentase
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GridView.builder(
                      itemCount: 48, // Total elemen grid
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 8, // Jumlah kolom horizontal
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        // Penentuan elemen aktif atau transparan
                        bool isActive = index < 40; // Sesuaikan jumlah aktif
                        return CircleAvatar(
                          radius: 20, // Ukuran yang serasi dengan ikon header
                          backgroundColor: isActive
                              ? const Color(0xFF78B8D8) // Warna aktif
                              : Color(0xFF252A34), // Warna latar
                          child: !isActive
                              ? Icon(
                                  Icons.close,
                                  color: Color(0xFF78B8D8), // Warna pola silang
                                  size: 16,
                                )
                              : null,
                        );
                      },
                    ),
                  ),
                  // Indikator persentase di samping
                  Column(
                    children: [
                      _buildPercentageLabel('0%'),
                      SizedBox(height: 35), // Menambah jarak vertikal
                      _buildPercentageLabel('20%'),
                      SizedBox(height: 35), // Menambah jarak vertikal
                      _buildPercentageLabel('40%'),
                      SizedBox(height: 35), // Menambah jarak vertikal
                      _buildPercentageLabel('60%'),
                      SizedBox(height: 35), // Menambah jarak vertikal
                      _buildPercentageLabel('80%'),
                      SizedBox(height: 35), // Menambah jarak vertikal
                      _buildPercentageLabel('100%'),
                    ],
                  ),
                ],
              ),
            ),
            // Container untuk bagian "Expenses" dan ikon navigasi
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xFFE0E6ED), // Warna latar putih untuk kontainer
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Expenses',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), // Mengubah warna teks menjadi hitam
                      ),
                      Row(
                        children: [
                          Text(
                            '\$21.8k',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Mengubah warna teks menjadi hitam
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, color: Colors.black), // Mengubah warna ikon menjadi hitam
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Baris ikon navigasi dengan latar belakang hitam dan teks
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildBottomButton(Icons.home),
                      _buildBottomButton(Icons.calendar_today),
                      _buildBottomButton(Icons.medical_services, isActive: true, label: 'Therapy'),
                      _buildBottomButton(Icons.settings),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun tombol melingkar di header
  Widget _buildCircleButton(IconData icon, {Color backgroundColor = Colors.black}) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: const Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }

  // Fungsi untuk membuat item header tanpa label
  Widget _buildIconOnlyHeaderItem(IconData icon) {
    return Container(
      width: 37, // Lebar yang sama dengan elemen grid
      height: 40, // Tinggi yang sama dengan elemen grid
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF78B8D8),
      ),
      child: Center(
        child: Icon(
          icon,
          color: const Color.fromARGB(255, 0, 0, 0),
          size: 20, // Ukuran ikon agar sesuai
        ),
      ),
    );
  }

  // Fungsi untuk label persentase
  Widget _buildPercentageLabel(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 12),
    );
  }

  // Fungsi untuk membangun tombol D, M, Y yang besar
  Widget _buildDateButton(String label, {bool isActive = false}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
        color: isActive ? Color.fromARGB(255, 254, 255, 255) : Color(0xFF252A34),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isActive ? Colors.black : Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Fungsi untuk membangun tombol navigasi bawah dengan teks opsional
  Widget _buildBottomButton(IconData icon, {bool isActive = false, String? label}) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isActive ? const Color.fromARGB(255, 49, 45, 45) : const Color.fromARGB(255, 176, 170, 170),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        if (label != null) ...[
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(color: const Color.fromARGB(255, 49, 45, 45), fontWeight: FontWeight.bold),
          ),
        ],
      ],
    );
  }
}
