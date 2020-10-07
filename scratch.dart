//Asynchronous Programming
void main() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1() {
  print('Task 1 completed');
}

//Future like Promises in JS
Future task2() async {
  Duration d = Duration(seconds: 3);
  String result;
  await Future.delayed(d, () {
    result = "Thankyou";
    print('Task 2 completed');
  });

  return result;
}

void task3(String result) {
  print('Task 3 completed, $result');
}
