import 'package:flutter/material.dart';
import '../../config/palette.dart';
import '../Aksi/Aksi_Delete.dart';
import '../Sunting/Sunting_Pengguna.dart';

class DetailPengguna extends StatefulWidget {
  const DetailPengguna({Key? key}) : super(key: key);

  @override
  _DetailPenggunaState createState() => _DetailPenggunaState();
}

class _DetailPenggunaState extends State<DetailPengguna> {
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
              'Detail Pengguna',
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
  Widget buildTextInput(
      String label, IconData? suffixIcon, String defaultValue, bool readOnly) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          readOnly: readOnly,
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
              onPressed: () {},
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
                buildTextInput('Nama Pengguna', null, 'Azzra Rienov', true),
                buildTextInput('Nama Lengkap', null, 'Azzra Rienov Fahlivi', true),
                buildTextInput('Jenis Kelamin', null, 'Perempuan', true),
                buildTextInput('Email', null, 'Azzrarienov@gmail.com', true),
                buildTextInput('Role', null, 'Customer', true),
                buildTextInput('Kata Sandi', Icons.remove_red_eye_outlined, '**********', true),
                buildTextInput('Tanggal Lahir', Icons.calendar_today, '20 - Juni - 2000', true),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditPengguna(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Palette.activeColor,
                      ),
                      child: Text(
                        'Edit',
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

