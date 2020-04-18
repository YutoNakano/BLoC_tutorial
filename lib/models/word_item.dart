// モデルを宣言classなので可変になっている
class WordItem {
  // コンストラクタ
  const WordItem(this.name);
  final String name;

// オーバーライドで外部からtoStringメソッドを使用すると、WordItemがもつnameに格納される
  @override
  String toString() => '$name';
}
