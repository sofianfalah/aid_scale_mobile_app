import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    //print(await http.read(Uri.parse('https://jsonplaceholder.typicode.com/todos/1')));
  }

  @override
  void initstate(){
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
