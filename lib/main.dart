
//import 'package:disenos_app/src/retos/cuadrado_animado_page.dart';
//import 'package:disenos_app/src/labs/circular_progress_page.dart';
//import 'package:disenos_app/src/pages/graficas_circulares_page.dart';
import 'package:disenos_app/src/pages/pinterest_page.dart';

// import 'package:disenos_app/src/widgets/pinterest_menu.dart';
// import 'package:disenos_app/src/pages/slideshow_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Diseños App',
      debugShowCheckedModeBanner: false,
      home: PinterestPage(),
      // home: PinterestMenu(),
    );
  }
}
