class People {
  String name,number;

  People(this.name, this.number);

  String viewPeople(){
    return 'People: {Name: ${name}, Number: ${number}';
  }

  @override
  String toString() {
    return 'People: {Name: ${name}, Number: ${number}';
  }
}