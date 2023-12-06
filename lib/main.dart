// import 'package:flutter/rendering.dart';
import 'package:mwd_app/models/list.dart';
import 'package:mwd_app/pages/intro_page.dart';
import 'package:mwd_app/pages/login_page.dart';

// import 'package:mwd_app/pages/upload_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// import 'pages/listedu_page.dart';
import 'pages/menu_page.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListWaste(),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/intropage': (context) => const IntroPage(),
          '/menupage': (context) => const MenuPage(),
          '/loginpage': (context) => const LoginPage(),
        },
      ),
    );
  }
}
