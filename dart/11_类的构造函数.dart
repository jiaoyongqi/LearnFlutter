void main(List<String> args) {
  //如果类明确提供了一个构造函数，那么Dart就不再提供默认构造函数
//   final p = Person();
//   p.name = "why";
//   p.age = 18;
//   p.eating();
  final p = Person(name: "why", age: 18);
  print("${p.name} ${p.age}");

  Map<String, dynamic> info = {"name": "kobe", "age": 30, "height": 1.98};
  final p1 = Person.fromMap(info);
  print("${p1.name} ${p1.age}");
  print(p1.toString());

  // ============= Rectangle相关=======================
  final r = Rectangle(10, 20);
  print(r);
}

class Person {
  String name = "";
  int age = 0;
  double height = 0.0;

  //改造一：将参数变成可选参数
  // Person({String name = "", int age = 0}) {
  //   this.name = name;
  //   this.age = age;
  // }

  //改造二：语法糖的写法
  Person({this.name = "", this.age = 0});

  // Dart不支持函数的重载，不能有函数名相同的两个函数
  // 命名构造函数
  Person.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
  }

  void eating() {
    print("$name在吃东西");
  }

  @override
  String toString() {
    return "name:$name,age:$age";
  }
}

class Rectangle {
  int width = 0;
  int height = 0;
  int area = 0;

  Rectangle(this.width, this.height) : area = width * height;

  @override
  String toString() {
    return "width:$width,height:$height,area:$area";
  }
}
