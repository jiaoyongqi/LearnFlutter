void main(List<String> args) {
  //1.List类型
  List<String> names = ["why", "xiaoming", "james", "why", "james"];

  List<String> newNames = [];

  for (String name in names) {
    if (!newNames.contains(name)) {
      newNames.add(name);
    }
  }
  print(newNames);

  List<String> newNames2 = List.from(Set.from(names));
  print(newNames2);
  //2.Set类型
  //应用:对List去重
  Set<int> nums = {18, 10, 30, 18};
  print(nums);
  //3.Map类型 (key/value)
  Map<String, dynamic> info = {"name": "why", "age": 18, "height": 1.88};
  print(info);
}
