void main() async {
  print(getMeSomeFood());         
  print(await getMeSomethingBetter());       
  maybeSomethingSweet().then((String value) {
    print(value);                    
  });
}
Future<String> getMeSomeFood() async {
  return "an apple";
}
Future<String> getMeSomethingBetter() async {
  return "a burger?";
}
Future<String> maybeSomethingSweet() async {
  return "a chocolate cake!!";
}
