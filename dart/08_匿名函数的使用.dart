void main(List<String> args) {
  List<String> names = ["kobe", "james", "why", "curry"];

  for (String name in names) {
    print(name);
  }

  //直接传入的函数：匿名函数
  names.forEach((item) {
    print(item);
  });

  //如何你的函数只有一行简单的代码：箭头函数
  names.forEach((item) => print(item));
}

void printItem(value) {
  print(value);
}
