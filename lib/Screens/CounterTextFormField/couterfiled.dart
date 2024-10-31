import 'package:flutter/material.dart';

class CounterExampleForm extends StatelessWidget {
  int _counter=0;
  TextEditingController valuecontroller=TextEditingController();
   CounterExampleForm({super.key});
  void increment()
  { 
    
    _counter++;
    valuecontroller.text=_counter.toString();
    print('Counter ${_counter}');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter TextForm'),),
      body: Padding(padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text('Counter',style: TextStyle(fontSize: 20),
              
          ),
          SizedBox(height: 5,),
          TextFormField(readOnly: true,
          controller: valuecontroller,
           decoration: InputDecoration(
            labelText: 'Value of Counter',
            border: OutlineInputBorder()),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ElevatedButton(onPressed: increment, 
                             child: Text('+',style: TextStyle(fontSize: 20),)),
              SizedBox(width: 10,),
              ElevatedButton(onPressed: (){
                valuecontroller.text="";
                _counter=0;
              }, 
              child: Text('Reset',style: TextStyle(fontSize: 20),))


            ],
          )

        ],
      ),
      
      ),
    );
  }
}