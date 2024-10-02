# Animated Hint TextField

![License](https://img.shields.io/badge/license-MIT-blue.svg) ![Version](https://img.shields.io/badge/version-1.0.0-orange.svg)

## Table of Contents

- [Description](#description)
- [Getting Started](#getting-started)
- [Installation](#installation)
- [Usage](#usage)
- [API Reference](#api-reference)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Description

The **Animated Hint TextField** package allows you to animate the hint of a TextView effortlessly. Unlike other packages, this package provides a unique way to enhance the user experience by animating the hint, making your text input fields more interactive and visually appealing.

## Getting Started

### Installation

Add the package to your Flutter project by using the following command:

```bash
flutter pub add animated_hint
```

## Usage

To use the animated hint feature, simply replace your traditional TextView with the `AnimatedHintTextField` widget.

```dart
import 'package:flutter/material.dart';
import 'package:animated_hint/animated_hint.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Animated Hint TextField Example')),
        body: Center(
          child: AnimatedHintTextField(
            fixedHint: "Search",
            hints: const ['\"Flights\"', '\"Accounts\"'],
            animationType: _animationType,
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
            },
          ),
        ),
      ),
    );
  }
}
```

## API Reference

### AnimatedHintTextField

The main class in this package.

- **Properties**:
  - `fixedHint`: This part of hint will remain fixed and will not animate
  - `hints`: List of hints to be animated
  - `animationType`: type of animation to be used for hints 
                     by default, [AnimationType.slide] will be used
  - `fixedHintTextStyle`: style for fixed hint text
                          if null, default [style] will be used
  - `hintTextStyle`: style for animated hint text
                     if null, default [style] will be used

## Contributing

We welcome contributions! If you have any ideas or improvements, feel free to create an issue or submit a pull request. 

### Steps to Contribute

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or need support, please create an issue on GitHub.

- **Author**: Dipanshu Singh
- **GitHub**: [iamdipanshusingh](https://github.com/iamdipanshusingh)
- **Email**: [me@iamdipanshus.in](mailto:me@iamdipanshus.in)
