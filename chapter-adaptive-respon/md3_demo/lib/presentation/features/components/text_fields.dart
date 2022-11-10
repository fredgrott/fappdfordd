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

// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.clear),
              labelText: 'Filled',
              hintText: 'hint text',
              helperText: 'supporting text',
              filled: true,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                width: 170,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.clear),
                    labelText: 'Filled',
                    hintText: 'hint text',
                    helperText: 'supporting text',
                    filled: true,
                    errorText: 'error text',
                  ),
                ),
              ),
              SizedBox(
                width: 170,
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.clear),
                    labelText: 'Disabled',
                    hintText: 'hint text',
                    helperText: 'supporting text',
                    filled: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.clear),
              labelText: 'Outlined',
              hintText: 'hint text',
              helperText: 'supporting text',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                width: 170,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.clear),
                    labelText: 'Outlined',
                    hintText: 'hint text',
                    helperText: 'supporting text',
                    errorText: 'error text',
                    border: OutlineInputBorder(),
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                width: 170,
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.clear),
                    labelText: 'Disabled',
                    hintText: 'hint text',
                    helperText: 'supporting text',
                    border: OutlineInputBorder(),
                    filled: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
