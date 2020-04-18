import 'package:flutter/material.dart';


class EntryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '最新の記事',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: createListView(),
    );
  }
}