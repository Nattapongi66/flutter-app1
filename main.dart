import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter

void main() {
  runApp(const MyApp()); // จุดเริ่มต้นของแอป
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Awesome App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(), // หน้าหลัก
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Constant Title'),
      ),
      body: Center(
        child: SizedBox(
          width: 500.0,
          height: 100.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10),
                right: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Image.network(
                'https://as1.ftcdn.net/v2/jpg/05/65/58/08/1000_F_565580820_T5imrR0CfzH7gIWOHfIgD3SCK45jsJ5m.jpg',
                width: 100,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FAB Pressed!');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}




 
