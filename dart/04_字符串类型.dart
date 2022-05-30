void main(List<String> args) {
  //1.字符串的定义方式
  var message1 = "Hello World";
  var message2 = 'helo Flutter';
  var message3 = '''
      abc
      cbd
      ''';
  print(message3);
  //2.字符串的拼接(${变量})
  //什么情况下可以省略{}？比如$直接跟一个变量可以省略
  //不能省略:如果{}是一个表达式
  final name = "why";
  final age = 18;
  final height = 1.88;
  print("name:$name age:$age height:$height");
  print("${name.runtimeType}");
}
