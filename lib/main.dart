import 'package:flutter/material.dart';
import 'package:flutter_admin_payment/payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payment Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Payment(),
    );
  }
}
