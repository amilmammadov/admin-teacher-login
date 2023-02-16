import 'dart:io';

class Admin {
  String _username = 'amil';
  String _password = '123';

  bool login() {
    while (true) {
      stdout.write('Username: ');
      String? username = stdin.readLineSync();
      stdout.write('Password: ');
      String? password = stdin.readLineSync();
      if (username == _username && password == _password) {
        return true;
      } else {
        print('Istifadeci adi ve ya parol yanlisdir!');
      }
    }
  }
}

class AddStudent {
  var name;
  var surname;
  var age;
  var isStudent;
  AddStudent(this.name, this.surname, this.age, this.isStudent);
  String addStudent() {
    return '$name $surname - $age: ${isStudent == true ? 'telebedir' : 'telebe deyil'}';
  }
}

class ShowStudents {
  List<String> allStudents;
  ShowStudents(this.allStudents);

  void showAllStudents() {
    for (String i in allStudents) {
      print(i);
    }
  }
}
