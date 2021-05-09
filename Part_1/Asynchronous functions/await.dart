void main() async {
  await waitForMe();
  print('It took me 5 seconds to get here');
}
Future waitForMe() async {
  print("I'm going...");
  return Future.delayed(Duration(seconds: 5), () {
    print("I'm here!");
  });
}
