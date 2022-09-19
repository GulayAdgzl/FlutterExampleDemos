import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
 
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          //systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.red,
          elevation: 0,
        )
      ),
     home:const LoginPage(),
      
    );
  }
}

