import 'dart:io';

void main() {
print("how many fibonacci numbers ?");
  int? n9 = int.parse(stdin.readLineSync()!);
  List<int> fLoop = fWLoop(n9);
  print('using loop: $fLoop');
  List<int> fRec = fWRec(n9);
  print('using recursion: $fRec');
}
List<int> fWRec(int n9) {
  List<int> list9 = [];
  
  int fibonacci(int n) {
    if (n <= 1) {
      return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  int i = 0;
  int fib = 0;
  while (fib <= n9) {
    fib = fibonacci(i);
    if (fib <= n9) {
      list9.add(fib);
      i++;
    }
  }

  return list9;
}
List<int> fWLoop(int n9) {
  List<int> list92 = [];
  int a = 0, b = 1;
  list92.add(a);
  list92.add(b);

  while (true) {
    int next = a + b;
    if (next <= n9) {
      list92.add(next);
      a = b;
      b = next;
    } else {
      break;
    }
  }

  return list92;
}
