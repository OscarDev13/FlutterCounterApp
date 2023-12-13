import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }
  void decrease() {
    counter--;
    setState(() { });
  }
  void reset() {
    counter = 0;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {

    // const double textSize = 40;
    const textStyle = TextStyle(fontSize: 30, color: Colors.white);

    return Scaffold(
      // Scaffold is ready to build an application
      appBar: AppBar(
        title: const Text('Counter screen'),
        elevation: 0,
        actions: const [],
      ),
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center, // principal aligment
          children: [
            const Center(
              child: Text('Numero de clicks', style: textStyle),
            ),
            Center(
              child: Text('$counter', style: textStyle),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;

  final Function decreaseFn;

  final Function resetFn;

  const CustomFloatingActions({
    super.key, required this.increaseFn,required this.decreaseFn, required this.resetFn
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          // onPressed: () {
          //   counter++;
          //   setState(() {});// it can be called inside a state of a stateful widget
          //   // print(counter);
          // },
          onPressed: () => increaseFn(),
          child:  const Center(
            child: Icon(Icons.plus_one_rounded),
          ),
        ),
        // const SizedBox(width: 20,),
        FloatingActionButton(
          // onPressed: () => setState(() => counter = 0),
          onPressed: () =>  resetFn(),
          child:  const Center(
              child: Icon(Icons.restart_alt_rounded),
          ),
        ),
        // const SizedBox(width: 20,),
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child:  const Center(
            child: Icon(Icons.exposure_minus_1_rounded),
          ),
        ),
      ],
    );
  }
}
