import 'package:flutter/material.dart';
import '../../config/palette.dart';
import '../Detail/Detail_Admin.dart';
import '../Detail/Detail_Laporan.dart';
import '../Detail/Detail_Pengguna.dart';
import '../Detail/Detail_Produk.dart';

class AdminAdd extends StatelessWidget {
  final List<Color> buttonColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  final List<String> buttonNames = [
    'Detail Pengguna',
    'Detail Produk',
    'Detail Laporan',
    'Detail Admin',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Widget nextPage;
                  switch (index) {
                    case 0:
                      nextPage = DetailPengguna();
                      break;
                    case 1:
                      nextPage = DetailProduk();
                      break;
                    case 2:
                      nextPage = DetailLaporan();
                      break;
                    case 3:
                      nextPage = DetailAdmin();
                      break;
                    default:
                      nextPage = DetailPengguna();
                      nextPage = DetailProduk();
                      nextPage = DetailLaporan();
                      nextPage = DetailAdmin();
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => nextPage),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: buttonColors[index],
                ),
                child: Text(buttonNames[index]),
              ),
            );
          }),
        ),
      ),
    );
  }
}
