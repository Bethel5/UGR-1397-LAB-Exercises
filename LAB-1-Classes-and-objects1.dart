class Person {
  String name;
  int age;
  String address;


  Person(this.name, this.age, this.address);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

void main() {

  Person person1 = Person('Bethel', 20, 'summit');
  Person person2 = Person('Amen', 35, 'shola');


  print('Before modification:');
  person1.displayInfo();


  person1.age = 21;
  person1.address = '5kilo';

  print('\nAfter modification:');
  person1.displayInfo();


  print('\nInformation for the second person:');
  person2.displayInfo();
}