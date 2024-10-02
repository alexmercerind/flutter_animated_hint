import 'package:animated_hint/animated_hint.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AnimationType _animationType = AnimationType.slide;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedHintTextField(
                  fixedHint: "Search",
                  hints: const ['\"Flights\"', '\"Accounts\"'],
                  animationType: _animationType,
                  onTapOutside: (_) {
                    FocusScope.of(context).unfocus();
                  },
                ),
                const SizedBox(height: 20),
                DropdownMenu<AnimationType>(
                  initialSelection: _animationType,
                  dropdownMenuEntries: AnimationType.values
                      .map(
                        (item) => DropdownMenuEntry(
                          label: item.name,
                          value: item,
                        ),
                      )
                      .toList(),
                  onSelected: (value) {
                    if (value != null) {
                      setState(() {
                        _animationType = value;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
