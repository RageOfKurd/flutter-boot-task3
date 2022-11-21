import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('AppBar')],
            ),
          ),
          body: ListView(
            children: [
              Card(Axis.horizontal, 250.5),
              Card(Axis.vertical, 500.5)
            ],
          )
          //second line
          ),
    );
  }
}

class Card extends StatelessWidget {
  Card(this.axis, this.height);
  var axis;
  var height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ListView(scrollDirection: axis, children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 30, 20, 30),
          height: 150,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  filterQuality: FilterQuality.high,
                  opacity: 0.8,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.overlay),
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://pbs.twimg.com/media/FL8BZ97XwAY3Ssk.jpg'))),
          child: const Center(
            child: Text(
              'Dogs',
              style: TextStyle(
                  shadows: [
                    Shadow(color: Colors.black87, blurRadius: 20),
                  ],
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),

        //two

        Container(
          margin: EdgeInsets.fromLTRB(10, 30, 20, 30),
          height: 150,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  filterQuality: FilterQuality.high,
                  opacity: 0.8,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.overlay),
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://webstories.khabaremi.com/wp-content/uploads/2022/09/los-10-sonidos-principales-del-gato-fa-1.jpg'))),
          child: const Center(
            child: Text(
              'Cats',
              style: TextStyle(
                  shadows: [
                    Shadow(color: Colors.black87, blurRadius: 20),
                  ],
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );
  }
}
