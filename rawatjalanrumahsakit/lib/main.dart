import 'package:flutter/material.dart';
import 'package:rawatjalanrumahsakit/home.dart';
import 'package:rawatjalanrumahsakit/login.dart';
// import 'package:rawatjalanrumahsakit/homescreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      // home: Home(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginPage(),
//       // Uncomment jika Anda ingin menggunakan Navbar atau Home sebagai home screen
//       // home: Navbar(),
//       // home: Home(),
//       // routes: {
//       //   // Tambahkan rute untuk screens yang dibutuhkan
//       //   // '/menu_pasien': (context) => MenuPasien(),
//       //   // '/formulir_pasien': (context) => FormulirPasien(),
//       //   // '/detail_pasien': (context) => DetailPasienScreen(),
//       // },
//     );
//   }
// }


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Welcome(),
//     );
//   }
// }
