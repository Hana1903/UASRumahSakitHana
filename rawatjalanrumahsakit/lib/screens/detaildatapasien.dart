import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rawatjalanrumahsakit/navbar.dart'; // Import intl package for date formatting

class DetailDataPasien extends StatelessWidget {
  final Map<String, dynamic> patientData;

  DetailDataPasien({required this.patientData});

  @override
  Widget build(BuildContext context) {
    // Format date of birth here
    String formattedDate = DateFormat('dd MMMM yyyy')
        .format(patientData['tanggal_lahir'] as DateTime);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 57, 53, 1.0),
        title: Text('Detail Data Pasien'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
              return Home();
            },));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DetailRow(
                label: 'Nama Lengkap', value: patientData['nama_lengkap']),
            DetailRow(
                label: 'Jenis Kelamin', value: patientData['jenis_kelamin']),
            DetailRow(
                label: 'Tempat Lahir', value: patientData['tempat_lahir']),
            DetailRow(
                label: 'Tanggal Lahir',
                value: formattedDate), // Use formattedDate here
            DetailRow(
                label: 'Nama Ibu Kandung',
                value: patientData['nama_ibu_kandung']),
            DetailRow(label: 'Agama', value: patientData['agama']),
            DetailRow(label: 'Status', value: patientData['status']),
            DetailRow(label: 'Pendidikan', value: patientData['pendidikan']),
            DetailRow(label: 'Pekerjaan', value: patientData['pekerjaan']),
            DetailRow(label: 'Nomor KTP', value: patientData['nomor_ktp']),
            DetailRow(label: 'Nomor KK', value: patientData['nomor_kk']),
            DetailRow(label: 'Nomor BPJS', value: patientData['nomor_bpjs']),
            DetailRow(
                label: 'Nomor Telepon', value: patientData['nomor_telepon']),
            DetailRow(label: 'Provinsi', value: patientData['provinsi']),
            DetailRow(
                label: 'Kabupaten/Kota', value: patientData['kabupaten_kota']),
            DetailRow(label: 'Alamat', value: patientData['alamat']),
            DetailRow(
                label: 'Golongan Darah', value: patientData['golongan_darah']),
            DetailRow(label: 'Email', value: patientData['email']),
          ],
        ),
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  DetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
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

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart'; // Import intl package for date formatting

// class DetailDataPasien extends StatelessWidget {
//   final Map<String, dynamic> patientData;
//   final Function updateTotalPasien;

//   DetailDataPasien({required this.patientData, required this.updateTotalPasien});

//   @override
//   Widget build(BuildContext context) {
//     // Format date of birth here
//     String formattedDate = DateFormat('dd MMMM yyyy').format(patientData['tanggal_lahir'] as DateTime);

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(229, 57, 53, 1.0),
//         title: Text('Detail Data Pasien'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.home),
//             onPressed: () {
//               updateTotalPasien();
//               Navigator.popUntil(context, (route) => route.isFirst);
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             DetailRow(label: 'Nama Lengkap', value: patientData['nama_lengkap']),
//             DetailRow(label: 'Jenis Kelamin', value: patientData['jenis_kelamin']),
//             DetailRow(label: 'Tempat Lahir', value: patientData['tempat_lahir']),
//             DetailRow(label: 'Tanggal Lahir', value: formattedDate), // Use formattedDate here
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

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart'; // Import intl package for date formatting
// import '../widgets/detail_row.dart';
// import 'pasien_screen.dart';

// class DetailDataPasien extends StatelessWidget {
//   final Map<String, dynamic> patientData;

//   DetailDataPasien({required this.patientData});

//   @override
//   Widget build(BuildContext context) {
//     // Format date of birth here
//     String formattedDate = DateFormat('dd MMMM yyyy').format(patientData['tanggal_lahir'] as DateTime);

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(229, 57, 53, 1.0),
//         title: Text('Detail Data Pasien'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             DetailRow(label: 'Nama Lengkap', value: patientData['nama_lengkap']),
//             DetailRow(label: 'Jenis Kelamin', value: patientData['jenis_kelamin']),
//             DetailRow(label: 'Tempat Lahir', value: patientData['tempat_lahir']),
//             DetailRow(label: 'Tanggal Lahir', value: formattedDate), // Use formattedDate here
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
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pop(context);
//         },
//         child: Icon(Icons.arrow_back),
//       ),
//     );
//   }
// }
