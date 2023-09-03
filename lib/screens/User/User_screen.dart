import 'package:flutter/material.dart';

import '../../config/palette.dart';


class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
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
              'Daftar Pengguna',
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
                    DataColumn(label: Text('Profil', style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('Nama', style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('Email', style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text('Role', style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('1')),
                        DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/boy.png'))),
                        DataCell(Text('Reynald Darren')),
                        DataCell(Text('Reynaldaren@gmail.com')),
                        DataCell(Text('Jastiper')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('2')),
                        DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/girl.png'))),
                        DataCell(Text('Rania Cantika')),
                        DataCell(Text('Raniacantika@gmail.com')),
                        DataCell(Text('Customer')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('3')),
                        DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/boy.png'))),
                        DataCell(Text('Faren Avranega')),
                        DataCell(Text('Farenavranega@gmail.com')),
                        DataCell(Text('Jastiper')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('4')),
                        DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/girl.png'))),
                        DataCell(Text('Fania Listasya')),
                        DataCell(Text('Fanialistasya@gmail.com')),
                        DataCell(Text('Customer')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('5')),
                        DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/boy.png'))),
                        DataCell(Text('Enzano Valiant')),
                        DataCell(Text('Enzanovaliant@gmail.com')),
                        DataCell(Text('Jastiper')),
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


