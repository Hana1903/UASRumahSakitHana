// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int _selectedIndex = 0;
//   final List<Widget> _screens = [
//     HomeScreen(),
//     PasienScreen(),
//     DoctorScreen(),
//     PaymentScreen(),
//     MedicineScreen(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
//       appBar: AppBar(
//         title: Text('Dashboard'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Menu',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.queue),
//               title: Text('Antrian'),
//               onTap: () {
//                 Navigator.pop(context);
//                 setState(() {
//                   _selectedIndex = 5;
//                 });
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.schedule),
//               title: Text('Jadwal Dokter'),
//               onTap: () {
//                 Navigator.pop(context);
//                 setState(() {
//                   _selectedIndex = 6;
//                 });
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.history),
//               title: Text('Kunjungan'),
//               onTap: () {
//                 Navigator.pop(context);
//                 setState(() {
//                   _selectedIndex = 7;
//                 });
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.assignment),
//               title: Text('Rekam Medis'),
//               onTap: () {
//                 Navigator.pop(context);
//                 setState(() {
//                   _selectedIndex = 8;
//                 });
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.app_registration),
//               title: Text('Pendaftaran'),
//               onTap: () {
//                 Navigator.pop(context);
//                 setState(() {
//                   _selectedIndex = 9;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: Container(
//         height: 80,
//         child: BottomNavigationBar(
//           backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: Color.fromRGBO(229, 57, 53, 1.0),
//           unselectedItemColor: Color.fromRGBO(224, 224, 224, 1.0),
//           selectedLabelStyle: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//           currentIndex: _selectedIndex,
//           onTap: _onItemTapped,
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.dashboard),
//               label: 'Dashboard',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Pasien',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.people_alt),
//               label: 'Dokter',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.payment),
//               label: 'Bayar',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.medical_services),
//               label: 'Obat',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Dashboard',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// class PasienScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Daftar Pasien',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// class DoctorScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Daftar Dokter',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// class PaymentScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Pembayaran',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// class MedicineScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Daftar Obat',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// class AntrianScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Antrian',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// class JadwalDokterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Jadwal Dokter',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// class KunjunganScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Kunjungan',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// class RekamMedisScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Rekam Medis',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// class PendaftaranScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Pendaftaran',
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Color primaryColor = Color.fromRGBO(229, 57, 53, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Image
            Stack(
              children: [
                Image.asset(
                  'lib/assets/images/medis1.jpg', // Replace with your header image path
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            // Clinic Information Section
            Padding(
              padding: const EdgeInsets.all(20),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildImageCard('lib/assets/images/patient.jpg', 'Pasien'),
                      buildImageCard('lib/assets/images/doctor.jpg', 'Dokter'),
                      buildImageCard('lib/assets/images/pill.jpg', 'Obat'),
                      buildImageCard(
                          'lib/assets/images/pembayaran.jpg', 'Pembayaran'),
                    ],
                  ),
                ],
              ),
            ),
            // Poliklinik Section
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
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 5,
                    childAspectRatio: 3 / 4,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      buildImageCard('lib/assets/images/antri.jpg', 'Antrian'),
                      buildImageCard(
                          'lib/assets/images/jadwal.jpg', 'Jadwal Dokter'),
                      buildImageCard(
                          'lib/assets/images/kunjungan.jpg', 'Kunjungan'),
                      buildImageCard(
                          'lib/assets/images/pendaftaran.jpg', 'Pendaftaran'),
                      buildImageCard(
                          'lib/assets/images/rekammedis.jpg', 'Rekam Medis'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Reservasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget buildImageCard(String imagePath, String label) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Adding padding around each card
      child: Column(
        children: [
          Container(
            width: 150, // Increase the width
            height: 150, // Increase the height
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(height: 8),
          Text(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget buildInfoCard(IconData icon, String label, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }

  Widget _buildPoliCard(IconData icon, String label, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }
}
