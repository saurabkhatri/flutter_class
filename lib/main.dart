

import 'package:flutter/material.dart';

import 'features/contacts/contact_page.dart';
import 'features/dashboard/dashboard.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,

      ),
     home: Dashboard(),
     // home: ContactPage(),

    );


  }
}




///Stackoverflow

///1. Stateless -->stless
///2. Statefull -->stful