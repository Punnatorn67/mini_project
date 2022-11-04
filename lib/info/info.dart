import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Infopage extends StatelessWidget {
  const Infopage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Color.fromRGBO(101, 175, 133, 1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Member',
                style: GoogleFonts.k2d(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Text(
                'นางสาวพลชา นิติสิทธิชัยกุล 116310400025-7',
                style: GoogleFonts.k2d(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              Text(
                'นางสาวพิชญาภา กัณหา 116310400520-7',
                style: GoogleFonts.k2d(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              Text(
                'นายปัณณธร อ่อนแก้ว 116310462014-6',
                style: GoogleFonts.k2d(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              Text(
                'นายธนวรรศ กลิ่นนาค 116310462025-2',
                style: GoogleFonts.k2d(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
