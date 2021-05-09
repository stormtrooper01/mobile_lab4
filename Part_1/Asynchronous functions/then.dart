void main() async {
  print(nameCharacter());         
  print(await nameAnotherCharacter());       
  nameTwoMore().then((String value) {
    print(value);                    
  });
}
Future<String> nameCharacter() async {
  return "Sponge Bob";
}
Future<String> nameAnotherCharacter() async {
  return "Yoda";
}
Future<String> nameTwoMore() async {
  return "Rick and Morty!";
}
