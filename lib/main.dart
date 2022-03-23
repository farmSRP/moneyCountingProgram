import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final numbers = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ]
      .map((e) => DropdownMenuItem(
            child: Text(e),
            value: e,
          ))
      .toList();

  var sumAll = 0;

  var oneThousand_000 = '0';
  var oneThousand_00 = '0';
  var oneThousand_0 = '0';
  var sumOneThousand = 0;

  var fiveHundred_000 = '0';
  var fiveHundred_00 = '0';
  var fiveHundred_0 = '0';
  var sumFiveHundred = 0;

  var oneHundred_000 = '0';
  var oneHundred_00 = '0';
  var oneHundred_0 = '0';
  var sumOneHundred = 0;

  var fifty_000 = '0';
  var fifty_00 = '0';
  var fifty_0 = '0';
  var sumFifty = 0;

  var twenty_000 = '0';
  var twenty_00 = '0';
  var twenty_0 = '0';
  var sumTwenty = 0;

  var scrap_000 = '0';
  var scrap_00 = '0';
  var scrap_0 = '0';
  var sumScrap = 0;

  void resetValue() {
    setState(() {
      oneThousand_000 = '0';
      oneThousand_00 = '0';
      oneThousand_0 = '0';
      sumOneThousand = 0;

      fiveHundred_000 = '0';
      fiveHundred_00 = '0';
      fiveHundred_0 = '0';
      sumFiveHundred = 0;

      oneHundred_000 = '0';
      oneHundred_00 = '0';
      oneHundred_0 = '0';
      sumOneHundred = 0;

      fifty_000 = '0';
      fifty_00 = '0';
      fifty_0 = '0';
      sumFifty = 0;

      twenty_000 = '0';
      twenty_00 = '0';
      twenty_0 = '0';
      sumTwenty = 0;

      scrap_000 = '0';
      scrap_00 = '0';
      scrap_0 = '0';
      sumScrap = 0;
    });
  }

  int sumAllValue() {
    return sumOneThousand +
        sumFiveHundred +
        sumOneHundred +
        sumFifty +
        sumTwenty +
        sumScrap;
  }

  void sumOneThousandDropdown() {
    sumOneThousand = (int.parse(oneThousand_000) * 100 +
            int.parse(oneThousand_00) * 10 +
            int.parse(oneThousand_0)) *
        1000;
  }

  void sumFiveHundredDropdown() {
    sumFiveHundred = (int.parse(fiveHundred_000) * 100 +
            int.parse(fiveHundred_00) * 10 +
            int.parse(fiveHundred_0)) *
        500;
  }

  void sumOneHundredDropdown() {
    sumOneHundred = (int.parse(oneHundred_000) * 100 +
            int.parse(oneHundred_00) * 10 +
            int.parse(oneHundred_0)) *
        100;
  }

  void sumFiftyDropdown() {
    sumFifty = (int.parse(fifty_000) * 100 +
            int.parse(fifty_00) * 10 +
            int.parse(fifty_0)) *
        50;
  }

  void sumTwentyDropdown() {
    sumTwenty = (int.parse(twenty_000) * 100 +
            int.parse(twenty_00) * 10 +
            int.parse(twenty_0)) *
        20;
  }

  void sumScrapDropdown() {
    sumScrap = (int.parse(scrap_000) * 100 +
        int.parse(scrap_00) * 10 +
        int.parse(scrap_0));
  }

  final formatter = intl.NumberFormat.decimalPattern();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "นับเงิน",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("นับเงิน"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      onethousandGroup(),
                      fiveHundredGroup(),
                      oneHundredGroup(),
                      fiftyGroup(),
                      twentyGroup(),
                      scrapGroup(),
                    ]),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${formatter.format(sumAllValue())}'),
                ),
                SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: resetValue, child: Text("Reset"))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget onethousandGroup() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("1000 ="),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: oneThousand_000_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: oneThousand_00_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: oneThousand_0_Dropdown(),
                ),
              ],
            ),
            showValueSumOnethousand(),
          ],
        ),
      ),
    );
  }

  Widget fiveHundredGroup() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("500 ="),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: fiveHundred_000_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: fiveHundred_00_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: fiveHundred_0_Dropdown(),
                ),
              ],
            ),
            showValueSumFiveHundred(),
          ],
        ),
      ),
    );
  }

  Widget oneHundredGroup() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("100 ="),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: oneHundred_000_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: oneHundred_00_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: oneHundred_0_Dropdown(),
                ),
              ],
            ),
            showValueSumOneHundred(),
          ],
        ),
      ),
    );
  }

  Widget fiftyGroup() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("50 ="),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: fifty_000_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: fifty_00_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: fifty_0_Dropdown(),
                ),
              ],
            ),
            showValueSumFifty(),
          ],
        ),
      ),
    );
  }

  Widget twentyGroup() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("20 ="),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: twenty_000_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: twenty_00_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: twenty_0_Dropdown(),
                ),
              ],
            ),
            showValueSumTwenty(),
          ],
        ),
      ),
    );
  }

  Widget scrapGroup() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("เศษ ="),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: scrap_000_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: scrap_00_Dropdown(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: scrap_0_Dropdown(),
                ),
              ],
            ),
            showValueSumScrap(),
          ],
        ),
      ),
    );
  }

  Widget showValueSumOnethousand() =>
      Text('${formatter.format(sumOneThousand)}');

  Widget showValueSumFiveHundred() =>
      Text('${formatter.format(sumFiveHundred)}');

  Widget showValueSumOneHundred() => Text('${formatter.format(sumOneHundred)}');

  Widget showValueSumFifty() => Text('${formatter.format(sumFifty)}');

  Widget showValueSumTwenty() => Text('${formatter.format(sumTwenty)}');

  Widget showValueSumScrap() => Text('${formatter.format(sumScrap)}');

  Widget oneThousand_000_Dropdown() => DropdownButton(
      value: oneThousand_000,
      items: numbers,
      onChanged: (value) {
        setState(() {
          oneThousand_000 = value.toString();
          sumOneThousandDropdown();
        });
      });

  Widget oneThousand_00_Dropdown() => DropdownButton(
      value: oneThousand_00,
      items: numbers,
      onChanged: (value) {
        setState(() {
          oneThousand_00 = value.toString();
          sumOneThousandDropdown();
        });
      });

  Widget oneThousand_0_Dropdown() => DropdownButton(
      value: oneThousand_0,
      items: numbers,
      onChanged: (value) {
        setState(() {
          oneThousand_0 = value.toString();
          sumOneThousandDropdown();
        });
      });

  Widget fiveHundred_000_Dropdown() => DropdownButton(
      value: fiveHundred_000,
      items: numbers,
      onChanged: (value) {
        setState(() {
          fiveHundred_000 = value.toString();
          sumFiveHundredDropdown();
        });
      });

  Widget fiveHundred_00_Dropdown() => DropdownButton(
      value: fiveHundred_00,
      items: numbers,
      onChanged: (value) {
        setState(() {
          fiveHundred_00 = value.toString();
          sumFiveHundredDropdown();
        });
      });

  Widget fiveHundred_0_Dropdown() => DropdownButton(
      value: fiveHundred_0,
      items: numbers,
      onChanged: (value) {
        setState(() {
          fiveHundred_0 = value.toString();
          sumFiveHundredDropdown();
        });
      });

  Widget oneHundred_000_Dropdown() => DropdownButton(
      value: oneHundred_000,
      items: numbers,
      onChanged: (value) {
        setState(() {
          oneHundred_000 = value.toString();
          sumOneHundredDropdown();
        });
      });

  Widget oneHundred_00_Dropdown() => DropdownButton(
      value: oneHundred_00,
      items: numbers,
      onChanged: (value) {
        setState(() {
          oneHundred_00 = value.toString();
          sumOneHundredDropdown();
        });
      });

  Widget oneHundred_0_Dropdown() => DropdownButton(
      value: oneHundred_0,
      items: numbers,
      onChanged: (value) {
        setState(() {
          oneHundred_0 = value.toString();
          sumOneHundredDropdown();
        });
      });

  Widget fifty_000_Dropdown() => DropdownButton(
      value: fifty_000,
      items: numbers,
      onChanged: (value) {
        setState(() {
          fifty_000 = value.toString();
          sumFiftyDropdown();
        });
      });

  Widget fifty_00_Dropdown() => DropdownButton(
      value: fifty_00,
      items: numbers,
      onChanged: (value) {
        setState(() {
          fifty_00 = value.toString();
          sumFiftyDropdown();
        });
      });

  Widget fifty_0_Dropdown() => DropdownButton(
      value: fifty_0,
      items: numbers,
      onChanged: (value) {
        setState(() {
          fifty_0 = value.toString();
          sumFiftyDropdown();
        });
      });

  Widget twenty_000_Dropdown() => DropdownButton(
      value: twenty_000,
      items: numbers,
      onChanged: (value) {
        setState(() {
          twenty_000 = value.toString();
          sumTwentyDropdown();
        });
      });

  Widget twenty_00_Dropdown() => DropdownButton(
      value: twenty_00,
      items: numbers,
      onChanged: (value) {
        setState(() {
          twenty_00 = value.toString();
          sumTwentyDropdown();
        });
      });

  Widget twenty_0_Dropdown() => DropdownButton(
      value: twenty_0,
      items: numbers,
      onChanged: (value) {
        setState(() {
          twenty_0 = value.toString();
          sumTwentyDropdown();
        });
      });

  Widget scrap_000_Dropdown() => DropdownButton(
      value: scrap_000,
      items: numbers,
      onChanged: (value) {
        setState(() {
          scrap_000 = value.toString();
          sumScrapDropdown();
        });
      });

  Widget scrap_00_Dropdown() => DropdownButton(
      value: scrap_00,
      items: numbers,
      onChanged: (value) {
        setState(() {
          scrap_00 = value.toString();
          sumScrapDropdown();
        });
      });

  Widget scrap_0_Dropdown() => DropdownButton(
      value: scrap_0,
      items: numbers,
      onChanged: (value) {
        setState(() {
          scrap_0 = value.toString();
          sumScrapDropdown();
        });
      });
}
