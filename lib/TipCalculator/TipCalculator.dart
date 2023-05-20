import 'package:tipsy_calculator/TipCalculator/Result.dart';
import 'package:tipsy_calculator/model/bill.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({Key? key}) : super(key: key);

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  Bill bill = Bill(totalAmount: 0, tipAmount: 10, noOfPeople: 2);

  calculateTip(double percentage) {
    bill.tipAmount = bill.totalAmount * percentage / 100;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Tipsy")),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.red,
          elevation: 10,
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.currency_bitcoin, size: 30),
                title: Text(
                  "Per Person",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "Total",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        // child: Column(children: [
        //   TextField(
        //     onChanged: (value) => {
        //       setState(() {
        //         bill.totalAmount = double.parse(value);
        //       })
        //     },
        //     decoration: InputDecoration(labelText: "Enter Bill Amount"),
        //     keyboardType: TextInputType.number,
        //   ),
        //   const Padding(
        //     padding: EdgeInsets.all(24),
        //     child: Text("Choose Tip"),
        //   ),
        //   Wrap(
        //     spacing: 20,
        //     children: [
        //       ElevatedButton(
        //           onPressed: () {
        //             calculateTip(10);
        //           },
        //           child: Text("10%")),
        //       ElevatedButton(
        //           onPressed: () {
        //             calculateTip(15);
        //           },
        //           child: Text("15%")),
        //       ElevatedButton(
        //           onPressed: () {
        //             calculateTip(20);
        //           },
        //           child: Text("20%")),
        //       ElevatedButton(
        //           onPressed: () {
        //             calculateTip(25);
        //           },
        //           child: Text("25%")),
        //       ElevatedButton(onPressed: () {}, child: Text("Custom Tip"))
        //     ],
        //   ),
        //   const Padding(
        //     padding: EdgeInsets.all(24),
        //     child: Text("Split"),
        //   ),
        //   Row(
        //     children: [
        //       IconButton(
        //           onPressed: () => {
        //                 setState(() {
        //                   bill.noOfPeople--;
        //                 })
        //               },
        //           icon: const Icon(
        //             Icons.remove,
        //             size: 24,
        //           )),
        //       Text(bill.noOfPeople.toString()),
        //       IconButton(
        //           onPressed: () => {
        //                 setState(() {
        //                   bill.noOfPeople++;
        //                 })
        //               },
        //           icon: const Icon(
        //             Icons.add,
        //             size: 24,
        //           )),
        //     ],
        //   ),
        //   ResultTip(
        //     bill: bill,
        //   ),
        // ]

        // ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Add your code here
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Add your code here
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}