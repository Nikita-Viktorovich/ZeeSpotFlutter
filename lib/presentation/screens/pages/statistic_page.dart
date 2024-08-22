import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Статистика", style: Theme.of(context).textTheme.headlineLarge),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text("Подробнее"),
                    icon: Icon(Icons.arrow_forward_ios, size: 10),
                    iconAlignment: IconAlignment.end,
                  )
                ],
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(blurRadius: 24, color: Colors.black.withOpacity(0.15))],
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffF6F7FB),
                      ),
                      child: BarChart(
                        BarChartData(
                            maxY: 4,
                            borderData: FlBorderData(show: false),
                            gridData: FlGridData(show: false),
                            alignment: BarChartAlignment.spaceEvenly,
                            barGroups: [
                              generateGroupData(1, 3),
                              generateGroupData(2, 2),
                              generateGroupData(3, 1),
                              generateGroupData(4, 4),
                              generateGroupData(5, 3),
                              generateGroupData(6, 1),
                              generateGroupData(7, 3),
                            ],
                            titlesData: FlTitlesData(
                              show: true,
                              leftTitles: AxisTitles(
                                drawBelowEverything: true,
                                sideTitles: SideTitles(
                                  interval: 1,
                                  showTitles: true,
                                  reservedSize: 10,
                                  getTitlesWidget: (value, meta) {
                                    return SideTitleWidget(
                                      axisSide: meta.axisSide,
                                      fitInside: SideTitleFitInsideData(
                                        enabled: true, 
                                        axisPosition: meta.axisPosition, 
                                        parentAxisSize: meta.parentAxisSize, 
                                        distanceFromEdge: -5),
                                      space: 0,
                                      child: Text(value.toInt().toString(), textAlign: TextAlign.right, style: Theme.of(context).textTheme.headlineMedium)
                                    );
                                  },
                                ),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 25,
                                  getTitlesWidget: (value, meta) {
                                    switch (value.toInt()) {
                                      case 1:
                                        return Text('Пн', style: Theme.of(context).textTheme.headlineMedium);
                                      case 2:
                                        return Text('Вт', style: Theme.of(context).textTheme.headlineMedium);
                                      case 3:
                                        return Text('Ср', style: Theme.of(context).textTheme.headlineMedium);
                                      case 4:
                                        return Text('Чт', style: Theme.of(context).textTheme.headlineMedium);
                                      case 5:
                                        return Text('Пт', style: Theme.of(context).textTheme.headlineMedium);
                                      case 6:
                                        return Text('Сб', style: Theme.of(context).textTheme.headlineMedium);
                                      case 7:
                                        return Text('Вс', style: Theme.of(context).textTheme.headlineMedium);
                                      default:
                                        return Text('');
                                    }
                                  },
                                ),
                              ),
                              rightTitles: const AxisTitles(),
                              topTitles: const AxisTitles(),
                            )),
                        swapAnimationDuration: Duration(milliseconds: 150),
                        swapAnimationCurve: Curves.linear,
                      ))),
              Row(
                children: [
                  Text("Принятые челленджи:", style: Theme.of(context).textTheme.headlineLarge),
                ],
              ),
              Expanded(
                  child: ListView(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(blurRadius: 24, color: Colors.black.withOpacity(0.15))],
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF6F7FB),
                      ),
                      child: ListTile(
                        leading: CircularPercentIndicator(
                            radius: 14.0,
                            lineWidth: 6.0,
                            percent: 0.4,
                            progressColor: Colors.green,
                            backgroundColor: Colors.green[100]!,
                            circularStrokeCap: CircularStrokeCap.round),
                        title: Text("Пластик"),
                        titleTextStyle: Theme.of(context).textTheme.headlineSmall,
                        subtitle: Text("Шоппер"),
                        subtitleTextStyle: Theme.of(context).textTheme.headlineMedium,
                        trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      )),
                  Divider(
                    thickness: 0,
                    height: 20,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(blurRadius: 24, color: Colors.black.withOpacity(0.15))],
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF6F7FB),
                      ),
                      child: ListTile(
                        leading: CircularPercentIndicator(
                            radius: 14.0,
                            lineWidth: 6.0,
                            percent: 0.4,
                            progressColor: Colors.purple,
                            backgroundColor: Colors.purple[100]!,
                            circularStrokeCap: CircularStrokeCap.round),
                        title: Text("Пластик"),
                        titleTextStyle: Theme.of(context).textTheme.headlineSmall,
                        subtitle: Text("Шоппер"),
                        subtitleTextStyle: Theme.of(context).textTheme.headlineMedium,
                        trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      )),
                  Divider(
                    thickness: 0,
                    height: 20,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(blurRadius: 24, color: Colors.black.withOpacity(0.15))],
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF6F7FB),
                      ),
                      child: ListTile(
                        leading: CircularPercentIndicator(
                            radius: 14.0,
                            lineWidth: 6.0,
                            percent: 0.4,
                            progressColor: Colors.orange,
                            backgroundColor: Colors.orange[100]!,
                            circularStrokeCap: CircularStrokeCap.round),
                        title: Text("Пластик"),
                        titleTextStyle: Theme.of(context).textTheme.headlineSmall,
                        subtitle: Text("Шоппер"),
                        subtitleTextStyle: Theme.of(context).textTheme.headlineMedium,
                        trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      ))
                ],
              ))
            ],
          )),
    );
  }

  BarChartGroupData generateGroupData(int x, int y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(toY: y.toDouble(), width: 20),
      ],
    );
  }
}
