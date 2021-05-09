void main() async {
  await waitForMe();
  print('I was waiting here :)');
}
Future waitForMe() async {
  print('Started.');
  return Future.delayed(Duration(seconds: 5), () {
    print("Now I'm done!");
  });
}
