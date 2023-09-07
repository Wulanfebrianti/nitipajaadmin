import 'package:flutter/material.dart';
import '../../config/palette.dart';
import '../Aksi/Aksi_Delete.dart';
import '../Sunting/Sunting_Produk.dart';

class DetailProduk extends StatefulWidget {
  const DetailProduk({Key? key}) : super(key: key);

  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Detail Produk',
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
                // Handle suffix icon press
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          Center(
            child: Container(
              height: 130,
              width: 130,
              child: Image.asset(
                'assets/images/food.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ikan Goreng',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Rp10,000.00',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Rp15,000.00',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Rp20,000.00',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.card_travel, color: Colors.black),
              SizedBox(width: 4),
              Text(
                '2 pesanan',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Icon(Icons.location_on_outlined, color: Colors.black),
              SizedBox(width: 4),
              Text(
                'studio animasi',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
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
                      builder: (context) => EditProduk(),
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
        ],
      ),
    );
  }
}
