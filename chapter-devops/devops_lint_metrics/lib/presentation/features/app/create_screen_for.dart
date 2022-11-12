// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:devops_lint_metrics/domain/entities/screen_selected.dart';
import 'package:devops_lint_metrics/presentation/features/color/color_palettes_screen.dart';
import 'package:devops_lint_metrics/presentation/features/components/component_screen.dart';
import 'package:devops_lint_metrics/presentation/features/elevation/elevation_screen.dart';
import 'package:devops_lint_metrics/presentation/features/typography/typography_screen.dart';
import 'package:flutter/material.dart';

class CreateScreenFor extends StatefulWidget {
  late final ScreenSelected screenSelected;
  late final bool showNavBarExample;

  CreateScreenFor({
    required screenSelected,
    required showNavBarExample,
  });

  @override
  State<CreateScreenFor> createState() => _CreateScreenForState();
}

class _CreateScreenForState extends State<CreateScreenFor> {
  @override
  Widget build(BuildContext context) {
    switch (widget.screenSelected) {
      case ScreenSelected.component:
        return ComponentScreen(showNavBottomBar: widget.showNavBarExample);
      case ScreenSelected.color:
        return const ColorPalettesScreen();
      case ScreenSelected.typography:
        return const TypographyScreen();
      case ScreenSelected.elevation:
        return const ElevationScreen();
      default:
        return ComponentScreen(showNavBottomBar: widget.showNavBarExample);
    }
  }
}
