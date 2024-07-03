import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'detaildatapasien.dart';
import '../models/Pasien.dart';

class FormulirPasien extends StatefulWidget {
  @override
  _FormulirPasienState createState() => _FormulirPasienState();
}

class _FormulirPasienState extends State<FormulirPasien> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _controllerNamaLengkap = TextEditingController();
  final TextEditingController _controllerTempatLahir = TextEditingController();
  final TextEditingController _controllerNamaIbuKandung = TextEditingController();
  final TextEditingController _controllerNomorKTP = TextEditingController();
  final TextEditingController _controllerNomorKK = TextEditingController();
  final TextEditingController _controllerNomorBPJS = TextEditingController();
  final TextEditingController _controllerNomorTelepon = TextEditingController();
  final TextEditingController _controllerProvinsi = TextEditingController();
  final TextEditingController _controllerKabupatenKota = TextEditingController();
  final TextEditingController _controllerAlamat = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();

  String? _jenisKelamin;
  String? _agama;
  String? _status;
  String? _pendidikan;
  String? _pekerjaan;
  String? _golonganDarah;
  DateTime? _tanggalLahir;
  String? _tanggalLahirError;

  Future<void> _pilihTanggal(BuildContext context) async {
    final DateTime? tanggalYangDipilih = await showDatePicker(
      context: context,
      initialDate: _tanggalLahir ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (tanggalYangDipilih != null) {
      setState(() {
        _tanggalLahir = tanggalYangDipilih;
        _tanggalLahirError = null;
      });
    }
  }

  void _submitForm() {
    setState(() {
      if (_tanggalLahir == null) {
        _tanggalLahirError = 'Masukkan tanggal lahir';
      } else {
        _tanggalLahirError = null;
      }
    });

    if (_formKey.currentState!.validate() && _tanggalLahir != null) {
      Pasien pasien = Pasien(
        namaLengkap: _controllerNamaLengkap.text,
        jenisKelamin: _jenisKelamin ?? '',
        tempatLahir: _controllerTempatLahir.text,
        tanggalLahir: _tanggalLahir!,
        namaIbuKandung: _controllerNamaIbuKandung.text,
        agama: _agama ?? '',
        status: _status ?? '',
        pendidikan: _pendidikan ?? '',
        pekerjaan: _pekerjaan ?? '',
        nomorKTP: _controllerNomorKTP.text,
        nomorKK: _controllerNomorKK.text,
        nomorBPJS: _controllerNomorBPJS.text,
        nomorTelepon: _controllerNomorTelepon.text,
        provinsi: _controllerProvinsi.text,
        kabupatenKota: _controllerKabupatenKota.text,
        alamat: _controllerAlamat.text,
        golonganDarah: _golonganDarah ?? '',
        email: _controllerEmail.text,
      );

      Map<String, dynamic> patientData = {
        'nama_lengkap': pasien.namaLengkap,
        'jenis_kelamin': pasien.jenisKelamin,
        'tempat_lahir': pasien.tempatLahir,
        'tanggal_lahir': pasien.tanggalLahir,
        'nama_ibu_kandung': pasien.namaIbuKandung,
        'agama': pasien.agama,
        'status': pasien.status,
        'pendidikan': pasien.pendidikan,
        'pekerjaan': pasien.pekerjaan,
        'nomor_ktp': pasien.nomorKTP,
        'nomor_kk': pasien.nomorKK,
        'nomor_bpjs': pasien.nomorBPJS,
        'nomor_telepon': pasien.nomorTelepon,
        'provinsi': pasien.provinsi,
        'kabupaten_kota': pasien.kabupatenKota,
        'alamat': pasien.alamat,
        'golongan_darah': pasien.golonganDarah,
        'email': pasien.email,
      };

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailDataPasien(patientData: patientData),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 57, 53, 1.0),
        title: Text('Formulir Pendaftaran Pasien'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _controllerNamaLengkap,
                decoration: InputDecoration(labelText: 'Nama Lengkap'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan nama lengkap';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _controllerTempatLahir,
                decoration: InputDecoration(labelText: 'Tempat Lahir'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan tempat lahir';
                  }
                  return null;
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Tanggal Lahir'),
                subtitle: _tanggalLahir == null
                    ? Text('Pilih Tanggal')
                    : Text(DateFormat('yyyy-MM-dd').format(_tanggalLahir!)),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => _pilihTanggal(context),
              ),
              if (_tanggalLahirError != null)
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    _tanggalLahirError!,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
              TextFormField(
                controller: _controllerNamaIbuKandung,
                decoration: InputDecoration(labelText: 'Nama Ibu Kandung'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan nama ibu kandung';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                value: _jenisKelamin,
                decoration: InputDecoration(labelText: 'Jenis Kelamin'),
                items: <String>['Laki-laki', 'Perempuan'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _jenisKelamin = newValue;
                  });
                },
                validator: (value) {
                  if (_jenisKelamin == null || _jenisKelamin!.isEmpty) {
                    return 'Pilih jenis kelamin';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Agama'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan agama';
                  }
                  return null;
                },
                onChanged: (value) {
                  _agama = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Status'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan status';
                  }
                  return null;
                },
                onChanged: (value) {
                  _status = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Pendidikan'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan pendidikan';
                  }
                  return null;
                },
                onChanged: (value) {
                  _pendidikan = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Pekerjaan'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan pekerjaan';
                  }
                  return null;
                },
                onChanged: (value) {
                  _pekerjaan = value;
                },
              ),
              TextFormField(
                controller: _controllerNomorKTP,
                decoration: InputDecoration(labelText: 'Nomor KTP'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan nomor KTP';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _controllerNomorKK,
                decoration: InputDecoration(labelText: 'Nomor KK'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan nomor KK';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _controllerNomorBPJS,
                decoration: InputDecoration(labelText: 'Nomor BPJS'),
              ),
              TextFormField(
                controller: _controllerNomorTelepon,
                decoration: InputDecoration(labelText: 'Nomor Telepon'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan nomor telepon';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _controllerProvinsi,
                decoration: InputDecoration(labelText: 'Provinsi'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan provinsi';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _controllerKabupatenKota,
                decoration: InputDecoration(labelText: 'Kabupaten/Kota'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan kabupaten/kota';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _controllerAlamat,
                decoration: InputDecoration(labelText: 'Alamat'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan alamat';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Golongan Darah'),
                onChanged: (value) {
                  _golonganDarah = value;
                },
              ),
              TextFormField(
                controller: _controllerEmail,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(229, 57, 53, 1.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
