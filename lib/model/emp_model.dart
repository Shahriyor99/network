class Employee{
  int? id;
  String? name;
  int? salary;
  int? age;
  String?  image;

  Employee({required this.id, required this.name, required this.salary, required this.age, required this.image});

  Employee.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        salary = json['salary'],
        age = json['age'],
        image = json['image'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'salary': salary,
    'age': age,
    'image': image,
  };
}