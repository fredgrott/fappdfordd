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




import 'package:begin_ddd_eq/logic/app_constants.dart';
import 'package:begin_ddd_eq/presentation/features/components/component_screen.dart';
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      children: const <Widget>[
        ButtonsWithoutIcon(isDisabled: false),
        screenRowDivider,
        ButtonsWithIcon(),
        screenRowDivider,
        ButtonsWithoutIcon(isDisabled: true),
      ],
    );
  }
}

class ButtonsWithoutIcon extends StatelessWidget {
  final bool isDisabled;

  const ButtonsWithoutIcon({
    super.key,
    required this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            onPressed: handlePressed(
              context,
              isDisabled,
              'ElevatedButton',
            ),
            child: const Text('Elevated'),
          ),
          screenColDivider,
          FilledButton(
            onPressed: handlePressed(
              context,
              isDisabled,
              'FilledButton',
            ),
            child: const Text('Filled'),
          ),
          screenColDivider,
          FilledButton.tonal(
            onPressed: handlePressed(
              context,
              isDisabled,
              'FilledTonalButton',
            ),
            child: const Text('Filled Tonal'),
          ),
          screenColDivider,
          OutlinedButton(
            onPressed: handlePressed(
              context,
              isDisabled,
              'OutlinedButton',
            ),
            child: const Text('Outlined'),
          ),
          screenColDivider,
          TextButton(
            onPressed: handlePressed(
              context,
              isDisabled,
              'TextButton',
            ),
            child: const Text('Text'),
          ),
        ],
      ),
    );
  }
}

class ButtonsWithIcon extends StatelessWidget {
  const ButtonsWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton.icon(
            onPressed: handlePressed(
              context,
              false,
              'ElevatedButton with Icon',
            ),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
          screenColDivider,
          FilledButton.icon(
            onPressed: handlePressed(
              context,
              false,
              'FilledButton with Icon',
            ),
            label: const Text('Icon'),
            icon: const Icon(Icons.add),
          ),
          screenColDivider,
          FilledButton.tonalIcon(
            onPressed: handlePressed(
              context,
              false,
              'FilledTonalButton with Icon',
            ),
            label: const Text('Icon'),
            icon: const Icon(Icons.add),
          ),
          screenColDivider,
          OutlinedButton.icon(
            onPressed: handlePressed(
              context,
              false,
              'OutlinedButton with Icon',
            ),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
          screenColDivider,
          TextButton.icon(
            onPressed: handlePressed(
              context,
              false,
              'TextButton with Icon',
            ),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
        ],
      ),
    );
  }
}
