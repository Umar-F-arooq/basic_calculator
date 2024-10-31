import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
CalculatorScreen({super.key});
  TextEditingController value1controller=TextEditingController();
  TextEditingController value2controller=TextEditingController();
  TextEditingController value3controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'),backgroundColor: Colors.orange,),
      body: Padding(padding: EdgeInsets.all(10),
      
        child: Column(
          children: [
            TextFormField(
              controller: value1controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Value 1',
                labelText: 'Value 1'
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: value2controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Value 2',
                labelText: 'Value 2'
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              readOnly: true,
              controller: value3controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Answer',
                labelText: 'Answer'
              ),
            ),
            SizedBox(height: 10,),
            Row(children: [
              ElevatedButton(onPressed: (){
                double num1,num2,sum;
                num1=double.parse(value1controller.text);
                num2=double.parse(value2controller.text);
                sum=num1+num2;
                value3controller.text=sum.toString();


              }, child: Text('+'))
            ],)
            

          ],
        ),
      ),
    );
  }
}