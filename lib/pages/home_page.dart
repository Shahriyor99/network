import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:network/model/emp_model.dart';
import 'package:network/model/emplist_model.dart';
import '../services/http_servic.dart';

class HomePage extends StatefulWidget {
  static const String id="HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String data="";

  void _apiPostList(){
    Network.GET(Network.API_LIST_1, Network.paramsEmpty()).then((response) => {
      print(response),
      _showResponse(response!),
    });
  }

  void _showResponse(String? response){
    EmployeeList empList = Network.ParseEmpList(response!);
    print(empList.data.first);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _apiPostList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Center(
          child: Text(""),
        ),
      ),
    );
  }
}
