// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:md3_demo/presentation/themes/app_schemes.dart';

late int indexColorSchemes;

final List<ColorScheme> appColorSchemesList = [
  appLightScheme,
  appLightHCScheme,
  appDarkScheme,
  appDarkHCScheme,
];

const List<String> appThemeText = [
  'LightTheme',
  'LightHCTheme',
  "DarkTheme",
  'DarkHCTheme',
];

final List<ColorScheme> appSemanticOneColorSchemesList = [
  appLightSemanticOneScheme,
  appLightHCSemanticOneScheme,
  appDarkSemanticOneScheme,
  appDarkHCSemanticOneScheme,
];

final List<ColorScheme> appSemanticTwoColorSchemesList = [
  appLightSemanticTwoScheme,
  appLightHCSemanticTwoScheme,
  appDarkSemanticTwoScheme,
  appDarkHCSemanticTwoScheme,
];

//
// ignore: prefer-correct-identifier-length
final List<ColorScheme> appSemanticThreeColorSchemesList = [
  appLightSemanticThreeScheme,
  appLightHCSemanticThreeScheme,
  appDarkSemanticThreeScheme,
  appDarkHCSemanticThreeScheme,
];
