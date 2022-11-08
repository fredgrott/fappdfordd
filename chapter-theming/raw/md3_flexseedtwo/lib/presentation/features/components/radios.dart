// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Originally the MD3Demo code from the Flutter Samples
// experimental folder authored by the Flutter SDK team
// under BSD clause 3 license. Modifications by Fredrick
// Grott changed to the adaptive constructors for
// crossplatform functionality which pertains to such
// widgets as CircleProgressIndicator.

import 'package:flutter/material.dart';

enum Value { first, second }

class Radios extends StatefulWidget {
  const Radios({super.key});

  @override
  State<Radios> createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  Value? _value = Value.first;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Radio<Value>(
          value: Value.first,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
        Radio<Value>(
          value: Value.second,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ],
    );
  }
}
