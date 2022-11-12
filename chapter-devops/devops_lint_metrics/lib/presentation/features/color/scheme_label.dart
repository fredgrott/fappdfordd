// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class SchemeLabel extends StatefulWidget {
  late final String brightness;

  SchemeLabel({required brightness});

  @override
  State<SchemeLabel> createState() => _SchemeLabelState();
}

class _SchemeLabelState extends State<SchemeLabel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        widget.brightness,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
