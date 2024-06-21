import 'package:flutter/material.dart';
import 'basic_animation.dart';
import 'implicit_animation.dart';
import 'transition_animation.dart';
import 'package_animation.dart';

void main() {
  runApp(const AnimationDemo());
}

class AnimationDemo extends StatelessWidget {
  const AnimationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      routes: {
        '/basic': (context) => const BasicAnimation(),
        '/implicit': (context) => const ImplicitAnimation(),
        '/transition': (context) => const FirstPage(),
        '/package': (context) => const PackageAnimation(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Demo')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Basic Animation'),
            onTap: () => Navigator.pushNamed(context, '/basic'),
          ),
          ListTile(
            title: const Text('Implicit Animation'),
            onTap: () => Navigator.pushNamed(context, '/implicit'),
          ),
          ListTile(
            title: const Text('Transition Animation'),
            onTap: () => Navigator.pushNamed(context, '/transition'),
          ),
          ListTile(
            title: const Text('Package Animation'),
            onTap: () => Navigator.pushNamed(context, '/package'),
          ),
        ],
      ),
    );
  }
}
