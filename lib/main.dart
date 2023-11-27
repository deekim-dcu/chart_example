import 'package:chart_example/bar_chart_page.dart';
import 'package:chart_example/pie_chart_page.dart';
import 'package:chart_example/radar_chart_page.dart';
import 'package:chart_example/scatter_chart_page.dart';
import 'package:flutter/material.dart';

import 'line_chart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("챠트"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text("라인 차트"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LineChartPage())),
            ),
            ElevatedButton(
              child: const Text("바 차트"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BarChartPage())),
            ),
            ElevatedButton(
              child: const Text("파이 차트"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PieChartPage())),
            ),
            ElevatedButton(
              child: const Text("레이다 차트"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RadarChartPage())),
            ),
            ElevatedButton(
              child: const Text("스캐터 차트"),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ScatterChartPage())),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
