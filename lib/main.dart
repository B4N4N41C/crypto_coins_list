import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              bodyMedium: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              labelSmall: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              )),
          scaffoldBackgroundColor: const Color.fromARGB(255, 15, 12, 12),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          useMaterial3: true,
          dividerColor: Colors.white10,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 15, 12, 12),
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700))),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('DS'),
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, i) => ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/bitcoin(1).svg',
                  height: 35,
                  width: 35,
                ),
                title: Text(
                  'Bitcoin',
                  style: theme.textTheme.bodyMedium,
                ),
                subtitle: Text(
                  '200000\$',
                  style: theme.textTheme.labelSmall,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
