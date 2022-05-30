void main(List<String> args) {
  // final p = Person();
  // p.name = "why";
  // p.age = 18;
  // p.eating();
  final p = Person("why", 18);
  print(p);
}

class Animal {
  int age = 0;

  Animal(this.age);

  void eating() {
    print("在吃东西");
  }
}

class Person extends Animal {
  String name = "";

  Person(this.name, int age) : super(age);

  @override
  void eating() {
    print("$name在吃东西");
  }

  @override
  String toString() {
    return "name:$name,age:$age";
  }
}
