import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nitipajaadmin/screens/Admin/Admin_screen.dart';
import '../../../config/palette.dart';

class DialogHapus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        width: 320,
        height: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.center,
              child: Icon(
                CupertinoIcons.trash,
                color: Colors.red,
                size: 70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'telah dihapus!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Palette.TextColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'berhasil dihapus dari daftar Anda.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: Palette.activeColor,
              ),
              child: Text(
                'Tutup',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
