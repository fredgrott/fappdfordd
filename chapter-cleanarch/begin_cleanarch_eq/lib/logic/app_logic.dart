// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:begin_cleanarch_eq/logic/models/app_color_scheme_model.dart';
import 'package:begin_cleanarch_eq/presentation/themes/app_schemes.dart';
import 'package:flutter/material.dart';

class AppLogic {
  late List<AppColorSchemeModel> appThemeDataCSList;
  late List<AppColorSchemeModel> appThemeDataCSSemanticOneList;
  late List<AppColorSchemeModel> appThemeDataCSSemanticTwoList;
  //
  // ignore: prefer-correct-identifier-length
  late List<AppColorSchemeModel> appThemeDataCSSemanticThreeList;

  late Widget screenDivider;
  late SizedBox screenRowDivder;
  late SizedBox screenColDivider;
  late double screenCardwidth;
  late double screenMaxWidthConstraint;

  //
  // ignore: long-method
  void init() {
    screenDivider = const SizedBox(height: 10);
    screenRowDivder = const SizedBox(width: 10);
    screenColDivider = const SizedBox(height: 10);
    screenCardwidth = 115;
    screenMaxWidthConstraint = 400;

    appThemeDataCSList = [
      AppColorSchemeModel(
        entityId: "0",
        appColorScheme: appLightScheme,
      ),
      AppColorSchemeModel(
        entityId: "1",
        appColorScheme: appLightHCScheme,
      ),
      AppColorSchemeModel(
        entityId: "2",
        appColorScheme: appDarkScheme,
      ),
      AppColorSchemeModel(
        entityId: "3",
        appColorScheme: appDarkHCScheme,
      ),
    ];

    appThemeDataCSSemanticOneList = [
      AppColorSchemeModel(
        entityId: "0",
        appColorScheme: appLightSemanticOneScheme,
      ),
      AppColorSchemeModel(
        entityId: "1",
        appColorScheme: appLightHCSemanticOneScheme,
      ),
      AppColorSchemeModel(
        entityId: "2",
        appColorScheme: appDarkSemanticOneScheme,
      ),
      AppColorSchemeModel(
        entityId: "3",
        appColorScheme: appDarkHCSemanticOneScheme,
      ),
    ];

    appThemeDataCSSemanticTwoList = [
      AppColorSchemeModel(
        entityId: "0",
        appColorScheme: appLightSemanticTwoScheme,
      ),
      AppColorSchemeModel(
        entityId: "1",
        appColorScheme: appLightHCSemanticTwoScheme,
      ),
      AppColorSchemeModel(
        entityId: "2",
        appColorScheme: appDarkSemanticTwoScheme,
      ),
      AppColorSchemeModel(
        entityId: "3",
        appColorScheme: appDarkHCSemanticTwoScheme,
      ),
    ];

    appThemeDataCSSemanticThreeList = [
      AppColorSchemeModel(
        entityId: "0",
        appColorScheme: appLightSemanticThreeScheme,
      ),
      AppColorSchemeModel(
        entityId: "1",
        appColorScheme: appLightHCSemanticThreeScheme,
      ),
      AppColorSchemeModel(
        entityId: "2",
        appColorScheme: appDarkSemanticThreeScheme,
      ),
      AppColorSchemeModel(
        entityId: "3",
        appColorScheme: appDarkHCSemanticThreeScheme,
      ),
    ];
  }
}
