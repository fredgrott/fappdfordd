// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:devops_lint_metrics/presentation/features/color/color_palettes_screen.dart';
import 'package:flutter/material.dart';

class SchemeView extends StatefulWidget {
  late final ThemeData theme;

  SchemeView({required theme});

  @override
  State<SchemeView> createState() => _SchemeView();
}

class _SchemeView extends State<SchemeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ColorSchemeView(
        colorScheme: widget.theme.colorScheme,
      ),
    );
  }
}
