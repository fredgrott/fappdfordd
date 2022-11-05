// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:md3demo_flexcolor/presentation/themes/app_text_themes.dart';

final FlexSubThemesData appLightFlexSubThemesData = FlexSubThemesData(
  interactionEffects: true, // Set hover, focus, splash, etc to match buttons.
  blendOnLevel:
      10, // Set to low value to keep some high level of contrat, FCS default is 0.
  blendOnColors: true, // FCS default is true so that onColors are blended.
  useFlutterDefaults: false, // FCS default is false.
  blendTextTheme:
      true, // FCS default is true to blend some primary color into text.
  useTextTheme: true, // FCS now defaults to true to use MD3 typography.
  defaultRadius: null, // Set to null to Force FCS to set MD3 defaults.
  buttonMinSize: null, // Set to null to force FCS to set to MD3 defaults.
  buttonPadding: null, // Set to null to force FCS to grab default per scaling.
  thickBorderWidth: null, // Wil grab the MD3 default.
  thinBorderWidth: null, // Will grab the MD3 default.
  textButtonRadius: null, // Will grab the MD3 default of 20.
  elevatedButtonRadius: null, // Will grab the MD3 default of 20.
  elevatedButtonElevation: null,
  outlinedButtonRadius: null, // Will grab the MD3 default of 20.
  toggleButtonsRadius:
      null, // Will grab the  default of 20 as toggle buttons is not in the MD3 spec.
  textButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  elevatedButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  elevatedButtonSecondarySchemeColor:
      null, // Defaults to FCS default of SchemeColor.surface.
  outlinedButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  outlinedButtonOutlineSchemeColor:
      null, // Defaults to FCS default of SchemeColor.outline.
  toggleButtonsSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  switchSchemeColor: SchemeColor.primary, // Best guess.
  checkboxSchemeColor: SchemeColor.primary, // Best guess.
  radioSchemeColor: SchemeColor.primary, // Bet guess.
  unselectedToggleIsColored: true, // Gives unelected a slight primary color.
  inputDecoratorRadius: null, // Set to null so that FCS grabs the MD3 default.
  inputDecoratorSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  inputDecoratorIsFilled: true,
  inputDecoratorFillColor:
      null, // Set to null to force FCS to grab color and apply alpha.
  inputDecoratorBorderType: FlexInputBorderType.outline,
  inputDecoratorUnfocusedHasBorder: true, // FCS default is true.
  inputDecoratorUnfocusedBorderIsColored: true, // FCS default is true.
  fabRadius: 16,
  fabUseShape: false, // FCS default of false.
  fabSchemeColor:
      null, // Will default to SchemeColor.primaryContainer when useMaterial3 is set to true.
  chipRadius: null, // Defaults to 8 when useMaterial3 is true.
  chipSchemeColor: SchemeColor
      .primary, // Have to set this so that FCS sets alpah and opacity.
  cardRadius: null, // Defaults to MD3 spec when useMaterial3 is true.
  cardElevation: 0,
  popupMenuRadius: null, // Defaults to 10.
  popupMenuElevation: 3,
  popupMenuOpacity: 1,
  dialogRadius: null, // Defaults to 28.
  dialogElevation: 10, // FCS suggested value qs SDK sets this to high.
  dialogBackgroundSchemeColor: null, // Defaults to SchemeColor.surface.
  timePickerDialogRadius: null, // Defaults to 28.
  snackBarElevation: 4,
  snackBarBackgroundSchemeColor:
      null, // Set to null to have FCS autoset the right color per other settngs.
  appBarBackgroundSchemeColor:
      null, // Set to null to have FCS autoset the right color per other settngs.
  appBarCenterTitle:
      null, // Set to null as want it to grab the platform default instead.
  tabBarItemSchemeColor:
      null, // Set to null as FCS will grab the correct color based on other settings.
  tabBarIndicatorSchemeColor:
      null, // Set to null as FCS will grab the correct color based on other settings.
  bottomSheetRadius: null, // Not in MD3 spec, this is the FCS best guess of 16.
  bottomSheetElevation: 4,
  bottomSheetModalElevation: 8,
  bottomNavigationBarLabelTextStyle: appLightTextTheme.bodyMedium,
  bottomNavigationBarSelectedLabelSize: null, // Defaults to the fallback of 14.
  bottomNavigationBarUnselectedLabelSize:
      null, // Defaults to the fallback of 14.
  bottomNavigationBarSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary with correct alpha and opacity.
  bottomNavigationBarUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha and opacity.
  bottomNavigationBarMutedUnselectedLabel: null, // Defaults to true.
  bottomNavigationBarSelectedIconSize: null, // Defaults to 24.
  bottomNavigationBarUnselectedIconSize: 24, // Defaults to 24.
  bottomNavigationBarSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  bottomNavigationBarUnselectedIconSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha and opacity applied.
  bottomNavigationBarMutedUnselectedIcon: null, // Defaults to true.
  bottomNavigationBarBackgroundSchemeColor:
      null, // Defaults to SchemeColor.background.
  bottomNavigationBarOpacity: 1,
  bottomNavigationBarElevation: 0,
  bottomNavigationBarShowSelectedLabels: true,
  bottomNavigationBarShowUnselectedLabels: true,
  bottomNavigationBarType: BottomNavigationBarType.shifting,
  bottomNavigationBarLandscapeLayout: null,
  navigationBarLabelTextStyle: appLightTextTheme.labelMedium,
  navigationBarSelectedLabelSize: null, // Defaults to fallback of 12.
  navigationBarUnselectedLabelSize: null, // Defaults to fallback of 12.
  navigationBarSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationBarUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with alpha.
  navigationBarMutedUnselectedLabel: null, // Defaults to true.
  navigationBarSelectedIconSize: null, // Defaults to 24.
  navigationBarUnselectedIconSize: null, // Defaults to 24.
  navigationBarSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationBarUnselectedIconSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha.
  navigationBarMutedUnselectedIcon: null, // Defaults to false.
  navigationBarIndicatorSchemeColor:
      null, // Defaults to SchemeColor.primary with correct opacity.
  navigationBarIndicatorOpacity:
      1.0, // FCS package author's guess of where SDK will move towards as far as MD3 sepc.
  navigationBarBackgroundSchemeColor:
      SchemeColor.background, // The FCS opinionated setting.
  navigationBarOpacity: 1,
  navigationBarHeight: null, // Defaults to 62dp.
  navigationBarLabelBehavior:
      null, // Defaults to NavigationDestinationLabelBehavior.alwaysShow.
  navigationRailLabelTextStyle: appLightTextTheme.labelMedium,
  navigationRailSelectedLabelSize: null, // Defaults to 11dp.
  navigationRailUnselectedLabelSize: null, // Defaults to 11dp.
  navigationRailSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationRailUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with alpha.
  navigationRailMutedUnselectedLabel: null, // Defaults to true.
  navigationRailSelectedIconSize: null, // Defaults to 24.
  navigationRailUnselectedIconSize: null, // Defaults to 24.
  navigationRailSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationRailUnselectedIconSchemeColor:
      null, // Set to null so that I get the FCS color default with alpha applied.
  navigationRailMutedUnselectedIcon: true, // FCS default.
  navigationRailUseIndicator: true, // FCS default.
  navigationRailIndicatorSchemeColor: SchemeColor
      .primary, // The FCS default as the MD# spec is secondaryContainer.
  navigationRailIndicatorOpacity:
      1.0, // MD3 spec default is 1.0 which is fully opaque.
  navigationRailBackgroundSchemeColor:
      SchemeColor.background, // Kept background to match drawer.
  navigationRailOpacity: 1, // MD3 spec default is 1.0 which is fully opaque.
  navigationRailElevation: 0, // MD3 spec default is 0.
  navigationRailLabelType: NavigationRailLabelType
      .all, // FCS opinionated as MD3 spec and Flutter SDK is none.
  navigationRailGroupAlignment:
      -1.0, // If [groupAlignment] is -1.0, then the items are aligned to the top, 0.0 is center, and 1.0 is bottom.
);

final FlexSubThemesData appLightHCFlexSubThemesData =
    FlexSubThemesData(
  interactionEffects: true, // Set hover, focus, splash, etc to match buttons.
  blendOnLevel:
      10, // Set to low value to keep some high level of contrat, FCS default is 0.
  blendOnColors: true, // FCS default is true so that onColors are blended.
  useFlutterDefaults: false, // FCS default is false.
  blendTextTheme:
      true, // FCS default is true to blend some primary color into text.
  useTextTheme: true, // FCS now defaults to true to use MD3 typography.
  defaultRadius: null, // Set to null to Force FCS to set MD3 defaults.
  buttonMinSize: null, // Set to null to force FCS to set to MD3 defaults.
  buttonPadding: null, // Set to null to force FCS to grab default per scaling.
  thickBorderWidth: null, // Wil grab the MD3 default.
  thinBorderWidth: null, // Will grab the MD3 default.
  textButtonRadius: null, // Will grab the MD3 default of 20.
  elevatedButtonRadius: null, // Will grab the MD3 default of 20.
  elevatedButtonElevation: null,
  outlinedButtonRadius: null, // Will grab the MD3 default of 20.
  toggleButtonsRadius:
      null, // Will grab the  default of 20 as toggle buttons is not in the MD3 spec.
  textButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  elevatedButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  elevatedButtonSecondarySchemeColor:
      null, // Defaults to FCS default of SchemeColor.surface.
  outlinedButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  outlinedButtonOutlineSchemeColor:
      null, // Defaults to FCS default of SchemeColor.outline.
  toggleButtonsSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  switchSchemeColor: SchemeColor.primary, // Best guess.
  checkboxSchemeColor: SchemeColor.primary, // Best guess.
  radioSchemeColor: SchemeColor.primary, // Bet guess.
  unselectedToggleIsColored: true, // Gives unelected a slight primary color.
  inputDecoratorRadius: null, // Set to null so that FCS grabs the MD3 default.
  inputDecoratorSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  inputDecoratorIsFilled: true,
  inputDecoratorFillColor:
      null, // Set to null to force FCS to grab color and apply alpha.
  inputDecoratorBorderType: FlexInputBorderType.outline,
  inputDecoratorUnfocusedHasBorder: true, // FCS default is true.
  inputDecoratorUnfocusedBorderIsColored: true, // FCS default is true.
  fabRadius: 16,
  fabUseShape: false, // FCS default of false.
  fabSchemeColor:
      null, // Will default to SchemeColor.primaryContainer when useMaterial3 is set to true.
  chipRadius: null, // Defaults to 8 when useMaterial3 is true.
  chipSchemeColor: SchemeColor
      .primary, // Have to set this so that FCS sets alpah and opacity.
  cardRadius: null, // Defaults to MD3 spec when useMaterial3 is true.
  cardElevation: 0,
  popupMenuRadius: null, // Defaults to 10.
  popupMenuElevation: 3,
  popupMenuOpacity: 1,
  dialogRadius: null, // Defaults to 28.
  dialogElevation: 10, // FCS suggested value qs SDK sets this to high.
  dialogBackgroundSchemeColor: null, // Defaults to SchemeColor.surface.
  timePickerDialogRadius: null, // Defaults to 28.
  snackBarElevation: 4,
  snackBarBackgroundSchemeColor:
      null, // Set to null to have FCS autoset the right color per other settngs.
  appBarBackgroundSchemeColor:
      null, // Set to null to have FCS autoset the right color per other settngs.
  appBarCenterTitle:
      null, // Set to null as want it to grab the platform default instead.
  tabBarItemSchemeColor:
      null, // Set to null as FCS will grab the correct color based on other settings.
  tabBarIndicatorSchemeColor:
      null, // Set to null as FCS will grab the correct color based on other settings.
  bottomSheetRadius: null, // Not in MD3 spec, this is the FCS best guess of 16.
  bottomSheetElevation: 4,
  bottomSheetModalElevation: 8,
  bottomNavigationBarLabelTextStyle: appLightTextTheme.bodyMedium,
  bottomNavigationBarSelectedLabelSize: null, // Defaults to the fallback of 14.
  bottomNavigationBarUnselectedLabelSize:
      null, // Defaults to the fallback of 14.
  bottomNavigationBarSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary with correct alpha and opacity.
  bottomNavigationBarUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha and opacity.
  bottomNavigationBarMutedUnselectedLabel: null, // Defaults to true.
  bottomNavigationBarSelectedIconSize: null, // Defaults to 24.
  bottomNavigationBarUnselectedIconSize: 24, // Defaults to 24.
  bottomNavigationBarSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  bottomNavigationBarUnselectedIconSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha and opacity applied.
  bottomNavigationBarMutedUnselectedIcon: null, // Defaults to true.
  bottomNavigationBarBackgroundSchemeColor:
      null, // Defaults to SchemeColor.background.
  bottomNavigationBarOpacity: 1,
  bottomNavigationBarElevation: 0,
  bottomNavigationBarShowSelectedLabels: true,
  bottomNavigationBarShowUnselectedLabels: true,
  bottomNavigationBarType: BottomNavigationBarType.shifting,
  bottomNavigationBarLandscapeLayout: null,
  navigationBarLabelTextStyle: appLightTextTheme.labelMedium,
  navigationBarSelectedLabelSize: null, // Defaults to fallback of 12.
  navigationBarUnselectedLabelSize: null, // Defaults to fallback of 12.
  navigationBarSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationBarUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with alpha.
  navigationBarMutedUnselectedLabel: null, // Defaults to true.
  navigationBarSelectedIconSize: null, // Defaults to 24.
  navigationBarUnselectedIconSize: null, // Defaults to 24.
  navigationBarSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationBarUnselectedIconSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha.
  navigationBarMutedUnselectedIcon: null, // Defaults to false.
  navigationBarIndicatorSchemeColor:
      null, // Defaults to SchemeColor.primary with correct opacity.
  navigationBarIndicatorOpacity:
      1.0, // FCS package author's guess of where SDK will move towards as far as MD3 sepc.
  navigationBarBackgroundSchemeColor:
      SchemeColor.background, // The FCS opinionated setting.
  navigationBarOpacity: 1,
  navigationBarHeight: null, // Defaults to 62dp.
  navigationBarLabelBehavior:
      null, // Defaults to NavigationDestinationLabelBehavior.alwaysShow.
  navigationRailLabelTextStyle: appLightTextTheme.labelMedium,
  navigationRailSelectedLabelSize: null, // Defaults to 11dp.
  navigationRailUnselectedLabelSize: null, // Defaults to 11dp.
  navigationRailSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationRailUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with alpha.
  navigationRailMutedUnselectedLabel: null, // Defaults to true.
  navigationRailSelectedIconSize: null, // Defaults to 24.
  navigationRailUnselectedIconSize: null, // Defaults to 24.
  navigationRailSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationRailUnselectedIconSchemeColor:
      null, // Set to null so that I get the FCS color default with alpha applied.
  navigationRailMutedUnselectedIcon: true, // FCS default.
  navigationRailUseIndicator: true, // FCS default.
  navigationRailIndicatorSchemeColor: SchemeColor
      .primary, // The FCS default as the MD# spec is secondaryContainer.
  navigationRailIndicatorOpacity:
      1.0, // MD3 spec default is 1.0 which is fully opaque.
  navigationRailBackgroundSchemeColor:
      SchemeColor.background, // Kept background to match drawer.
  navigationRailOpacity: 1, // MD3 spec default is 1.0 which is fully opaque.
  navigationRailElevation: 0, // MD3 spec default is 0.
  navigationRailLabelType: NavigationRailLabelType
      .all, // FCS opinionated as MD3 spec and Flutter SDK is none.
  navigationRailGroupAlignment:
      -1.0, // If [groupAlignment] is -1.0, then the items are aligned to the top, 0.0 is center, and 1.0 is bottom.
);

final FlexSubThemesData appDarkFlexSubThemesData = FlexSubThemesData(
  interactionEffects: true, // Set hover, focus, splash, etc to match buttons.
  blendOnLevel:
      10, // Set to low value to keep some high level of contrat, FCS default is 0.
  blendOnColors: true, // FCS default is true so that onColors are blended.
  useFlutterDefaults: false, // FCS default is false.
  blendTextTheme:
      true, // FCS default is true to blend some primary color into text.
  useTextTheme: true, // FCS now defaults to true to use MD3 typography.
  defaultRadius: null, // Set to null to Force FCS to set MD3 defaults.
  buttonMinSize: null, // Set to null to force FCS to set to MD3 defaults.
  buttonPadding: null, // Set to null to force FCS to grab default per scaling.
  thickBorderWidth: null, // Wil grab the MD3 default.
  thinBorderWidth: null, // Will grab the MD3 default.
  textButtonRadius: null, // Will grab the MD3 default of 20.
  elevatedButtonRadius: null, // Will grab the MD3 default of 20.
  elevatedButtonElevation: null,
  outlinedButtonRadius: null, // Will grab the MD3 default of 20.
  toggleButtonsRadius:
      null, // Will grab the  default of 20 as toggle buttons is not in the MD3 spec.
  textButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  elevatedButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  elevatedButtonSecondarySchemeColor:
      null, // Defaults to FCS default of SchemeColor.surface.
  outlinedButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  outlinedButtonOutlineSchemeColor:
      null, // Defaults to FCS default of SchemeColor.outline.
  toggleButtonsSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  switchSchemeColor: SchemeColor.primary, // Best guess.
  checkboxSchemeColor: SchemeColor.primary, // Best guess.
  radioSchemeColor: SchemeColor.primary, // Bet guess.
  unselectedToggleIsColored: true, // Gives unelected a slight primary color.
  inputDecoratorRadius: null, // Set to null so that FCS grabs the MD3 default.
  inputDecoratorSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  inputDecoratorIsFilled: true,
  inputDecoratorFillColor:
      null, // Set to null to force FCS to grab color and apply alpha.
  inputDecoratorBorderType: FlexInputBorderType.outline,
  inputDecoratorUnfocusedHasBorder: true, // FCS default is true.
  inputDecoratorUnfocusedBorderIsColored: true, // FCS default is true.
  fabRadius: 16,
  fabUseShape: false, // FCS default of false.
  fabSchemeColor:
      null, // Will default to SchemeColor.primaryContainer when useMaterial3 is set to true.
  chipRadius: null, // Defaults to 8 when useMaterial3 is true.
  chipSchemeColor: SchemeColor
      .primary, // Have to set this so that FCS sets alpah and opacity.
  cardRadius: null, // Defaults to MD3 spec when useMaterial3 is true.
  cardElevation: 0,
  popupMenuRadius: null, // Defaults to 10.
  popupMenuElevation: 3,
  popupMenuOpacity: 1,
  dialogRadius: null, // Defaults to 28.
  dialogElevation: 10, // FCS suggested value qs SDK sets this to high.
  dialogBackgroundSchemeColor: null, // Defaults to SchemeColor.surface.
  timePickerDialogRadius: null, // Defaults to 28.
  snackBarElevation: 4,
  snackBarBackgroundSchemeColor:
      null, // Set to null to have FCS autoset the right color per other settngs.
  appBarBackgroundSchemeColor:
      null, // Set to null to have FCS autoset the right color per other settngs.
  appBarCenterTitle:
      null, // Set to null as want it to grab the platform default instead.
  tabBarItemSchemeColor:
      null, // Set to null as FCS will grab the correct color based on other settings.
  tabBarIndicatorSchemeColor:
      null, // Set to null as FCS will grab the correct color based on other settings.
  bottomSheetRadius: null, // Not in MD3 spec, this is the FCS best guess of 16.
  bottomSheetElevation: 4,
  bottomSheetModalElevation: 8,
  bottomNavigationBarLabelTextStyle: appDarkTextTheme.bodyMedium,
  bottomNavigationBarSelectedLabelSize: null, // Defaults to the fallback of 14.
  bottomNavigationBarUnselectedLabelSize:
      null, // Defaults to the fallback of 14.
  bottomNavigationBarSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary with correct alpha and opacity.
  bottomNavigationBarUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha and opacity.
  bottomNavigationBarMutedUnselectedLabel: null, // Defaults to true.
  bottomNavigationBarSelectedIconSize: null, // Defaults to 24.
  bottomNavigationBarUnselectedIconSize: 24, // Defaults to 24.
  bottomNavigationBarSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  bottomNavigationBarUnselectedIconSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha and opacity applied.
  bottomNavigationBarMutedUnselectedIcon: null, // Defaults to true.
  bottomNavigationBarBackgroundSchemeColor:
      null, // Defaults to SchemeColor.background.
  bottomNavigationBarOpacity: 1,
  bottomNavigationBarElevation: 0,
  bottomNavigationBarShowSelectedLabels: true,
  bottomNavigationBarShowUnselectedLabels: true,
  bottomNavigationBarType: BottomNavigationBarType.shifting,
  bottomNavigationBarLandscapeLayout: null,
  navigationBarLabelTextStyle: appDarkTextTheme.labelMedium,
  navigationBarSelectedLabelSize: null, // Defaults to fallback of 12.
  navigationBarUnselectedLabelSize: null, // Defaults to fallback of 12.
  navigationBarSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationBarUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with alpha.
  navigationBarMutedUnselectedLabel: null, // Defaults to true.
  navigationBarSelectedIconSize: null, // Defaults to 24.
  navigationBarUnselectedIconSize: null, // Defaults to 24.
  navigationBarSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationBarUnselectedIconSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha.
  navigationBarMutedUnselectedIcon: null, // Defaults to false.
  navigationBarIndicatorSchemeColor:
      null, // Defaults to SchemeColor.primary with correct opacity.
  navigationBarIndicatorOpacity:
      1.0, // FCS package author's guess of where SDK will move towards as far as MD3 sepc.
  navigationBarBackgroundSchemeColor:
      SchemeColor.background, // The FCS opinionated setting.
  navigationBarOpacity: 1,
  navigationBarHeight: null, // Defaults to 62dp.
  navigationBarLabelBehavior:
      null, // Defaults to NavigationDestinationLabelBehavior.alwaysShow.
  navigationRailLabelTextStyle: appDarkTextTheme.labelMedium,
  navigationRailSelectedLabelSize: null, // Defaults to 11dp.
  navigationRailUnselectedLabelSize: null, // Defaults to 11dp.
  navigationRailSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationRailUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with alpha.
  navigationRailMutedUnselectedLabel: null, // Defaults to true.
  navigationRailSelectedIconSize: null, // Defaults to 24.
  navigationRailUnselectedIconSize: null, // Defaults to 24.
  navigationRailSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationRailUnselectedIconSchemeColor:
      null, // Set to null so that I get the FCS color default with alpha applied.
  navigationRailMutedUnselectedIcon: true, // FCS default.
  navigationRailUseIndicator: true, // FCS default.
  navigationRailIndicatorSchemeColor: SchemeColor
      .primary, // The FCS default as the MD# spec is secondaryContainer.
  navigationRailIndicatorOpacity:
      1.0, // MD3 spec default is 1.0 which is fully opaque.
  navigationRailBackgroundSchemeColor:
      SchemeColor.background, // Kept background to match drawer.
  navigationRailOpacity: 1, // MD3 spec default is 1.0 which is fully opaque.
  navigationRailElevation: 0, // MD3 spec default is 0.
  navigationRailLabelType: NavigationRailLabelType
      .all, // FCS opinionated as MD3 spec and Flutter SDK is none.
  navigationRailGroupAlignment:
      -1.0, // If [groupAlignment] is -1.0, then the items are aligned to the top, 0.0 is center, and 1.0 is bottom.
);

final FlexSubThemesData appDarkHCFlexSubThemesData = FlexSubThemesData(
  interactionEffects: true, // Set hover, focus, splash, etc to match buttons.
  blendOnLevel:
      10, // Set to low value to keep some high level of contrat, FCS default is 0.
  blendOnColors: true, // FCS default is true so that onColors are blended.
  useFlutterDefaults: false, // FCS default is false.
  blendTextTheme:
      true, // FCS default is true to blend some primary color into text.
  useTextTheme: true, // FCS now defaults to true to use MD3 typography.
  defaultRadius: null, // Set to null to Force FCS to set MD3 defaults.
  buttonMinSize: null, // Set to null to force FCS to set to MD3 defaults.
  buttonPadding: null, // Set to null to force FCS to grab default per scaling.
  thickBorderWidth: null, // Wil grab the MD3 default.
  thinBorderWidth: null, // Will grab the MD3 default.
  textButtonRadius: null, // Will grab the MD3 default of 20.
  elevatedButtonRadius: null, // Will grab the MD3 default of 20.
  elevatedButtonElevation: null,
  outlinedButtonRadius: null, // Will grab the MD3 default of 20.
  toggleButtonsRadius:
      null, // Will grab the  default of 20 as toggle buttons is not in the MD3 spec.
  textButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  elevatedButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  elevatedButtonSecondarySchemeColor:
      null, // Defaults to FCS default of SchemeColor.surface.
  outlinedButtonSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  outlinedButtonOutlineSchemeColor:
      null, // Defaults to FCS default of SchemeColor.outline.
  toggleButtonsSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  switchSchemeColor: SchemeColor.primary, // Best guess.
  checkboxSchemeColor: SchemeColor.primary, // Best guess.
  radioSchemeColor: SchemeColor.primary, // Bet guess.
  unselectedToggleIsColored: true, // Gives unelected a slight primary color.
  inputDecoratorRadius: null, // Set to null so that FCS grabs the MD3 default.
  inputDecoratorSchemeColor:
      null, // Defaults to FCS default of SchemeColor.primary.
  inputDecoratorIsFilled: true,
  inputDecoratorFillColor:
      null, // Set to null to force FCS to grab color and apply alpha.
  inputDecoratorBorderType: FlexInputBorderType.outline,
  inputDecoratorUnfocusedHasBorder: true, // FCS default is true.
  inputDecoratorUnfocusedBorderIsColored: true, // FCS default is true.
  fabRadius: 16,
  fabUseShape: false, // FCS default of false.
  fabSchemeColor:
      null, // Will default to SchemeColor.primaryContainer when useMaterial3 is set to true.
  chipRadius: null, // Defaults to 8 when useMaterial3 is true.
  chipSchemeColor: SchemeColor
      .primary, // Have to set this so that FCS sets alpah and opacity.
  cardRadius: null, // Defaults to MD3 spec when useMaterial3 is true.
  cardElevation: 0,
  popupMenuRadius: null, // Defaults to 10.
  popupMenuElevation: 3,
  popupMenuOpacity: 1,
  dialogRadius: null, // Defaults to 28.
  dialogElevation: 10, // FCS suggested value qs SDK sets this to high.
  dialogBackgroundSchemeColor: null, // Defaults to SchemeColor.surface.
  timePickerDialogRadius: null, // Defaults to 28.
  snackBarElevation: 4,
  snackBarBackgroundSchemeColor:
      null, // Set to null to have FCS autoset the right color per other settngs.
  appBarBackgroundSchemeColor:
      null, // Set to null to have FCS autoset the right color per other settngs.
  appBarCenterTitle:
      null, // Set to null as want it to grab the platform default instead.
  tabBarItemSchemeColor:
      null, // Set to null as FCS will grab the correct color based on other settings.
  tabBarIndicatorSchemeColor:
      null, // Set to null as FCS will grab the correct color based on other settings.
  bottomSheetRadius: null, // Not in MD3 spec, this is the FCS best guess of 16.
  bottomSheetElevation: 4,
  bottomSheetModalElevation: 8,
  bottomNavigationBarLabelTextStyle: appDarkTextTheme.bodyMedium,
  bottomNavigationBarSelectedLabelSize: null, // Defaults to the fallback of 14.
  bottomNavigationBarUnselectedLabelSize:
      null, // Defaults to the fallback of 14.
  bottomNavigationBarSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary with correct alpha and opacity.
  bottomNavigationBarUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha and opacity.
  bottomNavigationBarMutedUnselectedLabel: null, // Defaults to true.
  bottomNavigationBarSelectedIconSize: null, // Defaults to 24.
  bottomNavigationBarUnselectedIconSize: 24, // Defaults to 24.
  bottomNavigationBarSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  bottomNavigationBarUnselectedIconSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha and opacity applied.
  bottomNavigationBarMutedUnselectedIcon: null, // Defaults to true.
  bottomNavigationBarBackgroundSchemeColor:
      null, // Defaults to SchemeColor.background.
  bottomNavigationBarOpacity: 1,
  bottomNavigationBarElevation: 0,
  bottomNavigationBarShowSelectedLabels: true,
  bottomNavigationBarShowUnselectedLabels: true,
  bottomNavigationBarType: BottomNavigationBarType.shifting,
  bottomNavigationBarLandscapeLayout: null,
  navigationBarLabelTextStyle: appDarkTextTheme.labelMedium,
  navigationBarSelectedLabelSize: null, // Defaults to fallback of 12.
  navigationBarUnselectedLabelSize: null, // Defaults to fallback of 12.
  navigationBarSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationBarUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with alpha.
  navigationBarMutedUnselectedLabel: null, // Defaults to true.
  navigationBarSelectedIconSize: null, // Defaults to 24.
  navigationBarUnselectedIconSize: null, // Defaults to 24.
  navigationBarSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationBarUnselectedIconSchemeColor:
      null, // Defaults to SchemeColor.onSurface with correct alpha.
  navigationBarMutedUnselectedIcon: null, // Defaults to false.
  navigationBarIndicatorSchemeColor:
      null, // Defaults to SchemeColor.primary with correct opacity.
  navigationBarIndicatorOpacity:
      1.0, // FCS package author's guess of where SDK will move towards as far as MD3 sepc.
  navigationBarBackgroundSchemeColor:
      SchemeColor.background, // The FCS opinionated setting.
  navigationBarOpacity: 1,
  navigationBarHeight: null, // Defaults to 62dp.
  navigationBarLabelBehavior:
      null, // Defaults to NavigationDestinationLabelBehavior.alwaysShow.
  navigationRailLabelTextStyle: appDarkTextTheme.labelMedium,
  navigationRailSelectedLabelSize: null, // Defaults to 11dp.
  navigationRailUnselectedLabelSize: null, // Defaults to 11dp.
  navigationRailSelectedLabelSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationRailUnselectedLabelSchemeColor:
      null, // Defaults to SchemeColor.onSurface with alpha.
  navigationRailMutedUnselectedLabel: null, // Defaults to true.
  navigationRailSelectedIconSize: null, // Defaults to 24.
  navigationRailUnselectedIconSize: null, // Defaults to 24.
  navigationRailSelectedIconSchemeColor:
      null, // Defaults to SchemeColor.primary.
  navigationRailUnselectedIconSchemeColor:
      null, // Set to null so that I get the FCS color default with alpha applied.
  navigationRailMutedUnselectedIcon: true, // FCS default.
  navigationRailUseIndicator: true, // FCS default.
  navigationRailIndicatorSchemeColor: SchemeColor
      .primary, // The FCS default as the MD# spec is secondaryContainer.
  navigationRailIndicatorOpacity:
      1.0, // MD3 spec default is 1.0 which is fully opaque.
  navigationRailBackgroundSchemeColor:
      SchemeColor.background, // Kept background to match drawer.
  navigationRailOpacity: 1, // MD3 spec default is 1.0 which is fully opaque.
  navigationRailElevation: 0, // MD3 spec default is 0.
  navigationRailLabelType: NavigationRailLabelType
      .all, // FCS opinionated as MD3 spec and Flutter SDK is none.
  navigationRailGroupAlignment:
      -1.0, // If [groupAlignment] is -1.0, then the items are aligned to the top, 0.0 is center, and 1.0 is bottom.
);
