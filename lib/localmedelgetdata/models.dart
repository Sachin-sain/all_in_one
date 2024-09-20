
class Models{
  List<Student>lst=[
    Student(name: 'Sachin', rollno: '2', ),
    Student(name: 'dff', rollno: '1', ),
    Student(name: 'dgb', rollno: '12', ),
    Student(name: 'fdfr', rollno: '24', ),
    Student(name: 'fdfrg', rollno: '27', ),
    Student(name: 'dfr', rollno: '28', ),
    Student(name: 'Sachin', rollno: '20', ),
    Student(name: 'l,l,l', rollno: '21', ),
    Student(name: 'nvc', rollno: '21', ),



  ];
}




class Student{
  final String? rollno;
  final String? name;
  Student({required this.name, required this.rollno});
}