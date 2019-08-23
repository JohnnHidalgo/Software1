import 'package:basic/dao/peopleDAO.dart';

class People {
  int id;
  String name,number;
  bool isDeleted;


  People(this.id, this.name, this.number, this.isDeleted);

  People.fromJson(Map<String, dynamic> json) {
    this.id = json[CreatePeopleDAO.id];
    this.name = json[CreatePeopleDAO.name];
    this.number = json[CreatePeopleDAO.number];
    this.isDeleted = json[CreatePeopleDAO.isDeleted] == 1;
  }

  /*@override
  String toString() {
    return 'ID: ${id},People: Name: ${name}, Number: ${number}';
  }*/


}