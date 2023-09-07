import 'package:flutter/material.dart';
import '../../config/palette.dart';
import '../Aksi/Aksi_Delete.dart';
import '../Aksi/Aksi_Succes.dart';

class EditPengguna extends StatefulWidget {
  const EditPengguna({Key? key}) : super(key: key);

  @override
  _EditPenggunaState createState() => _EditPenggunaState();
}

class _EditPenggunaState extends State<EditPengguna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Edit Pengguna',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 500,
                  color: Colors.white,
                  padding: EdgeInsets.all(20),
                  child: UserTable(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UserTable extends StatelessWidget {
  Widget buildTextInput(String label, IconData? suffixIcon, String defaultValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Palette.activeColor),
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: suffixIcon != null
                ? IconButton(
              icon: Icon(suffixIcon),
              onPressed: () {
              },
            )
                : null,
          ),
          controller: TextEditingController(text: defaultValue),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 16),
          Container(
            height: 760,
            width: 440,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextInput('Nama Pengguna', null, 'Azzra Rienov'),
                buildTextInput('Nama Lengkap', null, 'Azzra Rienov Fahlivi'),
                buildTextInput('Jenis Kelamin', null, 'Perempuan'),
                buildTextInput('Email', null, 'Azzrarienov@gmail.com'),
                buildTextInput('Role', null, 'Customer'),
                buildTextInput('Kata Sandi', Icons.remove_red_eye_outlined, '**********'),
                buildTextInput('Tanggal Lahir', Icons.calendar_today, '20 - Juni - 2000'),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DialogHapus();
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      child: Text(
                        'Hapus',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DialogSukses();
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Palette.activeColor,
                      ),
                      child: Text(
                        'Simpan',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
