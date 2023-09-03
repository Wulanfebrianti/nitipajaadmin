import 'package:flutter/material.dart';

import '../../config/palette.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconTextContainer(
                  iconData: Icons.star,
                  text: 'Favorite',
                ),
                IconTextContainer(
                  iconData: Icons.shopping_cart,
                  text: 'Cart',
                ),
                IconTextContainer(
                  iconData: Icons.settings,
                  text: 'Settings',
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 699,
                  height: 694,
                  decoration: BoxDecoration(
                    color: Colors.white, // Ganti dengan warna yang diinginkan
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(20),
                  child: TableSection(),
                ),
                SizedBox(width: 20),
                JastipPopularList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IconTextContainer extends StatelessWidget {
  final IconData iconData;
  final String text;

  IconTextContainer({required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 270,
      decoration: BoxDecoration(
        color: Palette.activeColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.white,
            size: 48,
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class TableSection extends StatelessWidget {
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
            'Pesanan Terbaru',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:DataTable(
              columnSpacing: 120,
              columns: [
                DataColumn(
                  label: Container(
                    alignment: Alignment.center,
                    child: Text('Nama Barang', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                DataColumn(
                  label: Container(
                    alignment: Alignment.center,
                    child: Text('Harga / Satuan', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                DataColumn(
                  label: Container(
                    alignment: Alignment.center,
                    child: Text('Total Pesanan', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
              rows: List.generate(
                10,
                    (index) => DataRow(
                  cells: [
                    DataCell(
                      Container(
                        alignment: Alignment.center,
                        child: Text('Nasi Goreng'),
                      ),
                    ),
                    DataCell(
                      Container(
                        alignment: Alignment.center,
                        child: Text('Rp10.000'),
                      ),
                    ),
                    DataCell(
                      Container(
                        alignment: Alignment.center,
                        child: Text('99 orang'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}


class JastipPopularList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jastip Popular List',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // Implement list fetching data from Firebase Cloud Firestore API here
          // For example, use StreamBuilder or FutureBuilder
        ],
      ),
    );
  }
}
