import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  void initState(){
    _chartData = getData();
    super.initState();
  }

  int _selectedIndex = 0;
  late List<Data> _chartData;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  void _onItemTapped(int index) {
    setState(() {
      //_selectedIndex = index;
      _chartData[index].work++;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: SfCircularChart(
        title: ChartTitle(text: 'product per worker'),
        legend: Legend(isVisible: true,overflowMode: LegendItemOverflowMode.wrap),
        series: <CircularSeries>[
          RadialBarSeries<Data, String>(
            maximumValue: 22,
            dataSource: _chartData,
            xValueMapper: (Data data,_) => data.name,
            yValueMapper: (Data data,_) => data.work,
            dataLabelSettings: DataLabelSettings(isVisible: true),

          )
        ],
      ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_add,),
      //       label: 'Ahmad',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_add,),
      //       label: 'Sofian',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_add,),
      //       label: 'Admins',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_add,),
      //       label: 'Products',
      //     ),
      //   ],
      //   unselectedItemColor:Colors.black54 ,
      //   showUnselectedLabels: true,
      //   selectedFontSize: 15,
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),
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
}

class Data{
  String name;
  int work;
  Data(this.name,this.work);
}
