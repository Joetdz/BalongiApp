import 'package:flutter/material.dart';
import 'package:gg/pagebody.dart';
import 'api_manager.dart';
import 'footmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BalongiApp(),
    );
  }
}

class BalongiApp extends StatefulWidget {
  const BalongiApp({Key? key}) : super(key: key);

  @override
  State<BalongiApp> createState() => _BalongiAppState();
}

class _BalongiAppState extends State<BalongiApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Balongi',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder<List<MatchFoot>>(
          future: footApi().getAllMatches(),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              final data = snapshot.data;
              print(data);
              return pageBody(data!);
            } else if (snapshot.hasError) {
              final err = snapshot.error;

              return Container(child: Text('${err}'));
            }
            return Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 237, 23, 23),
                backgroundColor: Colors.white,
              ),
            );
          },
        ));
  }
}
