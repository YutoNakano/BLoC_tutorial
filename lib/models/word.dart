import 'package:cospa_meshi_flutter/models/word_item.dart';
import 'dart:collection';

class Word {
  // wordItemモデルの配列をプライベートで宣言
  final List<WordItem> _items = <WordItem>[];

  Word();

  // Wordをコピーし、そのwordの_itemsの中身を_itemsに追加
  Word.clone(Word word) {
    _items.addAll(word._items);
  }

  // ゲッタで宣言して、itemCountのみ外部から読めるようにする
  int get itemCount => _items.length;

  // 普遍の_itemsリストを外部から読めるようにする
  UnmodifiableListView<WordItem> get items => UnmodifiableListView(_items);

  void add(String name) {
    _updateCountAdd(name);
  }

  void remove(String name) {
    _updateCountRemove(name);
  }

  @override
  String toString() => "$items";

  void _updateCountAdd(String name) {
    for (int i = 0; i < _items.length; i++) {
      final item = _items[i];
      // 既に追加済みなら無視
      if (name == item.name) {
        return;
      }
    }

    _items.add(WordItem(name));
  }

  void _updateCountRemove(String name) {
    for (int i = 0; i < _items.length; i++) {
      final item = _items[i];
      if (name == item.name) {
        _items.removeAt(i);
      }
    }
  }
}
