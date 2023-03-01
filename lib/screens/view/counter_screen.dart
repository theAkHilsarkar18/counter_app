import 'package:counter_app/screens/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counterscreen extends StatefulWidget {
  const Counterscreen({Key? key}) : super(key: key);

  @override
  State<Counterscreen> createState() => _CounterscreenState();
}

class _CounterscreenState extends State<Counterscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.all_inclusive, size: 30),
          backgroundColor: Colors.cyan,
          title: Text("Counter App",
              style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.w700)),
        ),
        body: Column(
          children: [
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Consumer<CounterProvider>(
                builder: (context, value, child) => Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  height: 80,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("${value.i}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //mainAxisSize: MainAxisSize.min,

                children: [
                  FloatingActionButton(onPressed: () {
                    Provider.of<CounterProvider>(context,listen: false).add();
                  },
                    backgroundColor: Colors.cyan,
                    child: Icon(Icons.add),
                  ),

                  FloatingActionButton(onPressed: () {

                    Provider.of<CounterProvider>(context,listen: false).twoX();

                  },
                    backgroundColor: Colors.cyan,
                    child: Text("2X",style: TextStyle(fontSize: 18),)
                  ),

                  FloatingActionButton(onPressed: () {

                    Provider.of<CounterProvider>(context,listen: false).fourX();

                  },
                      backgroundColor: Colors.cyan,
                      child: Text("4X",style: TextStyle(fontSize: 18),)
                  ),




                  FloatingActionButton(onPressed: () {

                    Provider.of<CounterProvider>(context,listen: false).min();
                  },
                    backgroundColor: Colors.cyan,
                    child: Icon(Icons.remove),
                  ),


                ],
              ),

            ),

            Spacer(),
          ],
        ),
      ),
    );
  }
}
