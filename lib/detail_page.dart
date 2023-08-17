import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item $index"),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 300,
                child: Hero(
                  tag: "avatar-$index",
                  child: Image.network(
                    "https://picsum.photos/seed/$index/800",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: Colors.transparent,
              child: Center(
                child: Text(
                  "Item $index",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
