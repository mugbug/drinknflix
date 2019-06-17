import 'package:flutter/material.dart';

class SeriesListScreen extends StatelessWidget {
  const SeriesListScreen({
    Key key,
  }) : super(key: key);

  List<String> series() {
    return ["How I Met Your Mother", "Brooklyn 99", "Rick and Morty"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('O que vamos assistir?')),
      body: Container(
        child: ListView(
          children: series().map((serie) {
            return SerieListElement(title: serie);
          }).toList()
        ),
      ),
    );
  }
}

class SerieListElement extends StatelessWidget {
  const SerieListElement({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
          decoration: new BoxDecoration(
            border: new Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(title,
                style: new TextStyle(
                  fontSize: 20.0,
                )),
            Icon(Icons.arrow_forward_ios)
          ])),
      onTap: () {
        // Navigator.of(context).pushNamed('/game/' + challenge.id);
      },
    );
  }
}
