class Person {
  int? age;
  String? name;

  Person(int age, String name) {
    this.age = age;
    this.name = name;
  }
}

void main() {
  const Person p(age: 10,name: Karim);

  print(p.age);
}
