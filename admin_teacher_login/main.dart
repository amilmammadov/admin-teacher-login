import 'dart:io';

import 'admin.dart';
import 'teacher.dart';

void main(List<String> args) {
  List<String> students = ['amil mammadov - 22: telebedir'];

  print(
      'Sisteme xos gelmisiniz. Zehmet olmazsa statusunuzu secin! \n1. Admin \n2.Muellim');
  stdout.write('Status: ');
  String? status = stdin.readLineSync();
  switch (status) {
    case '1':
      Admin adminLogin = Admin();
      adminLogin.login();
      while (true) {
        print(
            'Yerine yetirmek istediyiniz emeliyyati secin: \n1.Umumi telebe siyahisini gor. \n2.Telebe elave et. \nSistemden cixmaq ucun y yazin!');
        stdout.write('Emeliyyat: ');
        String? operation = stdin.readLineSync();
        if (operation == '1') {
          ShowStudents showAllStudentsList = ShowStudents(students);
          showAllStudentsList.showAllStudents();
          print('*' * 60);
        } else if (operation == '2') {
          stdout.write('Ad: ');
          String? currentName = stdin.readLineSync();
          stdout.write('Soyadi: ');
          String? currentSurname = stdin.readLineSync();
          stdout.write('Yasi: ');
          int? currentAge = int.parse(stdin.readLineSync()!);
          stdout.write('Telebedir? true/false qeyd edin: ');
          var currentIsStudent = stdin.readLineSync();
          AddStudent addNew = AddStudent(
              currentName, currentSurname, currentAge, currentIsStudent);
          students.add(addNew.addStudent());
          print('*' * 60);
        } else if (operation == 'Y'.toLowerCase()) {
          break;
        }
      }
      break;

    case '2':
      Teacher teacherLogin = Teacher();
      teacherLogin.login();
      while (true) {
        print(
            'Telebe siyahisin gormek ucun x yazin! \nSistemden cixmaq ucun y yazin!');
        stdout.write('Emeliyyat: ');
        String? operation = stdin.readLineSync();
        if (operation == 'X'.toLowerCase()) {
          ShowAllStudents teacherShowOperation = ShowAllStudents(students);
          teacherShowOperation.showAllStudents();
        } else if (operation == 'Y'.toLowerCase()) {
          break;
        }
      }
  }
}
