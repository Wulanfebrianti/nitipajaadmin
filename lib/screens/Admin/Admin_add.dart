import 'package:flutter/material.dart';
import '../../config/palette.dart';
import '../Sidebar.dart';

import 'package:flutter/material.dart';
import '../../config/palette.dart';
import '../Sidebar.dart';
import 'Admin_Succes.dart';

class AdminAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150),
              Text(
                'Tambah Admin',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 35),
              Container(
                height: 475,
                width: 440,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.activeColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: 'Nama',
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.person, color: Colors.grey,), // Ganti dengan icon yang sesuai
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.activeColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: 'Email',
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.email, color: Colors.grey,),
                      ),
                    ),
                    SizedBox(height: 10), // Spasi tambahan antara Email dan Role
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.activeColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: 'Role', // Ganti dengan label yang sesuai
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.note_alt_outlined, color: Colors.grey,), // Ganti dengan icon yang sesuai
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Palette.activeColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AdminSucces();
                            },
                          );
                        },
                        child: Center(
                          child: Text(
                            'Kirim',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

