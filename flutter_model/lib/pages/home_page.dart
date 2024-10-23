import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image.dart' as img;
import 'package:flutter_drawer/models/produk.dart';


class HomePage extends StatelessWidget {
  final Faker faker = Faker();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Produk> data = List.generate(100, (index) {
      return Produk(
        "https://picsum.photos/id/$index/200/300",
        faker.food.restaurant(),
        10000 + Random().nextInt(100000),
        faker.lorem.sentence()
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Model"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return GridTile(
            child: img.Image.network(data[index].imageUrl),
            footer: Container(
              color: Colors.amber,
              child: Column(
                children: [
                  Text(data[index].nama)
                ],
              ),
            ),
            );
        },
        itemCount: data.length));
        }
}