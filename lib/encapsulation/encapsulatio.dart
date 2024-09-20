class Student{
  final String? _name;
  final int? _age;
  Student( this._name,this._age);

  ///if you want to access the vale of name and age in inother class
  String? get name=>_name;
  int? get age=>_age;
  void display(){
    print('Name:$_name, Age:$_age');
  }
}