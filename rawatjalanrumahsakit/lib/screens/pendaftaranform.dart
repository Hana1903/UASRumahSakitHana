import 'package:flutter/material.dart';

class PendaftaranForm extends StatefulWidget {
  @override
  _PendaftaranFormState createState() => _PendaftaranFormState();
}

class _PendaftaranFormState extends State<PendaftaranForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _idPasienController = TextEditingController();
  TextEditingController _idDokterController = TextEditingController();
  TextEditingController _nomorAntrianController = TextEditingController();
  TextEditingController _tanggalController = TextEditingController();
  TextEditingController _statusController = TextEditingController();

  @override
  void dispose() {
    _idPasienController.dispose();
    _idDokterController.dispose();
    _nomorAntrianController.dispose();
    _tanggalController.dispose();
    _statusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 57, 53, 1.0),
        title: Text('Formulir Pendaftaran Pasien'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: _idPasienController,
                decoration: InputDecoration(
                  labelText: 'ID Pasien',
                  fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter ID Pasien';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _idDokterController,
                decoration: InputDecoration(
                  labelText: 'ID Dokter',
                  fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter ID Dokter';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _nomorAntrianController,
                decoration: InputDecoration(
                  labelText: 'Nomor Antrian',
                  fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Nomor Antrian';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _tanggalController,
                decoration: InputDecoration(
                  labelText: 'Tanggal',
                  fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Tanggal';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _statusController,
                decoration: InputDecoration(
                  labelText: 'Status',
                  fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Status';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('Form is valid. Submitting...');
                    print('ID Pasien: ${_idPasienController.text}');
                    print('ID Dokter: ${_idDokterController.text}');
                    print('Nomor Antrian: ${_nomorAntrianController.text}');
                    print('Tanggal: ${_tanggalController.text}');
                    print('Status: ${_statusController.text}');
                    _formKey.currentState!.reset();
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Ubah warna tombol di sini
                ),
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
