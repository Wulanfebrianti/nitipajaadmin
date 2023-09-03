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
                  width: 950,
                  height: 694,
                  decoration: BoxDecoration(
                    color: Colors.white, // Ganti dengan warna yang diinginkan
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(20),
                  child: TableSection(),
                ),
                SizedBox(width: 20),
                Container(
                  width: 300,
                  height: 694,
                  decoration: BoxDecoration(
                    color: Colors.white, // Ganti dengan warna yang diinginkan
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(20),
                  child: JastipPopularList(),
                ),
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
              columnSpacing: 250,
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
  final List<Map<String, String>> items = [
    {
      'name': 'Idgar Raka',
      'job': 'Lab Animasi',
      'image': 'assets/images/boy.png',
    },
    {
      'name': 'Yolanda Vikata',
      'job': 'Rusmart',
      'image': 'assets/images/girl.png',
    },
    {
      'name': 'Sandy Falata',
      'job': 'Lab Rpl',
      'image': 'assets/images/boy.png',
    },
    {
      'name': 'Rania Listasya',
      'job': 'Ruang Guru',
      'image': 'assets/images/girl.png',
    },
    {
      'name': 'Regantara',
      'job': 'Cafetaria Animasi',
      'image': 'assets/images/boy.png',
    },
    {
      'name': 'Revana Riyaya',
      'job': 'Ruang Gambar Dkv',
      'image': 'assets/images/girl.png',
    },
    {
      'name': 'Rendana Victor',
      'job': 'Gym Rpl',
      'image': 'assets/images/boy.png',
    },
    {
      'name': 'Santika dewi',
      'job': 'Kelas Dg',
      'image': 'assets/images/girl.png',
    },
  ];

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
            'Jastiper Populer',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                for (var item in items)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 27 ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(item['image']!),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['name']!,
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            Text(
                              item['job']!,
                              style: TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
