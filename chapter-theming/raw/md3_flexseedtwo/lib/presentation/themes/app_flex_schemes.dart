// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:md3_flexseedtwo/presentation/themes/app_brand_seed_colors.dart';
import 'package:md3_flexseedtwo/presentation/themes/app_flex_tones.dart';

final ColorScheme appLightColorScheme = SeedColorScheme.fromSeeds(
  brightness: Brightness.light,
  primaryKey: primaryBrandKeyColor,
  primary: primaryBrandKeyColor,
  secondaryKey: secondaryBrandKeyColor,
  tertiaryKey: tertiaryBrandKeyColor,
  tones: appLightFlexTones,
);

final ColorScheme appLightHCColorScheme = SeedColorScheme.fromSeeds(
  brightness: Brightness.light,
  primaryKey: primaryBrandKeyColor,
  primary: primaryBrandKeyColor,
  secondaryKey: secondaryBrandKeyColor,
  tertiaryKey: tertiaryBrandKeyColor,
  tones: appLightHCFlexTones,
);

final ColorScheme appDarkColorScheme = SeedColorScheme.fromSeeds(
  brightness: Brightness.dark,
  primaryKey: primaryBrandKeyColor,
  primary: primaryBrandKeyColor,
  secondaryKey: secondaryBrandKeyColor,
  tertiaryKey: tertiaryBrandKeyColor,
  tones: appDarkFlexTones,
);

final ColorScheme appDarkHCColorScheme = SeedColorScheme.fromSeeds(
  brightness: Brightness.dark,
  primaryKey: primaryBrandKeyColor,
  primary: primaryBrandKeyColor,
  secondaryKey: secondaryBrandKeyColor,
  tertiaryKey: tertiaryBrandKeyColor,
  tones: appDarkHCFlexTones,
);
