import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

 

  @override
  Widget build(BuildContext context) {

    // const double textSize = 40;
    const textStyle = TextStyle(fontSize: 30, color: Colors.white);
    int counter = 0;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // Scaffold is ready to build an application
      appBar: AppBar(
        title: const Text('Home screen'),
        elevation: 0,
        actions: const [
          
        ],
      ),
      backgroundColor: Colors.indigo,
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center, // principal aligment
          children: [
            const Center(
              child:
                  Text('Numero de clicks', style: textStyle),
            ),
            Center(
              child: Text('$counter', style: textStyle),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter ++;
          print(counter);
        },
        child: const Center(
          child: Icon(Icons.plus_one_rounded),
        ),
        // onPressed: () { 
        //   // print('hola mundo'); 
        // },
      ),
    );
  }

  // int increaseCounter() => counter++;
}
