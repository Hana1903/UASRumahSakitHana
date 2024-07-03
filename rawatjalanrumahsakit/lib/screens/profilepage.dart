// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class ProfilePage extends StatelessWidget {
//   final Map<String, dynamic> patientData;

//   ProfilePage({required this.patientData});

//   @override
//   Widget build(BuildContext context) {
//     // Mengonversi tanggal lahir ke format yang diinginkan
//     String formattedDate;
//     if (patientData['tanggal_lahir'] is String) {
//       DateTime date = DateTime.parse(patientData['tanggal_lahir']);
//       formattedDate = DateFormat('dd MMMM yyyy').format(date);
//     } else {
//       formattedDate = DateFormat('dd MMMM yyyy').format(patientData['tanggal_lahir'] as DateTime);
//     }

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(229, 57, 53, 1.0),
//         title: Text('Profile Pasien'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             DetailRow(label: 'Nama Lengkap', value: patientData['nama_lengkap']),
//             DetailRow(label: 'Jenis Kelamin', value: patientData['jenis_kelamin']),
//             DetailRow(label: 'Tempat Lahir', value: patientData['tempat_lahir']),
//             DetailRow(label: 'Tanggal Lahir', value: formattedDate),
//             DetailRow(label: 'Nama Ibu Kandung', value: patientData['nama_ibu_kandung']),
//             DetailRow(label: 'Agama', value: patientData['agama']),
//             DetailRow(label: 'Status', value: patientData['status']),
//             DetailRow(label: 'Pendidikan', value: patientData['pendidikan']),
//             DetailRow(label: 'Pekerjaan', value: patientData['pekerjaan']),
//             DetailRow(label: 'Nomor KTP', value: patientData['nomor_ktp']),
//             DetailRow(label: 'Nomor KK', value: patientData['nomor_kk']),
//             DetailRow(label: 'Nomor BPJS', value: patientData['nomor_bpjs']),
//             DetailRow(label: 'Nomor Telepon', value: patientData['nomor_telepon']),
//             DetailRow(label: 'Provinsi', value: patientData['provinsi']),
//             DetailRow(label: 'Kabupaten/Kota', value: patientData['kabupaten_kota']),
//             DetailRow(label: 'Alamat', value: patientData['alamat']),
//             DetailRow(label: 'Golongan Darah', value: patientData['golongan_darah']),
//             DetailRow(label: 'Email', value: patientData['email']),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DetailRow extends StatelessWidget {
//   final String label;
//   final String value;

//   DetailRow({required this.label, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             '$label: ',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Expanded(
//             child: Text(value),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final Map<String, dynamic> patientData;

  ProfilePage({required this.patientData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 57, 53, 1.0),
        title: Text('Profile Pasien'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildProfileDetail('Nama Lengkap', patientData['nama_lengkap']),
            buildProfileDetail('Jenis Kelamin', patientData['jenis_kelamin']),
            buildProfileDetail('Tempat Lahir', patientData['tempat_lahir']),
            buildProfileDetail('Tanggal Lahir', patientData['tanggal_lahir'].toString()),
            buildProfileDetail('Nama Ibu Kandung', patientData['nama_ibu_kandung']),
            buildProfileDetail('Agama', patientData['agama']),
            buildProfileDetail('Status', patientData['status']),
            buildProfileDetail('Pendidikan', patientData['pendidikan']),
            buildProfileDetail('Pekerjaan', patientData['pekerjaan']),
            buildProfileDetail('Nomor KTP', patientData['nomor_ktp']),
            buildProfileDetail('Nomor KK', patientData['nomor_kk']),
            buildProfileDetail('Nomor BPJS', patientData['nomor_bpjs']),
            buildProfileDetail('Nomor Telepon', patientData['nomor_telepon']),
            buildProfileDetail('Provinsi', patientData['provinsi']),
            buildProfileDetail('Kabupaten/Kota', patientData['kabupaten_kota']),
            buildProfileDetail('Alamat', patientData['alamat']),
            buildProfileDetail('Golongan Darah', patientData['golongan_darah']),
            buildProfileDetail('Email', patientData['email']),
          ],
        ),
      ),
    );
  }

  Widget buildProfileDetail(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
