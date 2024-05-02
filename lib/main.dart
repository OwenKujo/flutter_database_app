import 'package:flutter/material.dart';
import 'package:flutter_database_app/screens/f_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Account App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Acccount App'),
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
          title: Text(widget.title),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FromScreen(); //Navigate to the secon page in f_screen
                }));
              },
            )
          ],
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, int index) {
            return Card(
              //Card widget
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child:FittedBox(
                    child: Text("100",style: TextStyle(color: Colors.white),),
                    )
                  ),
                title: Text("Menu"),
              ),
            );
          },
        ));
  }
}
