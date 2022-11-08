// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:sdk_way/presentation/themes/app_brand_seed_colors.dart';

// Gist: CorePalette.of gets a palette of tones based on wallpaper color
//       CorePalette.contentOf gets a palette of tones based on desktop accent color
//
// Scheme settings that could be used, copied from Flex Seed Scheme package:
//
//   hc light
//     prmary 30
//     secondary 40
//     tertiary 30
//     error 40
//     primaryContainer 95
//     secondaryContainer 95
//     tertiaryContainer 95
//     errorContainer 95
//     surfaceTint 30
//
//    hc dark
//      primary 80
//      secondary 80
//      tertiary 80
//      error 80
//      onPrimary 10
//      onSecondary 10
//      onTertiary 10
//      onError 10
//      primaryContainer 20
//      secondaryContainer 20
//      tertiaryContainer 20
//      errorContainer 20
//      onErrorContainer 90
//      surfaceTint 80
//
// see https://github.com/rydmike/flex_seed_scheme/blob/master/lib/src/flex_tones.dart

// Borrow HC settings from Flex Seed Scheme.
// CorePalette.contentOF is accent color as opposed to android corePalette

final CorePalette appCorePalette = CorePalette.of(primaryBrandKeyColor.value);


final ColorScheme appLightScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(appCorePalette.primary.get(40)),
  onPrimary: Color(appCorePalette.primary.get(100)),
  primaryContainer: Color(appCorePalette.primary.get(95)),
  onPrimaryContainer: Color(appCorePalette.primary.get(10)),
  secondary: Color(appCorePalette.secondary.get(40)),
  onSecondary: Color(appCorePalette.secondary.get(100)),
  secondaryContainer: Color(appCorePalette.secondary.get(95)),
  onSecondaryContainer: Color(appCorePalette.secondary.get(10)),
  tertiary: Color(appCorePalette.tertiary.get(40)),
  onTertiary: Color(appCorePalette.tertiary.get(100)),
  tertiaryContainer: Color(appCorePalette.tertiary.get(95)),
  onTertiaryContainer: Color(appCorePalette.tertiary.get(10)),
  error: Color(appCorePalette.error.get(40)),
  onError: Color(appCorePalette.error.get(100)),
  errorContainer: Color(appCorePalette.error.get(90)),
  onErrorContainer: Color(appCorePalette.error.get(10)),
  background: Color(appCorePalette.neutral.get(99)),
  onBackground: Color(appCorePalette.neutral.get(10)),
  surface: Color(appCorePalette.neutral.get(99)),
  onSurface: Color(appCorePalette.neutral.get(10)),
  surfaceVariant: Color(appCorePalette.neutralVariant.get(90)),
  onSurfaceVariant: Color(appCorePalette.neutralVariant.get(30)),
  outline: Color(appCorePalette.neutralVariant.get(50)),
  outlineVariant: Color(appCorePalette.neutralVariant.get(80)),
  shadow: Color(appCorePalette.neutral.get(0)),
  scrim: Color(appCorePalette.neutral.get(0)),
  inverseSurface: Color(appCorePalette.neutral.get(20)),
  onInverseSurface: Color(appCorePalette.neutral.get(95)),
  inversePrimary: Color(appCorePalette.primary.get(80)),
  surfaceTint: Color(appCorePalette.primary.get(40)),
);

final ColorScheme appLightHCScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(appCorePalette.primary.get(30)),
  onPrimary: Color(appCorePalette.primary.get(100)),
  primaryContainer: Color(appCorePalette.primary.get(90)),
  onPrimaryContainer: Color(appCorePalette.primary.get(10)),
  secondary: Color(appCorePalette.secondary.get(40)),
  onSecondary: Color(appCorePalette.secondary.get(100)),
  secondaryContainer: Color(appCorePalette.secondary.get(90)),
  onSecondaryContainer: Color(appCorePalette.secondary.get(10)),
  tertiary: Color(appCorePalette.tertiary.get(30)),
  onTertiary: Color(appCorePalette.tertiary.get(100)),
  tertiaryContainer: Color(appCorePalette.tertiary.get(90)),
  onTertiaryContainer: Color(appCorePalette.tertiary.get(10)),
  error: Color(appCorePalette.error.get(40)),
  onError: Color(appCorePalette.error.get(100)),
  errorContainer: Color(appCorePalette.error.get(95)),
  onErrorContainer: Color(appCorePalette.error.get(10)),
  background: Color(appCorePalette.neutral.get(99)),
  onBackground: Color(appCorePalette.neutral.get(10)),
  surface: Color(appCorePalette.neutral.get(99)),
  onSurface: Color(appCorePalette.neutral.get(10)),
  surfaceVariant: Color(appCorePalette.neutralVariant.get(90)),
  onSurfaceVariant: Color(appCorePalette.neutralVariant.get(30)),
  outline: Color(appCorePalette.neutralVariant.get(50)),
  outlineVariant: Color(appCorePalette.neutralVariant.get(80)),
  shadow: Color(appCorePalette.neutral.get(0)),
  scrim: Color(appCorePalette.neutral.get(0)),
  inverseSurface: Color(appCorePalette.neutral.get(20)),
  onInverseSurface: Color(appCorePalette.neutral.get(95)),
  inversePrimary: Color(appCorePalette.primary.get(80)),
  surfaceTint: Color(appCorePalette.primary.get(30)),
);

final ColorScheme appDarkScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(appCorePalette.primary.get(80)),
  onPrimary: Color(appCorePalette.primary.get(20)),
  primaryContainer: Color(appCorePalette.primary.get(30)),
  onPrimaryContainer: Color(appCorePalette.primary.get(90)),
  secondary: Color(appCorePalette.secondary.get(80)),
  onSecondary: Color(appCorePalette.secondary.get(20)),
  secondaryContainer: Color(appCorePalette.secondary.get(30)),
  onSecondaryContainer: Color(appCorePalette.secondary.get(90)),
  tertiary: Color(appCorePalette.tertiary.get(80)),
  onTertiary: Color(appCorePalette.tertiary.get(20)),
  tertiaryContainer: Color(appCorePalette.tertiary.get(30)),
  onTertiaryContainer: Color(appCorePalette.tertiary.get(90)),
  error: Color(appCorePalette.error.get(80)),
  onError: Color(appCorePalette.error.get(20)),
  errorContainer: Color(appCorePalette.error.get(30)),
  onErrorContainer: Color(appCorePalette.error.get(90)),
  background: Color(appCorePalette.neutral.get(10)),
  onBackground: Color(appCorePalette.neutral.get(90)),
  surface: Color(appCorePalette.neutral.get(10)),
  onSurface: Color(appCorePalette.neutral.get(90)),
  surfaceVariant: Color(appCorePalette.neutralVariant.get(30)),
  onSurfaceVariant: Color(appCorePalette.neutralVariant.get(80)),
  outline: Color(appCorePalette.neutralVariant.get(60)),
  outlineVariant: Color(appCorePalette.neutralVariant.get(30)),
  shadow: Color(appCorePalette.neutral.get(0)),
  scrim: Color(appCorePalette.neutral.get(0)),
  inverseSurface: Color(appCorePalette.neutral.get(90)),
  onInverseSurface: Color(appCorePalette.neutral.get(20)),
  inversePrimary: Color(appCorePalette.primary.get(40)),
  surfaceTint: Color(appCorePalette.primary.get(80)),
);

final ColorScheme appDarkHCScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(appCorePalette.primary.get(80)),
  onPrimary: Color(appCorePalette.primary.get(10)),
  primaryContainer: Color(appCorePalette.primary.get(20)),
  onPrimaryContainer: Color(appCorePalette.primary.get(90)),
  secondary: Color(appCorePalette.secondary.get(80)),
  onSecondary: Color(appCorePalette.secondary.get(10)),
  secondaryContainer: Color(appCorePalette.secondary.get(20)),
  onSecondaryContainer: Color(appCorePalette.secondary.get(90)),
  tertiary: Color(appCorePalette.tertiary.get(80)),
  onTertiary: Color(appCorePalette.tertiary.get(10)),
  tertiaryContainer: Color(appCorePalette.tertiary.get(20)),
  onTertiaryContainer: Color(appCorePalette.tertiary.get(90)),
  error: Color(appCorePalette.error.get(80)),
  onError: Color(appCorePalette.error.get(10)),
  errorContainer: Color(appCorePalette.error.get(20)),
  onErrorContainer: Color(appCorePalette.error.get(80)),
  background: Color(appCorePalette.neutral.get(10)),
  onBackground: Color(appCorePalette.neutral.get(90)),
  surface: Color(appCorePalette.neutral.get(10)),
  onSurface: Color(appCorePalette.neutral.get(90)),
  surfaceVariant: Color(appCorePalette.neutralVariant.get(30)),
  onSurfaceVariant: Color(appCorePalette.neutralVariant.get(80)),
  outline: Color(appCorePalette.neutralVariant.get(60)),
  outlineVariant: Color(appCorePalette.neutralVariant.get(30)),
  shadow: Color(appCorePalette.neutral.get(0)),
  scrim: Color(appCorePalette.neutral.get(0)),
  inverseSurface: Color(appCorePalette.neutral.get(90)),
  onInverseSurface: Color(appCorePalette.neutral.get(20)),
  inversePrimary: Color(appCorePalette.primary.get(40)),
  surfaceTint: Color(appCorePalette.primary.get(80)),
);
