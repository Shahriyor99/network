import 'package:network/model/emp_model.dart';

class EmployeeList{
  String status;
  String message;
  List<Employee> data;

  EmployeeList.fromJson(Map<String, dynamic> json)

      : status = json['status'],
        message = json['message'],
        data = List<Employee>.from(json['data'].map((x)=>Employee.fromJson(x)));

  Map<String, dynamic> toJson() => {
    'status': status,
    'message': message,
    'data': new List<dynamic>.from(data.map((x) => x.toJson())),
  };
}