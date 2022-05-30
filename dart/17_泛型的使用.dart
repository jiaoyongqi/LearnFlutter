void main(List<String> args) {
  Location l1 = Location<int>(10, 20);
  Location l2 = Location<double>(10.1, 10.2);
  Location l3 = Location<String>("aaa", "bbb");

  List<int> nums = [123, 222, 333];
  getFirst(nums);

  List<String> names = ["why", "james", "kobe"];
  getFirst(names);
}

getFirst<T>(List<T> list) {
  print(list[0]);
  return list[0];
}

class Location<T> {
  T x;
  T y;

  Location(this.x, this.y);
}
