import 'package:flutter/material.dart';

class TextCounterExample extends StatelessWidget {
  int _counter=0;
  TextCounterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Text'),),
      body: Column(
        children: [
          Text('Counter :: ${_counter}',style: TextStyle(fontSize: 30),),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            _counter++;
            print('Counter : ${_counter}');


          }, child: Text('+'))

        ],
      ),
    );
  }
}