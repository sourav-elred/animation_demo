import 'package:flutter/material.dart';

class BasicAnimation extends StatefulWidget {
  const BasicAnimation({super.key});

  @override
  BasicAnimationState createState() => BasicAnimationState();
}

class BasicAnimationState extends State<BasicAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic Animation')),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
