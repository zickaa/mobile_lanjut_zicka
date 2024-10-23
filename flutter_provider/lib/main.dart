import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/all_product.dart'; // Pastikan path benar
import 'package:provider/provider.dart';

import './screens/product_detail_screen.dart'; // Path relatif sesuai dengan struktur project
import './screens/product_overview_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(), // Menambahkan provider untuk produk
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber), // Perbaikan penulisan
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(), // Perbaikan penulisan nama class
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(), // Perbaikan penulisan nama class
        },
      ),
    );
  }
}