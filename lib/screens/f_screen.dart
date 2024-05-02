import 'package:flutter/material.dart';

class FromScreen extends StatelessWidget {
  const FromScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("2nd page")),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: new InputDecoration(labelText: "Name"),
                  autofocus: true,
                ),
                TextFormField(
                  decoration: new InputDecoration(labelText: "Number"),
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Text("Add data",style: TextStyle(color: Colors.white)), 
                  onPressed: (){
                    Navigator.pop(context);
                  }
                  )
              ],
            ),
          ),
        ));
  }
}
