
import 'package:flutter/material.dart';

// =============================================
// 1. FUNGSI UTAMA APLIKASI
// =============================================

void main() {
  runApp(const TabungKuApp());
}

// =============================================
// 2. WIDGET UTAMA TABUNGKU
// =============================================

class TabungKuApp extends StatelessWidget {
  const TabungKuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Menghilangkan tulisan DEBUG
      debugShowCheckedModeBanner: false,

      // Nama aplikasi
      title: 'TabungKu',

      // Halaman pertama aplikasi
      home: const RingkasanPage(),
    );
  }
}

// =============================================
// 3. HALAMAN RINGKASAN TABUNGAN
// =============================================

class RingkasanPage extends StatelessWidget {
  const RingkasanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // -----------------------------------------
      // A. APP BAR
      // -----------------------------------------

      appBar: AppBar(
        title: const Text(
          'Ringkasan Tabungan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      // -----------------------------------------
      // B. BODY / ISI HALAMAN
      // -----------------------------------------

      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),

            // Memberikan jarak di seluruh sisi halaman
            child: Padding(
              padding: const EdgeInsets.all(16.0),

              // Menyusun konten secara vertikal
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  // =================================
                  // C. CARD INFORMASI TABUNGAN
                  // =================================

                  Card(
                    color: Colors.green.shade50,
                    elevation: 4,

                    child: Padding(
                      padding: const EdgeInsets.all(20.0),

                      // Menyusun informasi tabungan
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          // Nama tabungan
                          const Text(
                            'Tabungan Liburan',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),

                          const SizedBox(height: 18),

                          // Keterangan saldo
                          const Text(
                            'Saldo Saat Ini',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),

                          const SizedBox(height: 5),

                          // Nominal saldo
                          const Text(
                            'Rp2.500.000',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Menampilkan target menggunakan Row
                          const Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Target Tabungan',
                                style: TextStyle(fontSize: 14),
                              ),

                              Text(
                                'Rp5.000.000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          // Indikator pencapaian target
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const LinearProgressIndicator(
                              value: 0.5,
                              minHeight: 8,
                              backgroundColor: Colors.white,
                              color: Colors.green,
                            ),
                          ),

                          const SizedBox(height: 6),

                          // Persentase target
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '50% dari target',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Jarak antara Card dan kategori
                  const SizedBox(height: 25),

                  // =================================
                  // D. TIGA KATEGORI TABUNGAN
                  // =================================

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      // Kategori Menabung
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: const Column(
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: Colors.green,
                                size: 35,
                              ),
                              SizedBox(height: 7),
                              Text(
                                'Menabung',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      // Kategori Tarik
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: const Column(
                            children: [
                              Icon(
                                Icons.remove_circle,
                                color: Colors.orange,
                                size: 35,
                              ),
                              SizedBox(height: 7),
                              Text(
                                'Tarik',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      // Kategori Riwayat
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: const Column(
                            children: [
                              Icon(
                                Icons.history,
                                color: Colors.blue,
                                size: 35,
                              ),
                              SizedBox(height: 7),
                              Text(
                                'Riwayat',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Jarak sebelum transaksi
                  const SizedBox(height: 28),

                  // =================================
                  // E. JUDUL DAFTAR TRANSAKSI
                  // =================================

                  const Text(
                    'Transaksi Terakhir',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // =================================
                  // F. TRANSAKSI PERTAMA
                  // =================================

                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: const Icon(
                        Icons.savings,
                        color: Colors.green,
                        size: 30,
                      ),

                      title: const Text(
                        'Menabung',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: const Text(
                        '06 November 2026',
                      ),

                      trailing: const Text(
                        '+Rp500.000',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),

                  // =================================
                  // G. TRANSAKSI KEDUA
                  // =================================

                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: const Icon(
                        Icons.money_off,
                        color: Colors.orange,
                        size: 30,
                      ),

                      title: const Text(
                        'Penarikan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: const Text(
                        '04 November 2026',
                      ),

                      trailing: const Text(
                        '-Rp100.000',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),

                  // =================================
                  // H. TRANSAKSI KETIGA
                  // =================================

                  Card(
                    elevation: 2,
                    child: ListTile(
                      leading: const Icon(
                        Icons.savings,
                        color: Colors.green,
                        size: 30,
                      ),

                      title: const Text(
                        'Menabung',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: const Text(
                        '01 November 2026',
                      ),

                      trailing: const Text(
                        '+Rp250.000',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),

                  // Jarak di bagian bawah halaman
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
