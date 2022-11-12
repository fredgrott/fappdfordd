// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:begin_ddd_eq/logic/app_constants.dart';
import 'package:begin_ddd_eq/logic/entities/screen_selected.dart';
import 'package:begin_ddd_eq/logic/models/app_color_scheme_model.dart';
import 'package:begin_ddd_eq/logic/models/app_theme_title_model.dart';
import 'package:begin_ddd_eq/presentation/themes/app_schemes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late List<AppColorSchemeModel> testColorSchemeList;
  late List<AppThemeTitleModel> testThemeTitleList;

  late double testCardWidth;
  late double testMaxWidthConstraint;

  setUpAll(() {
    testCardWidth = 115;

    testMaxWidthConstraint = 400;

    testColorSchemeList = [
      AppColorSchemeModel(
        entityId: "0",
        appColorScheme: appLightScheme,
      ),
    ];

    testThemeTitleList = [
      const AppThemeTitleModel(
        entityId: "0",
        appThemeTitle: "Light",
      ),
    ];
  });

  group(
    "Enum Tests",
    () {
      test(
        "Screen Selected",
        () async {
          expect(
            ScreenSelected.component.value,
            0,
          );

          expect(
            ScreenSelected.color.value,
            1,
          );

          expect(
            ScreenSelected.typography.value,
            2,
          );

          expect(
            ScreenSelected.elevation.value,
            3,
          );
        },
      );
    },
  );

  group(
    "Constants Tests",
    () {
      test(
        "Card Width",
        () async {
          expect(
            screenCardWidth,
            testCardWidth,
          );
        },
      );

      test(
        "Max Width Constraint",
        () async {
          expect(
            screenMaxWidthConstraint,
            testMaxWidthConstraint,
          );
        },
      );
    },
  );

  group(
    'Models Tests',
    () {
      test(
        "Color Scheme Models Tests",
        () async {
          expect(
            testColorSchemeList.first.entityId,
            "0",
          );

          expect(
            testColorSchemeList.first.appColorScheme,
            appLightScheme,
          );
        },
      );

      test(
        "Theme Title Model Test",
        () async {
          expect(
            testThemeTitleList.first.entityId,
            "0",
          );

          expect(
            testThemeTitleList.first.appThemeTitle,
            "Light",
          );
        },
      );
    },
  );
}
