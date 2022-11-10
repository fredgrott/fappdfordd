// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:begin_cleanarch_eq/logic/entities/color_schemes_list.dart';
import 'package:begin_cleanarch_eq/logic/entities/narrow_screen_width.dart';
import 'package:begin_cleanarch_eq/logic/entities/screen_selected.dart';
import 'package:begin_cleanarch_eq/presentation/features/color/color_palettes_screen.dart';
import 'package:begin_cleanarch_eq/presentation/features/components/component_screen.dart';
import 'package:begin_cleanarch_eq/presentation/features/components/navigation_stuff.dart';
import 'package:begin_cleanarch_eq/presentation/features/elevation/elevation_screen.dart';
import 'package:begin_cleanarch_eq/presentation/features/typography/typography_screen.dart';
import 'package:begin_cleanarch_eq/presentation/themes/app_text_themes.dart';
import 'package:begin_cleanarch_eq/presentation/themes/semantic_colors.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int screenIndex = ScreenSelected.component.value;

  int themeSelected = 0;

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

  ThemeData updateThemes(
    int themeSelectedMode,
  ) {
    return ThemeData(
      colorScheme: appColorSchemesList[themeSelectedMode],
      brightness: appColorSchemesList[themeSelectedMode].brightness,
      useMaterial3: true,
      textTheme: selectTextTheme(themeSelectedMode),
      primaryTextTheme: selectTextTheme(themeSelectedMode),
      extensions: [SemanticColors(
        semanticThree: appSemanticThreeColorSchemesList[themeSelectedMode].primary, 
        onSemanticThree: appSemanticThreeColorSchemesList[themeSelectedMode].onPrimary, 
        semanticContainerThree: appSemanticThreeColorSchemesList[themeSelectedMode].primaryContainer, 
        onSemanticContainerThree: appSemanticThreeColorSchemesList[themeSelectedMode].onPrimaryContainer, 
        semanticTwo: appSemanticTwoColorSchemesList[themeSelectedMode].primary, 
        onSemanticTwo: appSemanticTwoColorSchemesList[themeSelectedMode].onPrimary, 
        semanticContainerTwo: appSemanticTwoColorSchemesList[themeSelectedMode].primaryContainer, 
        onSemanticContainerTwo: appSemanticTwoColorSchemesList[themeSelectedMode].onPrimaryContainer, 
        semanticOne: appSemanticOneColorSchemesList[themeSelectedMode].primary, 
        onSemanticOne: appSemanticOneColorSchemesList[themeSelectedMode].onPrimary, 
        semanticContainerOne: appSemanticOneColorSchemesList[themeSelectedMode].primaryContainer, 
        onSemanticContainerOne: appSemanticOneColorSchemesList[themeSelectedMode].onPrimaryContainer,
        )],
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
              appColorSchemesList.length,
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
                        child: Text(appThemeText[index]),
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
