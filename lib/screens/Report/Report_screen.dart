import 'package:flutter/material.dart';

import '../../config/palette.dart';


class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          // Search Bar
          Container(
            width: 200,
            margin: EdgeInsets.only(right: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Palette.activeColor // Ganti dengan warna yang diinginkan
                  ),
                  height: 24,
                  width: 24,
                  child: Icon(Icons.search, color: Colors.white),
                ),
              ),
              onChanged: (value) {
                // Handle onChanged event here
              },
            ),
          ),
          SizedBox(width: 16),
          // Dropdown Profil
          DropdownButton<String>(
            items: ['Logout']
                .map((String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ))
                .toList(),
            onChanged: (String? newValue) {
              // Handle onChanged event here
            },
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 1063,
                  height: 500,
                  color: Colors.white,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 420, // Adjust the height as needed
                        child: UserTable(),
                      ),
                    ],
                  ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Laporan Akun Masuk',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:DataTable(
                  columnSpacing: 120,
                  columns: [
                    DataColumn(label: Text('No', style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('Photo', style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('Nama', style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('Laporan Masuk', style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('Tindak Lanjut', style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('1')),
                        DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/boy.png'))),
                        DataCell(Text('Darren')),
                        DataCell(Text('Akun Ini Melakukan Telah Spam')),
                        DataCell(Text('Hapus Akun')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('2')),
                        DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/girl.png'))),
                        DataCell(Text('Cantika')),
                        DataCell(Text('Akun Ini Melanggar Kebijakan')),
                        DataCell(Text('Hapus Akun')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('3')),
                        DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/boy.png'))),
                        DataCell(Text('Avranega')),
                        DataCell(Text('Akun Ini Menggunakan Bahasa Kasar')),
                        DataCell(Text('Hapus Akun')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('4')),
                        DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/girl.png'))),
                        DataCell(Text('Listasya')),
                        DataCell(Text('Akun Ini Penipuan')),
                        DataCell(Text('Hapus Akun')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('5')),
                        DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/boy.png'))),
                        DataCell(Text('Valiant')),
                        DataCell(Text('Akun Ini Tidak Pantas')),
                        DataCell(Text('Hapus Akun')),
                      ],
                    ),
                  ],
                )
            ),
          ],
        )
    );
  }
}


