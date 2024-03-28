class student {
  String name;
  String phoneNmber;

  student({required this.name, required this.phoneNmber});

  void string() {
    print("I am Flutter Developer");
  }
}

void main() {
  student student1 = student(name: "Muhisn Shah", phoneNmber: "098765435678");

  print("My name is ${student1.name}");
  print("My Phone nmuber is ${student1.phoneNmber}");
  student1.string();
}
