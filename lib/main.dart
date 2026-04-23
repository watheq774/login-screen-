import 'package:flutter/material.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Navigation',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      // المكدس يبدأ بـ HomeScreen
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(20),
          ),
          child: const Text('الذهاب للتفاصيل ', style: TextStyle(fontSize: 18)),
          onPressed: () {
            // هنا نستخدم Navigator.push()
            // هذا يضيف DetailScreen إلى أعلى المكدس (Stack)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailScreen()),
            );
          },
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // سهم الرجوع يظهر تلقائياً لأننا عملنا Push
        title: const Text('Detail Screen'),
        backgroundColor: Colors.deepPurple, // لون مختلف للتوضيح
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(20),
          ),
          child: const Text('العودة ', style: TextStyle(fontSize: 18)),
          onPressed: () {
            // هنا نستخدم Navigator.pop()
            // هذا يزيل DetailScreen من المكدس ويعود للشاشة التي تحتها
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
