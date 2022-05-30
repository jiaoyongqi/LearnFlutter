void main(List<String> args) {
  final runner = Runner();
  runner.running();
}

//Dart 当中，默认情况下所有的类都是接口
class Runner {
  void running() {
    print("奔跑");
  }
}

// 将一个类当作一个接口去实现
class Person implements Runner {
  @override
  void running() {
    print("人在奔跑");
  }
}
