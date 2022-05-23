import 'package:flutter/material.dart';

class Worker extends StatefulWidget {
  const Worker({Key? key}) : super(key: key);

  @override
  State<Worker> createState() => _WorkerState();
}

class _WorkerState extends State<Worker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Worker'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[100],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/scale.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.blueAccent[100],
            ),
            Text("Name",style: TextStyle(
              color: Colors.blueAccent[100],
              letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Stephen",style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("ID",style: TextStyle(
              color: Colors.blueAccent[100],
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("3331",style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("Language",style: TextStyle(
              color: Colors.blueAccent[100],
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Arabic",style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                //SizedBox(width: 10.0,),
                Text("Product",style: TextStyle(
                  color: Colors.blueAccent[100],
                  letterSpacing: 2.0,
                ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.build , color: Colors.blueAccent[100])),
                Text("P1",style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
