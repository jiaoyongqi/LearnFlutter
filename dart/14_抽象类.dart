/*
void main(List<String> args) {}

/** 
 * 什么是抽象方法？ 只有方法的定义，没有方法的实现
 * 抽象类不能够被实例化
 * 抽象类中可以定义抽象方法
 * 抽象类的左右在哪里？ 多态的实现
 */
abstract class Person {
  void eating();
}

// 普通的类中不能定义抽象方法
class Dog {

}
*/

void main(List<String> args) {
  Circle c1 = Circle(10);
  Circle c2 = Circle(20);
  calcuArea(c1);
  calcuArea(c2);
}

abstract class Shape {
  //定义成抽象方法
  getArea();
}

class Circle extends Shape {
  double r;
  Circle(this.r);
  double getArea() {
    return r * r * 3.14;
  }
}

// 计算面积的方法
// 计算矩形的面积
// 计算圆形的面积
void calcuArea(Shape s) {
  print(s.getArea());
}
