// splash_screen.dart

import 'dart:async';
import 'package:flutter/material.dart';
import 'chatbot.dart'; // Pastikan sesuaikan dengan nama file dan class chatbot Anda

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Tambahkan timer untuk mengarahkan ke halaman ChatbotPage setelah beberapa detik
    Timer(
      Duration(seconds: 3), // Sesuaikan durasi splash screen sesuai kebutuhan
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ChatbotPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Mengganti teks dengan gambar
        child: Image.asset(
          'lib/images/wedec-body.png', // Sesuaikan path dengan lokasi gambar Anda
          width: 200, // Sesuaikan ukuran gambar sesuai kebutuhan
          height: 200,
        ),
      ),
    );
  }
}
