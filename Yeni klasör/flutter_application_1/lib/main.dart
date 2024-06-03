import 'package:flutter/material.dart';
import 'login_page.dart'; 
import 'register_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto', // Özel bir font kullanabilirsiniz
      ),
      home: LoginPage(), 
    );
  }
}
