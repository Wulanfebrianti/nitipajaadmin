import 'package:flutter/material.dart';
import 'package:nitipajaadmin/screens/Admin/Admin_add.dart';

import '../../config/palette.dart';


class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
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
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: (){
                showDialog(context: context, builder: (context) => AdminAdd(),);
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: 70,
                  right: 70,
                  bottom: 10,
                  top: 10,
                ),
                decoration: BoxDecoration(
                  color: Palette.activeColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Tambah Admin',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
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
                      Container(
                        width: double.infinity,
                        height: 350, // Adjust the height as needed
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
        SizedBox(height: 16),
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
          child: DataTable(
            columnSpacing: 70,
            columns: [
              DataColumn(label: Text('No', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Profil', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Nama', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Email', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Role', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Aksi', style: TextStyle(fontWeight: FontWeight.bold))),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/boy.png'))),
                  DataCell(Text('Alyansyah')),
                  DataCell(Text('Alyansyah@gmail.com')),
                  DataCell(Text('Ngedata User')),
                  DataCell(Text('Kirim Email')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('2')),
                  DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/girl.png'))),
                  DataCell(Text('Tania Cantika')),
                  DataCell(Text('Taniacantika@gmail.com')),
                  DataCell(Text('Posting Poster')),
                  DataCell(Text('Kirim Email')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('3')),
                  DataCell(CircleAvatar(backgroundImage: AssetImage('assets/images/boy.png'))),
                  DataCell(Text('Faren Avranega')),
                  DataCell(Text('Farenavranega@gmail.com')),
                  DataCell(Text('Laporkan User')),
                  DataCell(Text('Kirim Email')),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}


