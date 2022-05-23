import 'package:flutter/material.dart';
import 'package:aid_scale/pages/statistics.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState(){
    _chartData = getData();
    super.initState();
  }

  int _selectedIndex = 0;
  late List<Data> _chartData;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Center(
      child:  Column(
        children: const <Widget>[
          Text.rich(
              TextSpan(
                  text: 'Worker 1: ',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 25),
                  children: <TextSpan>[
                    TextSpan(text: 'Ahmad',
                        style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30)
                    )
                  ]

              )
          ),
          Text.rich(
              TextSpan(
                  text: 'Worker 2: ',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 25),
                  children: <TextSpan>[
                    TextSpan(text: 'Sofian',
                        style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30)
                    )
                  ]

              )
          ),
        ],
      ),
    ),
    const Text(
      'Index 2: School',
      style: optionStyle,
    ),
    const Text(
      'Index 0: Home',
      style: optionStyle,
    ),


  ];



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: option(_selectedIndex),
      floatingActionButton: FB(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.ssid_chart_outlined,),
            label: 'Statistics',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind,),
            label: 'Workers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business,),
            label: 'Admins',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront,),
            label: 'Products',
            //color: Colors.amber,
            //backgroundColor: Colors.green
          ),
        ],
        unselectedItemColor:Colors.black54 ,
        showUnselectedLabels: true,
        selectedFontSize: 15,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }


  List<Data> getData(){
    List<Data> data=[
      Data('Ahmad',12),
      Data('Sofian',20),
      Data('Ameer',8),
      Data('shahar',7),
      Data('dog',6),
      Data('cat',5),
      Data('bat',2),
    ];
    return data;
  }

  Widget FB(int index){
    if(index == 0) {
      return FloatingActionButton.extended(
        onPressed: () {

        },
        backgroundColor: Colors.blue,
        icon: Icon(Icons.search),
        label: Text('Search'),

      );
    }
    return FloatingActionButton.extended(
    onPressed: (){

    },
    backgroundColor: Colors.blue,
    icon: Icon(Icons.add),
    label: Text('Add'),

    );
  }
  Widget option(int index){
    if(index == 0){
      return Statistics();
    }
    if(index == 1){
     return workerList();
    }
    if(index == 2){
      return adminsList();
    }
    return productList();
  }

  Widget workerList(){
    return  ListView(children: <Widget>[
      Center(
          child: Text(
            'Workers',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
      DataTable(
        columns: [
          DataColumn(label: Text(
              'ID',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
          DataColumn(label: Text(
              'Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
          DataColumn(label: Text(
              'Product',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
        ],
        rows: [
          DataRow(cells: [
            DataCell(TextButton(onPressed: (){
              Navigator.pushNamed(
                  context, '/home/worker');
            }, child: Text('3331'),)),
            DataCell(Text('Stephen')),
            DataCell(Text('P1')),
          ]),
          DataRow(cells: [
            DataCell(Text('2655')),
            DataCell(Text('John')),
            DataCell(Text('P1')),
          ]),
          DataRow(cells: [
            DataCell(Text('6610')),
            DataCell(Text('Harry')),
            DataCell(Text('P2')),
          ]),
          DataRow(cells: [
            DataCell(Text('9815')),
            DataCell(Text('Peter')),
            DataCell(Text('P1')),
          ]),
        ],
      ),
    ]);
  }

  Widget adminsList(){
    return  ListView(children: <Widget>[
      const Center(
          child: Text(
            'Admins',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
      DataTable(
        columns: const [
          DataColumn(label: Text(
              'Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
          DataColumn(label: Text(
              '@',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
          DataColumn(label: Text(
              'Athurity',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('Stephen')),
            DataCell(Text('Stephen@gmail.com')),
            DataCell(Text('1')),
          ]),
          DataRow(cells: [
            DataCell(Text('John')),
            DataCell(Text('John@gmail.com')),
            DataCell(Text('1')),
          ]),
          DataRow(cells: [
            DataCell(Text('Harry')),
            DataCell(Text('Harry@gmail.com')),
            DataCell(Text('2')),
          ]),
          DataRow(cells: [
            DataCell(Text('Peter')),
            DataCell(Text('Peter@gmail.com')),
            DataCell(Text('1')),
          ]),
        ],
      ),
    ]);
  }

  Widget productList(){
    return  ListView(children: <Widget>[
      const Center(
          child: Text(
            'Products',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
      DataTable(
        columns: const [
          DataColumn(label: Text(
              'ID',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
          DataColumn(label: Text(
              'Unit',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
          DataColumn(label: Text(
              'Goal',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          )),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('32516')),
            DataCell(Text('4g')),
            DataCell(Text('20g')),
          ]),
          DataRow(cells: [
            DataCell(Text('65498')),
            DataCell(Text('10g')),
            DataCell(Text('100g')),
          ]),
          DataRow(cells: [
            DataCell(Text('95479')),
            DataCell(Text('3g')),
            DataCell(Text('60g')),
          ]),
          DataRow(cells: [
            DataCell(Text('65151')),
            DataCell(Text('100g')),
            DataCell(Text('1000g')),
          ]),
        ],
      ),
    ]);
  }

}

class Data{
  String name;
  int work;
  Data(this.name,this.work);
}

