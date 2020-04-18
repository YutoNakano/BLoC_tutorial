import 'package:flutter/material.dart';
import 'package:cospa_meshi_flutter/models/word.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage(this.word);
  final Word word;

  static const routeName = "/favorite";

  @override
  Widget build(BuildContext context) {
    final tiles = word.items.map(
      (item){
        return new ListTile(
          title: new Text(item.name),
        );
      }
    );

    final divided = ListTile
    .divideTiles(
      context: context,
      tiles: tiles,
    )
    .toList();

    return new Scaffold(
      appBar: AppBar(title: Text("さいご-"),
      ),
      body: new ListView(children: divided),
    );
  }
}