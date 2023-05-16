import 'package:flutter/material.dart';
import 'package:partydice/RolldicePage.dart';

class FastmodePage extends StatefulWidget {
  const FastmodePage({super.key});

  @override
  _FastmodePageState createState() => _FastmodePageState();
}


class _FastmodePageState extends State<FastmodePage> {
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('選擇骰子數量'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<int>(
              value: itemCount,
              items: List.generate(9, (index) {
                return DropdownMenuItem<int>(
                  value: index + 1,
                  child: Text((index + 1).toString()),
                );
              }),
              onChanged: (newValue) {
                setState(() {
                  itemCount = newValue!;
                });
              },
            ),
            const SizedBox(height: 20),  // 這裡添加一個間隔
            SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0, // 間隔
                runSpacing: 4.0, // 換行間隔
                children: List.generate(itemCount, (index) {
                  return Image.asset(
                    'assets/images/dice1.png',
                    width: 100,
                    height: 100,
                  );
                }),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RolldicePage(itemCount)),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 30),
              ),
              child: const Text('開始'),
            ),
          ],
        ),
      ),
    );
  }
}