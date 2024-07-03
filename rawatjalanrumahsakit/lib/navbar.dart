import 'package:flutter/material.dart';
// import 'package:rawatjalanrumahsakit/homescreen.dart';
import 'package:rawatjalanrumahsakit/models/pasien.dart';
import 'package:rawatjalanrumahsakit/screens/formulirpasien.dart';
import 'package:rawatjalanrumahsakit/screens/pendaftaranform.dart';
import 'package:rawatjalanrumahsakit/screens/profilepage.dart';
import 'package:rawatjalanrumahsakit/screens/setting.dart';

class Home extends StatelessWidget {
  final Color primaryColor = Color.fromRGBO(229, 57, 53, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Gambar Header
          Stack(
            children: [
              Image.asset(
                'lib/assets/images/medis1.jpg', 
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
          SizedBox(height: 20),
          // Bagian Informasi Klinik
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Informasi Klinik',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildImageCard(
                          context, 'lib/assets/images/patient.jpg', 'Pasien'),
                      buildImageCard(
                          context, 'lib/assets/images/doctor.jpg', 'Dokter'),
                      buildImageCard(
                          context, 'lib/assets/images/pill.jpg', 'Obat'),
                      buildImageCard(context,
                          'lib/assets/images/pembayaran.jpg', 'Pembayaran'),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          // Bagian Poliklinik
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Poliklinik',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildImageCard(
                          context, 'lib/assets/images/antri.jpg', 'Antrian'),
                      buildImageCard(context, 'lib/assets/images/jadwal.jpg',
                          'Jadwal Dokter'),
                      buildImageCard(context, 'lib/assets/images/kunjungan.jpg',
                          'Kunjungan'),
                      buildImageCard(context,
                          'lib/assets/images/pendaftaran.jpg', 'Pendaftaran'),
                      buildImageCard(context,
                          'lib/assets/images/rekammedis.jpg', 'Rekam Medis'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return Home();
                  },
                ));
              },
              icon: Icon(
                Icons.home,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return ProfilePage(
                      patientData: {
                        'nama_lengkap': 'Messy',
                        'jenis_kelamin': 'Perempuan',
                        'tempat_lahir': 'Padang Panjang',
                        'tanggal_lahir': DateTime(2003, 3, 19),
                        'nama_ibu_kandung': 'Riani',
                        'agama': 'Islam',
                        'status': 'Belum Menikah',
                        'pendidikan': 'Diploma',
                        'pekerjaan': 'Mahasiswa',
                        'nomor_ktp': '12345678910',
                        'nomor_kk': '0987654321',
                        'nomor_bpjs': '12345',
                        'nomor_telepon': '0812345678',
                        'provinsi': 'Sumatera Barat',
                        'kabupaten_kota': 'Kota Padang',
                        'alamat': 'Jalan Durian Taruan',
                        'golongan_darah': 'O',
                        'email': 'messy@gmail.com',
                      },
                    );
                  },
                ));
              },
              icon: Icon(
                Icons.person,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return Setting();
                  },
                ));
              },
              icon: Icon(
                Icons.settings,
              ),
            ),
          ],
        ),
      ),
    );
  }
Widget buildImageCard(BuildContext context, String imagePath, String title,
      {double? width, double? height}) {
    return InkWell(
      onTap: () {
        if (title == 'Pasien') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormulirPasien(),
            ),
          );
        } else if (title == 'Pendaftaran') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PendaftaranForm(),
            ),
          );
        }
      },
      child: Container(
        width: width ?? MediaQuery.of(context).size.width / 2.5,
        height: height ??
            150, // Tinggi default jika tidak ada parameter yang diberikan
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
