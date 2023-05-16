import 'dart:math';
import 'package:flutter/material.dart';

class RolldicePage extends StatefulWidget {
  final int itemCount;

  RolldicePage(this.itemCount);

  @override
  _RolldicePageState createState() => _RolldicePageState();
}

class _RolldicePageState extends State<RolldicePage> {
  late List<String> imageList;
  late List<String> displayList;
  final Random random = Random();
  bool isButtonDisabled = false;

  @override
  void initState() {
    super.initState();

    imageList = List.generate(6, (index) => 'assets/images/dice${index + 1}.png');

    displayList = List.generate(widget.itemCount, (index) => imageList[random.nextInt(imageList.length)]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('擲骰子'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 8.0, // 間隔
              runSpacing: 4.0, // 換行間隔
              children: displayList.map((path) {
                return Image.asset(
                  path,
                  width: 100,
                  height: 100,
                );
              }).toList(),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: isButtonDisabled
                      ? null
                      : () {
                    setState(() {
                      displayList = List.generate(
                          widget.itemCount,
                              (index) =>
                          imageList[random.nextInt(imageList.length)]);
                      isButtonDisabled = true;
                    });
                  },
                  child: const Text('丟！'),
                ),
                const SizedBox(width: 20),
                Switch(
                  value: !isButtonDisabled,
                  onChanged: (value) {
                    setState(() {
                      isButtonDisabled = !value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
