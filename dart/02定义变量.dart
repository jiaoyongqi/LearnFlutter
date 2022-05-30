void main(List<String> args) {
  //1.明确的声明
  String name = "xiaoming";
  int age = 18;
  double height = 1.88;
  print(name);
  print(age);
  print(height);
  print("$name $age $height");

  print(name.runtimeType);

  //2.类型推导方式
  // message 就是字符串类型
  // var 声明类型
  var message = "Hello World";
  print(message);
  print(message.runtimeType);

  //const final
  //被const 和final修饰的变量不能被修改
  // const 必须直接赋值常量
  // final 可以通过运行时赋值
  const message1 = "Hello Dart";
  final message2 = "Hello Flutter";
  print(message1.runtimeType);
  print(message2.runtimeType);

  //const num1 = getNum(); //不支持
  final num2 = getNum();
  print(num2);

  // dynamic（动态的）
  dynamic bar = "abc";
  print(bar.runtimeType);
  bar = 123;
  print(bar);
  print(bar.runtimeType);

  int num = 123;
  num = 0x123;
  print(num);
}

int getNum() {
  return 10;
}
