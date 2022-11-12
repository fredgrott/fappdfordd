// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:begin_ddd_eq/logic/entities/narrow_screen_width.dart';
import 'package:begin_ddd_eq/logic/entities/screen_selected.dart';
import 'package:begin_ddd_eq/logic/models/app_color_scheme_model.dart';
import 'package:begin_ddd_eq/logic/models/app_theme_title_model.dart';
import 'package:begin_ddd_eq/presentation/features/color/color_palettes_screen.dart';
import 'package:begin_ddd_eq/presentation/features/components/component_screen.dart';
import 'package:begin_ddd_eq/presentation/features/components/navigation_stuff.dart';
import 'package:begin_ddd_eq/presentation/features/elevation/elevation_screen.dart';
import 'package:begin_ddd_eq/presentation/features/typography/typography_screen.dart';
import 'package:begin_ddd_eq/presentation/themes/app_schemes.dart';
import 'package:begin_ddd_eq/presentation/themes/app_text_themes.dart';
import 'package:begin_ddd_eq/presentation/themes/semantic_colors.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int screenIndex = ScreenSelected.component.value;

  int themeSelected = 0;

  final appThemeTitleList = [
    const AppThemeTitleModel(
      entityId: "0", 
      appThemeTitle: "Light",),
    const AppThemeTitleModel(
      entityId: "1", appThemeTitle: "LightHighContrast",),
    const AppThemeTitleModel(entityId: "2", appThemeTitle: "Dark",),
    const AppThemeTitleModel(entityId: "3", appThemeTitle: "DarkHighContrast",),

  ];

  final appThemeDataCSList = [
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

  final appThemeDataCSSemanticOneList = [
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

  final appThemeDataCSSemanticTwoList = [
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

  //
  // ignore: prefer-correct-identifier-length
  final appThemeDataCSSemanticThreeList = [
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

  late ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material 3',
      themeMode: ThemeMode.light,
      theme: themeData,
      home: LayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          if (constraints.maxWidth < narrowScreenWidthThreshold) {
            return Scaffold(
              appBar: createAppBar(),
              body: Row(
                children: <Widget>[
                  createScreenFor(ScreenSelected.values[screenIndex], false),
                ],
              ),
              bottomNavigationBar: NavigationBars(
                onSelectItem: handleScreenChanged,
                selectedIndex: screenIndex,
                isExampleBar: false,
              ),
            );
          } else {
            return Scaffold(
              appBar: createAppBar(),
              body: SafeArea(
                bottom: false,
                top: false,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: NavigationRailSection(
                        onSelectItem: handleScreenChanged,
                        selectedIndex: screenIndex,
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 1,
                      width: 1,
                    ),
                    createScreenFor(ScreenSelected.values[screenIndex], true),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  @override
  dynamic initState() {
    super.initState();
    themeData = updateThemes(
      themeSelected,
    );
  }

  void handleScreenChanged(int screenSelected) {
    setState(() {
      screenIndex = screenSelected;
    });
  }

  void handleSelect(int value) {
    setState(() {
      themeSelected = value;

      themeData = updateThemes(
        themeSelected,
      );
    });
  }
  //
  // ignore: long-method
  ThemeData updateThemes(
    int themeSelectedMode,
  ) {
    return ThemeData(
      colorScheme: appThemeDataCSList[themeSelectedMode].appColorScheme,
      brightness:
          appThemeDataCSList[themeSelectedMode].appColorScheme.brightness,
      useMaterial3: true,
      textTheme: selectTextTheme(themeSelectedMode),
      primaryTextTheme: selectTextTheme(themeSelectedMode),
      extensions: [
        
        SemanticColors(
          semanticThree: appThemeDataCSSemanticThreeList[themeSelectedMode]
              .appColorScheme
              .primary,
          onSemanticThree: appThemeDataCSSemanticThreeList[themeSelectedMode]
              .appColorScheme
              .onPrimary,
          semanticContainerThree:
              appThemeDataCSSemanticThreeList[themeSelectedMode]
                  .appColorScheme
                  .primaryContainer,
          onSemanticContainerThree:
              appThemeDataCSSemanticThreeList[themeSelectedMode]
                  .appColorScheme
                  .onPrimaryContainer,
          semanticTwo: appThemeDataCSSemanticTwoList[themeSelectedMode]
              .appColorScheme
              .primary,
          onSemanticTwo: appThemeDataCSSemanticTwoList[themeSelectedMode]
              .appColorScheme
              .onPrimary,
          semanticContainerTwo: appThemeDataCSSemanticTwoList[themeSelectedMode]
              .appColorScheme
              .primaryContainer,
          onSemanticContainerTwo:
              appThemeDataCSSemanticTwoList[themeSelectedMode]
                  .appColorScheme
                  .onPrimaryContainer,
          semanticOne: appThemeDataCSSemanticOneList[themeSelectedMode]
              .appColorScheme
              .primary,
          onSemanticOne: appThemeDataCSSemanticOneList[themeSelectedMode]
              .appColorScheme
              .onPrimary,
          semanticContainerOne: appThemeDataCSSemanticOneList[themeSelectedMode]
              .appColorScheme
              .primaryContainer,
          onSemanticContainerOne:
              appThemeDataCSSemanticOneList[themeSelectedMode]
                  .appColorScheme
                  .onPrimaryContainer,
        ),
      ],
    );
  }

  TextTheme selectTextTheme(int themeSelectedMyMode) {
    late TextTheme myTextTheme;

    if (themeSelectedMyMode == 0) {
      myTextTheme = appLightTextTheme;
    }
    if (themeSelectedMyMode == 1) {
      myTextTheme = appLightTextTheme;
    }
    if (themeSelectedMyMode == 2) {
      myTextTheme = appDarkTextTheme;
    }
    if (themeSelectedMyMode == 3) {
      myTextTheme = appDarkTextTheme;
    }

    return myTextTheme;
  }

  Widget createScreenFor(
    ScreenSelected screenSelected,
    bool showNavBarExample,
  ) {
    switch (screenSelected) {
      case ScreenSelected.component:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
      case ScreenSelected.color:
        return const ColorPalettesScreen();
      case ScreenSelected.typography:
        return const TypographyScreen();
      case ScreenSelected.elevation:
        return const ElevationScreen();
      default:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
    }
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: const Text('Material 3'),
      actions: [
        PopupMenuButton(
          icon: const Icon(Icons.more_vert),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          //
          // ignore: prefer-extracting-callbacks
          itemBuilder: (context) {
            return List.generate(
              appThemeDataCSList.length,
              //
              // ignore: prefer-extracting-callbacks
              (index) {
                return PopupMenuItem(
                  value: index,
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          index == themeSelected
                              ? Icons.color_lens
                              : Icons.color_lens_outlined,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(appThemeTitleList[index].appThemeTitle),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          onSelected: handleSelect,
          tooltip: "Choose Theme",
        ),
      ],
    );
  }
}
