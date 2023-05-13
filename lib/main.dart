import 'package:flutter/material.dart';
import 'package:partydice/FastmodePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '派對骰子'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/dice.png', width: 200, height: 200),
            const SizedBox(height: 50),  // 為圖片和按鈕之間提供空間
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FastmodePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 30),
              ),
              child: const Text('快速模式'),
            ),
            const SizedBox(height: 20),  // 為按鈕之間提供空間
            ElevatedButton(
              onPressed: () {
                // 處理按鈕點擊
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 30),
              ),
              child: const Text('遊戲模式'),
            ),
            const SizedBox(height: 20),  // 為按鈕之間提供空間
            ElevatedButton(
              onPressed: () {
                // 處理按鈕點擊
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 30),
              ),
              child: const Text('自訂義'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
