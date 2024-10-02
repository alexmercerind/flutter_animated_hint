import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedHintTextField extends StatefulWidget {
  @override
  _AnimatedHintTextFieldState createState() => _AnimatedHintTextFieldState();
}

class _AnimatedHintTextFieldState extends State<AnimatedHintTextField> {
  final List<String> _hints = [
    'Enter your name',
    'Enter your email',
    'Enter your phone number'
  ];
  int _currentHintIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startHintAnimation();
  }

  void _startHintAnimation() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _currentHintIndex = (_currentHintIndex + 1) % _hints.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        // Using AnimatedSwitcher for the hintText animation
        hintText: null,
        hintStyle: TextStyle(color: Colors.grey),
        suffixIcon: Container(
          width: 200,
          child: AnimatedSwitcher(
            duration: Duration(seconds: 1),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(0, 1),
                  end: Offset(0, 0),
                ).animate(animation),
                child: child,
              );
            },
            child: Text(
              _hints[_currentHintIndex],
              key: ValueKey<String>(_hints[_currentHintIndex]),
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}