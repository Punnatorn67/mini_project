import 'package:flutter/material.dart';
import 'package:todo/page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf6f5ee),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 160.0),
              child: Center(
                child: SizedBox(
                  width: 200,
                  height: 150,
                  child: Image.asset('asset/LOGO.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.person),
                  labelText: 'Username',
                  labelStyle: GoogleFonts.k2d(fontSize: 15),
                  hintText: 'Enter username as abc@gmail.com',
                  hintStyle: GoogleFonts.k2d(fontSize: 12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60, top: 17.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.lock_person_sharp),
                  labelText: 'Password',
                  labelStyle: GoogleFonts.k2d(fontSize: 15),
                  hintText: 'Enter secure password',
                  hintStyle: GoogleFonts.k2d(fontSize: 12),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 60, right: 60, top: 17.0, bottom: 15.0),
              child: Row(
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        onPrimary: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: Size(270, 40)),
                    onPressed: (() {
                      Navigator.pushNamed(context, '/main');
                    }),
                    child: Text(
                      'Login',
                      style: GoogleFonts.k2d(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
