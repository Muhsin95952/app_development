void main() {
  double result = add(a: 20, b: 88.9);
  print("the result is $result");
}

double add({required int a, required double b}) {
  double c = a + b;
  return c;
}
