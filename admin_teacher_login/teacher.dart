import 'dart:io';

class Teacher {
  String _username = 'ramin';
  String _password = '12345';

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

class ShowAllStudents {
  List<String> allStudents;
  ShowAllStudents(this.allStudents);

  void showAllStudents() {
    for (String i in allStudents) {
      print(i);
    }
  }
}
