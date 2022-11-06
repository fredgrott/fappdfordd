// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:md3demo_flexcolor/presentation/themes/app_brand_seed_colors.dart';

final ColorScheme appLightColorScheme = SeedColorScheme.fromSeeds(
  brightness: Brightness.light,
  // Brand color input.
  primaryKey: primaryBrandKeyColor,
  secondaryKey: secondaryBrandKeyColor,
  tertiaryKey: tertiaryBrandKeyColor,
  primary: primaryBrandKeyColor,

  tones: FlexTones.vivid(Brightness.light),
);

final ColorScheme appLightHCColorScheme = SeedColorScheme.fromSeeds(
  brightness: Brightness.light,
  // Brand color input.
  primaryKey: primaryBrandKeyColor,
  secondaryKey: secondaryBrandKeyColor,
  tertiaryKey: tertiaryBrandKeyColor,
  primary: primaryBrandKeyColor,
  tones: FlexTones.highContrast(Brightness.light),
);

final ColorScheme appDarkColorScheme = SeedColorScheme.fromSeeds(
  brightness: Brightness.dark,
  // Brand color input.
  primaryKey: primaryBrandKeyColor,
  secondaryKey: secondaryBrandKeyColor,
  tertiaryKey: tertiaryBrandKeyColor,
  primary: primaryBrandKeyColor,
  tones: FlexTones.vivid(Brightness.dark),
);

final ColorScheme appDarkHCColorScheme = SeedColorScheme.fromSeeds(
  brightness: Brightness.light,
  // Brand color input.
  primaryKey: primaryBrandKeyColor,
  secondaryKey: secondaryBrandKeyColor,
  tertiaryKey: tertiaryBrandKeyColor,
  primary: primaryBrandKeyColor,
  tones: FlexTones.highContrast(Brightness.dark),
);
