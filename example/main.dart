import 'package:flutter/material.dart';

import 'package:separated_row/separated_row.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SeparatedRow',
      home: HomePage('SeparatedRow'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  const HomePage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: SeparatedRow(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              width: 1.0,
              height: 15.0,
              color: Colors.grey,
            );
          },
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.check),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
