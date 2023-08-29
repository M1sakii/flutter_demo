import 'package:flutter/material.dart';
import 'package:flutter_demo/data/datasource.dart';

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
      home: const MyHomePage(title: '小组件Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            setState(() {
              datasource[index].isExpanded = isExpanded;
            });
          },
          children: datasource.map((e) => ExpansionPanel(
            canTapOnHeader: true,
            isExpanded: e.isExpanded,
            headerBuilder: (context, isExpanded) {
              return ListTile(title: Text(e.name));
            },
            body: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final item = e.children[index];
                return ListTile(title: Text(item.name), subtitle: Text(item.desc));
              },
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemCount: e.children.length
            )
          )).toList(),
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
