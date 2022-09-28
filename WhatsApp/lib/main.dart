import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:screens/layout/homeScreen.dart';
List<CameraDescription> ?cameras;
void main()  {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 25, 193, 112),
          titleTextStyle: TextStyle(
            fontSize: 25.0,
            color: Color.fromARGB(199, 255, 255, 255),
          ),
        ),
        primarySwatch: Colors.green,
      ),
      home: const whatsApp(),
    );
  }
}
