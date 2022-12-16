import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {

  List<FlSpot> dummydata1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  List<FlSpot> dummydata2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("My Chart"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    spots: dummydata1,
                    color: Colors.brown
                  ),
                  LineChartBarData(
                      spots: dummydata2
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                dummydata1 = List.generate(8, (index) {
                  return FlSpot(index.toDouble(), index * Random().nextDouble());
                });

                dummydata2 = List.generate(8, (index) {
                  return FlSpot(index.toDouble(), index * Random().nextDouble());
                });
              });
            }, child: Text("เปลี่ยนข้อมูล"),
          )
        ],
      ),
    );
  }
}
