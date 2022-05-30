void main(List<String> args) {
  var name = null;
  name ??= "123";
  print(name);

  var temp = null;
  var name1 = temp ?? "james";
  print(name1);
}
