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
import 'package:sdk_way/domain/entities/divider.dart';

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          FloatingActionButton.small(
            //
            // ignore: no-empty-block
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          rowDivider,
          FloatingActionButton(
            //
            // ignore: no-empty-block
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          rowDivider,
          FloatingActionButton.extended(
            //
            // ignore: no-empty-block
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Create'),
          ),
          rowDivider,
          FloatingActionButton.large(
            //
            // ignore: no-empty-block
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
