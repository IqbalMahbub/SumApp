import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/styel.dart';

class SumApp extends StatelessWidget {
  const SumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Sumapp",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return myHomepageUI();
  }
}
class myHomepageUI extends State<HomePage>{
  Map<String, double> FormValue={"num1":0 , "num2":0};

double total=0;

  @override
  Widget build(BuildContext context) {
    //input changed
  myInputOnChanges(InputKye,InputValue){
  setState(() {
    FormValue.update(InputKye, (value) => double.parse(InputValue));
  });
  }
  // sum functuion
  summation (){
   setState(() {
    total= FormValue['num1']! + FormValue['num1']!;
    print(total);
  });




  }

    return Scaffold(
      appBar: AppBar(title: const Text('Sum App'),),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Sum= $total",style: HeadTextStyle(),),
            const SizedBox(height:20),
           TextFormField(

             keyboardType: TextInputType.number,
             onChanged:(value){
               myInputOnChanges("num1", value);
             },
             decoration: AppInputStyle('First Number'),
           ),
            const SizedBox(height:20),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged:(value){
                  myInputOnChanges("num2", value);
              },
              decoration: AppInputStyle("Second Number"),
            ),
            const SizedBox(height:20),
            Container(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                summation();
                },
                    style: buttonStyle(),
                    child:const Text('ADD',)))

          ],
        ),
      ),
    );
  }
}

