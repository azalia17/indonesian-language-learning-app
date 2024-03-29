import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:language_app/screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Basa',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
      // initialRoute: AppPages.INITIAL,
    );
  }
}
