import 'dart:io';
Map<int, int> map = {};
int fibonacci(int n9) {
  if (n9 <= 1) {
    return n9;
  }

  if (map.containsKey(n9)) {
    return map[n9]!;
  }

  map[n9] = fibonacci(n9 - 1) + fibonacci(n9 - 2);
  return map[n9]!;
}

void main() {
 print("How many numbers?");
 int? n9 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i <= n9; i++) {
    print(fibonacci(i));
  }
}
