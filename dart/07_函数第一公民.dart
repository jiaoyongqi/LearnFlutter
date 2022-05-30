// 函数作为第一公民
// 函数可以作为另外一个函数的参数，也可以作为另外一个函数的返回值

void main(List<String> args) {
  test(foo);

  // 1.获取一个函数
  Function bar = getFunc();
  bar();
}

void foo() {
  print("Hello World");
}

void test(Function func) {
  func();
}

Function getFunc() {
  return foo;
}
