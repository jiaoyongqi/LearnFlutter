void main(List<String> args) {
  print(sum(20, 30));
  printInfo("james");
  printInfo("kobe", 18, 1.88);

  printInfo2("why");
  printInfo2("why", age: 18);
}

int sum(int num1, int num2) {
  return num1 + num2;
}

//函数的参数分为必传参数和可选参数
// 可选参数分两种：位置可选参数和命名可选参数
//位置可选参数
void printInfo(String name, [int age = 0, double height = 0]) {
  print("$name $age $height");
}

//命名可选参数
void printInfo2(String name, {int age = 0, double height = 0}) {
  print("$name $age $height");
}
