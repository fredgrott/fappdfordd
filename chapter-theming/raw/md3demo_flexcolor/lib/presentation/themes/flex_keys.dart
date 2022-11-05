// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:flex_color_scheme/flex_color_scheme.dart';

/// This is set up to use Key colors and use input colors for tones
/// for primary, secondary, and tertiary and keep  those as unmuted
/// brand colors.
///
/// @author Fredrick Allan Grott
const FlexKeyColors appFlexKeyColors = FlexKeyColors(
  useKeyColors: true,
  useSecondary: true,
  useTertiary: true,
  keepPrimary: true,
  keepSecondary: true,
  keepTertiary: true,
);
