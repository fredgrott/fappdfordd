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



import 'package:begin_cleanarch_eq/logic/app_constants.dart';
import 'package:begin_cleanarch_eq/presentation/features/components/button_styles.dart';
import 'package:flutter/material.dart';

class IconToggleButtons extends StatefulWidget {
  const IconToggleButtons({super.key});

  @override
  State<IconToggleButtons> createState() => _IconToggleButtonsState();
}

class _IconToggleButtonsState extends State<IconToggleButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Standard IconButton.
            children: const <Widget>[
              IconToggleButton(isEnabled: true),
              screenColDivider,
              IconToggleButton(isEnabled: false),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // Filled IconButton.
              IconToggleButton(
                isEnabled: true,
                getDefaultStyle: enabledFilledButtonStyle,
              ),
              screenColDivider,
              IconToggleButton(
                isEnabled: false,
                getDefaultStyle: disabledFilledButtonStyle,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // Filled Tonal IconButton.
              IconToggleButton(
                isEnabled: true,
                getDefaultStyle: enabledFilledTonalButtonStyle,
              ),
              screenColDivider,
              IconToggleButton(
                isEnabled: false,
                getDefaultStyle: disabledFilledTonalButtonStyle,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // Outlined IconButton.
              IconToggleButton(
                isEnabled: true,
                getDefaultStyle: enabledOutlinedButtonStyle,
              ),
              screenColDivider,
              IconToggleButton(
                isEnabled: false,
                getDefaultStyle: disabledOutlinedButtonStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconToggleButton extends StatefulWidget {
  const IconToggleButton({
    required this.isEnabled,
    this.getDefaultStyle,
    super.key,
  });

  final bool isEnabled;
  final ButtonStyle? Function(
    bool,
    ColorScheme,
  )? getDefaultStyle;

  @override
  State<IconToggleButton> createState() => _IconToggleButtonState();
}

class _IconToggleButtonState extends State<IconToggleButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final VoidCallback? onPressed = widget.isEnabled
        ? () {
            setState(() {
              selected = !selected;
            });
          }
        : null;
    final ButtonStyle? style = widget.getDefaultStyle?.call(
      selected,
      colors,
    );

    return IconButton(
      visualDensity: VisualDensity.standard,
      isSelected: selected,
      icon: const Icon(Icons.settings_outlined),
      selectedIcon: const Icon(Icons.settings),
      onPressed: onPressed,
      style: style,
    );
  }
}
